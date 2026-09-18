<?php

namespace Tests\Feature;

use App\Models\GraduationTogaOrder;
use App\Models\GraduationTogaOrderNimLock;
use App\Models\StudyProgram;
use App\Models\User;
use App\Services\GraduationTogaOrderService;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Routing\Middleware\ThrottleRequests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class GraduationTogaOrderTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->withoutMiddleware(ThrottleRequests::class);
    }

    public function test_new_nim_creates_order_and_nim_lock(): void
    {
        $program = $this->studyProgram();
        $student = $this->student('TEST2026001');

        $response = $this->actingAs($student)->from(route('wisuda.order.create'))->post(route('wisuda.order.store'), $this->validPayload(
            $program->id,
            'TEST2026001',
        ));

        $order = GraduationTogaOrder::query()->first();

        $this->assertNotNull($order);
        $response->assertRedirect(route('wisuda.order.show', [
            'orderCode' => $order->order_code,
        ]));
        $this->assertSame(1, GraduationTogaOrder::query()->count());
        $this->assertDatabaseHas('graduation_toga_order_nim_locks', [
            'nim_normalized' => 'TEST2026001',
            'first_order_id' => $order->id,
        ]);
        $this->assertSame('TEST2026001', $order->nim);
        $this->assertSame('Budi Santoso', $order->transfer_sender_name);
    }

    public function test_duplicate_exact_nim_is_rejected(): void
    {
        $program = $this->studyProgram();
        $student = $this->student('TEST2026001');
        $payload = $this->validPayload($program->id, 'TEST2026001');

        $this->actingAs($student)->post(route('wisuda.order.store'), $payload)->assertRedirect();
        $this->assertSame(1, GraduationTogaOrder::query()->count());

        $response = $this->actingAs($student)->from(route('wisuda.order.create'))
            ->post(route('wisuda.order.store'), $payload);

        $response->assertRedirect();
        $this->assertSame(1, GraduationTogaOrder::query()->count());
        $this->assertSame(1, GraduationTogaOrderNimLock::query()->count());
    }

    public function test_normalized_duplicate_nim_is_rejected(): void
    {
        $program = $this->studyProgram();
        $student = $this->student('TEST2026001');
        $this->actingAs($student)->post(route('wisuda.order.store'), $this->validPayload($program->id, 'TEST2026001'))->assertRedirect();

        $response = $this->actingAs($student)->from(route('wisuda.order.create'))->post(route('wisuda.order.store'), $this->validPayload(
            $program->id,
            'TEST-2026-001',
            [
                'email' => 'variant@example.test',
            ],
        ));

        $response->assertRedirect();
        $this->assertSame(1, GraduationTogaOrder::query()->count());
    }

    public function test_legacy_duplicate_orders_are_kept_and_third_order_is_blocked(): void
    {
        $program = $this->studyProgram();
        $this->legacyOrder($program, 'P12345', 'WSD-LEGACY-A');
        $this->legacyOrder($program, 'P12345', 'WSD-LEGACY-B');

        $this->assertSame(2, GraduationTogaOrder::query()->where('nim', 'P12345')->count());
        $this->assertSame(0, GraduationTogaOrderNimLock::query()->count());

        $inserted = app(GraduationTogaOrderService::class)->backfillNimLocks();

        $this->assertSame(1, $inserted);
        $this->assertSame(2, GraduationTogaOrder::query()->where('nim', 'P12345')->count());
        $this->assertSame(1, GraduationTogaOrderNimLock::query()->where('nim_normalized', 'P12345')->count());

        $student = $this->student('P12345');
        $response = $this->actingAs($student)->from(route('wisuda.order.create'))->post(route('wisuda.order.store'), $this->validPayload(
            $program->id,
            'P12345',
            ['email' => 'third@example.test'],
        ));

        $response->assertRedirect();
        $this->assertSame(2, GraduationTogaOrder::query()->count());
    }

    public function test_transfer_sender_name_is_required_and_does_not_create_orphan_lock(): void
    {
        $program = $this->studyProgram();
        $payload = $this->validPayload($program->id, 'TEST2026003');
        unset($payload['transfer_sender_name']);

        $student = $this->student('TEST2026003');
        $response = $this->actingAs($student)->from(route('wisuda.order.create'))->post(route('wisuda.order.store'), $payload);

        $response->assertRedirect(route('wisuda.order.create'));
        $response->assertSessionHasErrors('transfer_sender_name');
        $this->assertSame(0, GraduationTogaOrder::query()->count());
        $this->assertSame(0, GraduationTogaOrderNimLock::query()->count());
    }

    public function test_valid_transfer_sender_name_is_stored(): void
    {
        $program = $this->studyProgram();

        $student = $this->student('TEST2026002', 'Mahasiswa Test');

        $this->actingAs($student)->post(route('wisuda.order.store'), $this->validPayload(
            $program->id,
            'TEST2026002',
            [
                'student_name' => 'Nama Palsu',
                'transfer_sender_name' => 'Budi Santoso',
            ],
        ))->assertRedirect();

        $this->assertDatabaseHas('graduation_toga_orders', [
            'nim' => 'TEST2026002',
            'student_name' => 'Mahasiswa Test',
            'transfer_sender_name' => 'Budi Santoso',
        ]);
    }

    public function test_admin_orders_index_renders_null_transfer_sender_as_dash(): void
    {
        $admin = $this->admin();
        $program = $this->studyProgram();
        $this->legacyOrder($program, 'P27900000001', 'WSD-NULL-SENDER');

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.index'));

        $response->assertOk();
        $response->assertSee('Nama Pengirim Transfer', false);
        $response->assertSee('WSD-NULL-SENDER', false);
        $response->assertSee('>', false);
        $this->assertTrue(str_contains($response->getContent(), '<td>-</td>'));
    }

    public function test_export_csv_includes_transfer_sender_column_aligned_with_header(): void
    {
        $admin = $this->admin();
        $program = $this->studyProgram();
        $this->legacyOrder($program, 'P27900000002', 'WSD-CSV-SENDER', 'Siti Aminah');

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.export'));

        $response->assertOk();
        $csv = $response->streamedContent();
        $lines = preg_split("/\r\n|\n|\r/", trim($csv)) ?: [];
        $this->assertNotEmpty($lines);

        $headers = str_getcsv($lines[0]);
        $values = str_getcsv($lines[1]);
        $senderIndex = array_search('Nama Pengirim Transfer', $headers, true);

        $this->assertNotFalse($senderIndex);
        $this->assertSame('Siti Aminah', $values[$senderIndex]);
        $this->assertSame(count($headers), count($values));
    }

    public function test_print_rekap_shows_transfer_sender_and_dash_for_null(): void
    {
        $admin = $this->admin();
        $program = $this->studyProgram();
        $this->legacyOrder($program, 'P27900000003', 'WSD-PRINT-NULL');

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.print'));

        $response->assertOk();
        $response->assertSee('Nama Pengirim Transfer', false);
        $response->assertSee('WSD-PRINT-NULL', false);
        $response->assertSee('>', false);
        $this->assertTrue(str_contains($response->getContent(), '<td>-</td>'));
    }

    public function test_wisuda_page_shows_contact_hours(): void
    {
        $response = $this->get(route('wisuda.index'));

        $response->assertOk();
        $response->assertSee('Senin–Jumat', false);
        $response->assertSee('09.00–16.00 WIB', false);
        $response->assertSee(
            'Jam layanan narahubung: Senin–Jumat, pukul 09.00–16.00 WIB. Mohon tidak menghubungi di luar jam layanan.',
            false,
        );
        $response->assertSee('Login Mahasiswa', false);
        $response->assertDontSee('NIK', false);
        $response->assertDontSee('captcha', false);
        $response->assertSee('Rp. 200.000', false);
        $response->assertSee('008401004160565', false);
    }

    public function test_admin_order_show_renders_null_transfer_sender_near_payment_proof(): void
    {
        $admin = $this->admin();
        $program = $this->studyProgram();
        $order = $this->legacyOrder($program, 'P27900000004', 'WSD-SHOW-NULL');

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.show', $order));

        $response->assertOk();
        $response->assertSee('Nama Orang Tua/Pengirim Transfer', false);
        $response->assertSee('Verifikasi Pembayaran', false);
        $response->assertSee('Bukti Pembayaran', false);
        $this->assertTrue(substr_count($response->getContent(), 'Nama Orang Tua/Pengirim Transfer') >= 2);
    }

    public function test_orders_nim_column_is_not_unique(): void
    {
        foreach (Schema::getIndexes('graduation_toga_orders') as $index) {
            if (! ($index['unique'] ?? false)) {
                continue;
            }

            $this->assertNotSame(
                ['nim'],
                $index['columns'] ?? [],
                'graduation_toga_orders.nim must remain non-unique to preserve legacy duplicates.'
            );
        }
    }

    public function test_nim_lock_unique_constraint_blocks_second_insert(): void
    {
        $now = now();
        $payload = [
            'nim_normalized' => 'LOCKTEST001',
            'first_order_id' => null,
            'created_at' => $now,
            'updated_at' => $now,
        ];

        $this->assertSame(1, (int) DB::table('graduation_toga_order_nim_locks')->insertOrIgnore($payload));
        $this->assertSame(0, (int) DB::table('graduation_toga_order_nim_locks')->insertOrIgnore($payload));
        $this->assertSame(1, GraduationTogaOrderNimLock::query()->where('nim_normalized', 'LOCKTEST001')->count());
    }

    public function test_service_level_duplicate_does_not_leave_orphan_lock_when_order_create_fails(): void
    {
        $this->expectException(ModelNotFoundException::class);

        try {
            app(GraduationTogaOrderService::class)->createOrder($this->validPayload(999999, 'TESTFAIL001'));
        } finally {
            $this->assertSame(0, GraduationTogaOrder::query()->count());
            $this->assertSame(0, GraduationTogaOrderNimLock::query()->count());
        }
    }

    private function studyProgram(): StudyProgram
    {
        return StudyProgram::query()->create([
            'name' => 'D3 Keperawatan',
            'is_active' => true,
        ]);
    }

    private function student(string $nim, string $name = 'Mahasiswa Test'): User
    {
        return User::factory()->create([
            'name' => $name,
            'email' => strtolower($nim).'@mahasiswa.dwp.invalid',
            'nim' => $nim,
            'role' => 'mahasiswa',
            'is_active' => true,
            'must_change_password' => false,
        ]);
    }

    private function admin(): User
    {
        return User::factory()->create([
            'role' => 'admin',
            'is_active' => true,
            'must_change_password' => false,
        ]);
    }

    /**
     * @param  array<string, mixed>  $overrides
     * @return array<string, mixed>
     */
    private function validPayload(int $studyProgramId, string $nim, array $overrides = []): array
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

    private function legacyOrder(
        StudyProgram $program,
        string $nim,
        string $code,
        ?string $transferSenderName = null,
    ): GraduationTogaOrder {
        $order = new GraduationTogaOrder;
        $order->forceFill([
            'order_code' => $code,
            'student_name' => 'Mahasiswa Lama',
            'nim' => $nim,
            'study_program_id' => $program->id,
            'study_program_name' => $program->name,
            'graduation_year' => 2026,
            'email' => strtolower($code).'@example.test',
            'phone' => '081200000000',
            'gender' => 'Perempuan',
            'toga_size' => 'All Size',
            'quantity' => 1,
            'transfer_sender_name' => $transferSenderName,
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
            'public_token' => $code.'-token',
        ]);
        $order->save();

        return $order->fresh();
    }
}
