<?php

namespace Tests\Feature;

use App\Models\GraduationTogaOrder;
use App\Models\StudentRoster;
use App\Models\StudyProgram;
use App\Models\User;
use App\Services\StudentAccountProvisioner;
use App\Services\StudentRegistrationService;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Http\UploadedFile;
use Illuminate\Routing\Middleware\ThrottleRequests;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Tests\TestCase;

class StudentAuthenticationTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->withoutMiddleware(ThrottleRequests::class);
    }

    public function test_new_student_can_register_from_official_roster(): void
    {
        $this->roster('P27909999001', 'Mahasiswa Baru');

        $response = $this->post(route('student.register.submit'), $this->registerPayload(
            'P27909999001',
            'Mahasiswa Baru',
        ));

        $response->assertRedirect(route('student.login'));
        $response->assertSessionHas('success');
        $this->assertGuest();

        $user = User::query()->where('nim', 'P27909999001')->first();
        $this->assertNotNull($user);
        $this->assertSame('mahasiswa', $user->role);
        $this->assertTrue(Hash::check('password123', $user->password));
        $this->assertNotSame('password123', $user->getRawOriginal('password'));
    }

    public function test_existing_account_cannot_register_again(): void
    {
        $this->student('P27903123235', 'Sri ardina mulyani');

        $response = $this->from(route('student.register'))->post(route('student.register.submit'), $this->registerPayload(
            'P27903123235',
            'Sri ardina mulyani',
        ));

        $response->assertRedirect(route('student.register'));
        $response->assertSessionHasErrors(['nim' => StudentRegistrationService::ALREADY_REGISTERED_MESSAGE]);
        $this->assertSame(1, User::query()->where('nim', 'P27903123235')->count());
    }

    public function test_registration_rejects_unknown_nim_without_order_or_roster(): void
    {
        $response = $this->from(route('student.register'))->post(route('student.register.submit'), $this->registerPayload(
            'P27900000000',
            'Orang Tidak Dikenal',
        ));

        $response->assertSessionHasErrors(['nim' => StudentRegistrationService::NIM_NOT_ELIGIBLE_MESSAGE]);
        $this->assertSame(0, User::query()->where('role', 'mahasiswa')->count());
    }

    public function test_registration_requires_matching_name_when_order_exists(): void
    {
        $this->legacyOrder('P27903123235', 'Sri ardina mulyani');

        $response = $this->from(route('student.register'))->post(route('student.register.submit'), $this->registerPayload(
            'P27903123235',
            'Nama Tidak Cocok',
        ));

        $response->assertSessionHasErrors(['name' => StudentRegistrationService::NAME_MISMATCH_MESSAGE]);
        $this->assertSame(0, User::query()->where('nim', 'P27903123235')->count());
    }

    public function test_student_can_login_and_wrong_password_is_rejected(): void
    {
        $this->student('P27903123235', 'Sri ardina mulyani', 'secret123');

        $this->from(route('student.login'))->post(route('student.login.submit'), [
            'nim' => 'P27903123235',
            'password' => 'salah12345',
        ])->assertSessionHasErrors('nim');

        $this->assertGuest();

        $this->post(route('student.login.submit'), [
            'nim' => ' p27903123235 ',
            'password' => 'secret123',
        ])->assertRedirect();

        $this->assertAuthenticated();
        $this->assertTrue(auth()->user()->isStudent());
    }

    public function test_login_redirects_student_without_order_to_order_form(): void
    {
        $this->student('P27909999001', 'Mahasiswa Baru');

        $this->post(route('student.login.submit'), [
            'nim' => 'P27909999001',
            'password' => 'password123',
        ])->assertRedirect(route('wisuda.order.create'));
    }

    public function test_login_redirects_pending_payment_student_to_payment_page(): void
    {
        $student = $this->student('P27901123001');
        $order = $this->legacyOrder('P27901123001', $student->name, [
            'user_id' => $student->id,
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
        ]);

        $this->post(route('student.login.submit'), [
            'nim' => 'P27901123001',
            'password' => 'password123',
        ])->assertRedirect(route('wisuda.payment', ['orderCode' => $order->order_code]));
    }

    public function test_login_redirects_uploaded_student_to_payment_status_page(): void
    {
        $student = $this->student('P27901123002');
        $order = $this->legacyOrder('P27901123002', $student->name, [
            'user_id' => $student->id,
            'status' => 'payment_uploaded',
            'payment_status' => 'uploaded',
            'payment_proof_path' => 'wisuda/payment-proofs/1/bukti.jpg',
        ]);

        $this->post(route('student.login.submit'), [
            'nim' => 'P27901123002',
            'password' => 'password123',
        ])->assertRedirect(route('wisuda.payment', ['orderCode' => $order->order_code]));
    }

    public function test_verified_student_is_redirected_to_verified_page_with_existing_contacts(): void
    {
        $student = $this->student('P27903123235', 'Sri ardina mulyani');
        $this->legacyOrder('P27903123235', 'Sri ardina mulyani', [
            'user_id' => $student->id,
            'order_code' => 'WSD-20260916-E7BX',
            'status' => 'completed',
            'payment_status' => 'verified',
        ]);

        $this->post(route('student.login.submit'), [
            'nim' => 'P27903123235',
            'password' => 'password123',
        ])->assertRedirect(route('wisuda.payment.verified'));

        $page = $this->actingAs($student)->get(route('wisuda.payment.verified'));
        $page->assertOk();
        $page->assertSee('Pembayaran Toga Sudah Terverifikasi', false);
        $page->assertSee('WSD-20260916-E7BX', false);
        $page->assertSee('Dias Arliadini', false);
        $page->assertSee('Putri Ratna Dewi', false);
        $page->assertSee(config('wisuda.contact_phone_primary'), false);
        $page->assertSee(config('wisuda.contact_phone_secondary'), false);
        $page->assertDontSee('Kirim Pemesanan', false);
    }

    public function test_verified_student_cannot_create_second_order_or_reupload(): void
    {
        $student = $this->student('P27903123235', 'Sri ardina mulyani');
        $order = $this->legacyOrder('P27903123235', 'Sri ardina mulyani', [
            'user_id' => $student->id,
            'order_code' => 'WSD-20260916-E7BX',
            'status' => 'completed',
            'payment_status' => 'verified',
        ]);

        $this->actingAs($student)
            ->post(route('wisuda.order.store'), $this->orderPayload($this->studyProgram()->id, 'P27903123235'))
            ->assertRedirect(route('wisuda.payment.verified'));

        $this->assertSame(1, GraduationTogaOrder::query()->count());

        Storage::fake('local');
        $this->actingAs($student)
            ->post(route('wisuda.payment.upload', ['orderCode' => $order->order_code]), [
                'payment_proof' => UploadedFile::fake()->image('bukti.jpg'),
            ])
            ->assertForbidden();
    }

    public function test_student_cannot_view_or_upload_another_students_order(): void
    {
        $alice = $this->student('P27900000001', 'Alice');
        $bob = $this->student('P27900000002', 'Bob');
        $aliceOrder = $this->legacyOrder('P27900000001', 'Alice', [
            'user_id' => $alice->id,
            'order_code' => 'WSD-ALICE',
            'public_token' => 'alice-token',
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
        ]);

        $this->actingAs($bob)
            ->get(route('wisuda.order.show', ['orderCode' => $aliceOrder->order_code, 'token' => 'alice-token']))
            ->assertForbidden();

        Storage::fake('local');
        $this->actingAs($bob)
            ->post(route('wisuda.payment.upload', ['orderCode' => $aliceOrder->order_code]), [
                'token' => 'alice-token',
                'payment_proof' => UploadedFile::fake()->image('bukti.jpg'),
            ])
            ->assertForbidden();
    }

    public function test_session_survives_subsequent_requests_and_logout_invalidates_it(): void
    {
        $student = $this->student('P27901123999');

        $this->post(route('student.login.submit'), [
            'nim' => 'P27901123999',
            'password' => 'password123',
            'remember' => '1',
        ])->assertRedirect();

        $this->get(route('student.dashboard'))->assertOk()->assertSee($student->nim, false);
        $this->get(route('wisuda.order.create'))->assertOk();

        $this->post(route('student.logout'))->assertRedirect(route('student.login'));
        $this->assertGuest();
        $this->get(route('student.dashboard'))->assertRedirect(route('student.login'));
    }

    public function test_admin_login_still_works_and_student_cannot_open_admin(): void
    {
        $admin = User::factory()->create([
            'email' => 'admin@example.test',
            'role' => 'admin',
            'is_active' => true,
            'must_change_password' => false,
            'password' => 'adminpass123',
        ]);
        $student = $this->student('P27901123077');

        $this->post(route('admin.login.submit'), [
            'email' => $admin->email,
            'password' => 'adminpass123',
        ])->assertRedirect(route('admin.dashboard'));

        $this->actingAs($student)
            ->get(route('admin.dashboard'))
            ->assertForbidden();
    }

    public function test_authenticated_student_is_redirected_away_from_register(): void
    {
        $student = $this->student('P27901123088');

        $this->actingAs($student)
            ->get(route('student.register'))
            ->assertRedirect(route('student.dashboard'));
    }

    public function test_guest_order_store_requires_login(): void
    {
        $program = $this->studyProgram();

        $this->post(route('wisuda.order.store'), $this->orderPayload($program->id, 'P27901123090'))
            ->assertRedirect(route('student.login'));
    }

    public function test_public_token_still_allows_guest_to_open_existing_order(): void
    {
        $order = $this->legacyOrder('P27901123091', 'Tamu Lama', [
            'order_code' => 'WSD-GUEST',
            'public_token' => 'guest-token-123456789012345678901234567890123456',
        ]);

        $this->get(route('wisuda.order.show', [
            'orderCode' => $order->order_code,
            'token' => $order->public_token,
        ]))->assertOk()->assertSee('WSD-GUEST', false);
    }

    public function test_student_can_upload_payment_proof_to_own_unpaid_order(): void
    {
        Storage::fake('local');
        $student = $this->student('P27901123092');
        $order = $this->legacyOrder('P27901123092', $student->name, [
            'user_id' => $student->id,
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
        ]);

        $this->actingAs($student)
            ->post(route('wisuda.payment.upload', ['orderCode' => $order->order_code]), [
                'payment_proof' => UploadedFile::fake()->image('bukti.png'),
            ])
            ->assertRedirect(route('wisuda.payment', ['orderCode' => $order->order_code]));

        $order->refresh();
        $this->assertSame('uploaded', $order->payment_status);
        $this->assertNotNull($order->payment_proof_path);
        Storage::disk('local')->assertExists($order->payment_proof_path);
    }

    public function test_provisioning_is_idempotent_and_backfills_existing_orders(): void
    {
        $order = $this->legacyOrder('P27903123235', 'Sri ardina mulyani', [
            'order_code' => 'WSD-20260916-E7BX',
            'status' => 'completed',
            'payment_status' => 'verified',
        ]);

        $first = app(StudentAccountProvisioner::class)->provision();
        $this->assertSame(1, $first['accounts_created']);
        $this->assertSame(1, $first['orders_linked']);

        $user = User::query()->where('nim', 'P27903123235')->first();
        $this->assertNotNull($user);
        $this->assertTrue(Hash::check(config('students.provision_password'), $user->password));
        $this->assertSame($user->id, $order->fresh()->user_id);

        $second = app(StudentAccountProvisioner::class)->provision();
        $this->assertSame(0, $second['accounts_created']);
        $this->assertSame(1, $second['accounts_existing']);
        $this->assertSame(1, User::query()->where('nim', 'P27903123235')->count());
        $this->assertTrue(Hash::check(config('students.provision_password'), $user->fresh()->password));
    }

    public function test_provisioning_reports_invalid_and_duplicate_nims_without_random_choice(): void
    {
        $this->legacyOrder('---', 'Invalid');
        $program = $this->studyProgram();
        $this->legacyOrder('P12345', 'Duplikat A', ['order_code' => 'WSD-DUP-A', 'study_program_id' => $program->id]);
        $this->legacyOrder('P12345', 'Duplikat B', ['order_code' => 'WSD-DUP-B', 'study_program_id' => $program->id]);

        $stats = app(StudentAccountProvisioner::class)->provision();

        $this->assertSame(1, $stats['nim_invalid']);
        $this->assertSame(1, $stats['duplicate_nim']);
        $this->assertNotEmpty($stats['anomalies']);
        $this->assertSame(1, User::query()->where('nim', 'P12345')->count());
    }

    public function test_contacts_are_sourced_from_existing_wisuda_config(): void
    {
        $this->assertSame('Dias Arliadini', config('wisuda.contact_primary_name'));
        $this->assertSame('Putri Ratna Dewi', config('wisuda.contact_secondary_name'));
        $this->assertSame('+62 895-0839-4483', config('wisuda.contact_phone_primary'));
        $this->assertSame('+62 877-4112-1505', config('wisuda.contact_phone_secondary'));
        $this->assertSame(config('dwp.contact_phone_primary'), config('wisuda.contact_phone_primary'));
        $this->assertSame(config('dwp.contact_phone_secondary'), config('wisuda.contact_phone_secondary'));
    }

    /**
     * @param  array<string, mixed>  $overrides
     * @return array<string, mixed>
     */
    private function registerPayload(string $nim, string $name, array $overrides = []): array
    {
        return array_merge([
            'nim' => $nim,
            'name' => $name,
            'password' => 'password123',
            'password_confirmation' => 'password123',
        ], $overrides);
    }

    /**
     * @param  array<string, mixed>  $overrides
     * @return array<string, mixed>
     */
    private function orderPayload(int $studyProgramId, string $nim, array $overrides = []): array
    {
        return array_merge([
            'student_name' => 'Mahasiswa Test',
            'nim' => $nim,
            'transfer_sender_name' => 'Budi Santoso',
            'study_program_id' => $studyProgramId,
            'graduation_year' => 2026,
            'email' => strtolower($nim).'@example.test',
            'phone' => '081234567890',
            'gender' => 'Perempuan',
            'toga_size' => 'All Size',
            'quantity' => 1,
            'confirm' => '1',
        ], $overrides);
    }

    private function student(string $nim, string $name = 'Mahasiswa Test', string $password = 'password123'): User
    {
        return User::factory()->create([
            'name' => $name,
            'email' => strtolower($nim).'@mahasiswa.dwp.invalid',
            'nim' => $nim,
            'password' => $password,
            'role' => 'mahasiswa',
            'is_active' => true,
            'must_change_password' => false,
        ]);
    }

    private function roster(string $nim, ?string $name = null): StudentRoster
    {
        return StudentRoster::query()->create([
            'nim_normalized' => $nim,
            'full_name' => $name,
            'source' => 'test',
        ]);
    }

    /**
     * @param  array<string, mixed>  $overrides
     */
    private function legacyOrder(string $nim, string $name, array $overrides = []): GraduationTogaOrder
    {
        $program = isset($overrides['study_program_id'])
            ? StudyProgram::query()->find($overrides['study_program_id'])
            : $this->studyProgram();

        $order = new GraduationTogaOrder;
        $order->forceFill(array_merge([
            'order_code' => 'WSD-'.strtoupper(substr(md5($nim.$name.microtime()), 0, 8)),
            'student_name' => $name,
            'nim' => $nim,
            'study_program_id' => $program->id,
            'study_program_name' => $program->name,
            'graduation_year' => 2026,
            'email' => strtolower($nim).'@example.test',
            'phone' => '081200000000',
            'gender' => 'Perempuan',
            'toga_size' => 'All Size',
            'quantity' => 1,
            'transfer_sender_name' => 'Orang Tua',
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
            'public_token' => str_pad(substr(md5($nim.($overrides['order_code'] ?? uniqid('', true))), 0, 40), 40, 'a'),
        ], $overrides));
        $order->save();

        return $order->fresh();
    }

    private function studyProgram(): StudyProgram
    {
        return StudyProgram::query()->first() ?: StudyProgram::query()->create([
            'name' => 'D3 Keperawatan',
            'is_active' => true,
        ]);
    }
}
