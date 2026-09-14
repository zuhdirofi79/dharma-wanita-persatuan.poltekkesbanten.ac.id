<?php

namespace Tests\Feature;

use App\Models\GraduationTogaOrder;
use App\Models\User;
use App\Support\AppTimezone;
use Carbon\Carbon;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Schema;
use Tests\TestCase;

class WisudaOrderTimezoneTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        if (! Schema::hasTable('graduation_toga_orders')) {
            Schema::create('graduation_toga_orders', function (Blueprint $table) {
                $table->id();
                $table->string('order_code')->unique();
                $table->string('student_name');
                $table->string('nim');
                $table->string('nik')->nullable();
                $table->unsignedBigInteger('study_program_id')->nullable();
                $table->string('study_program_name')->nullable();
                $table->unsignedSmallInteger('graduation_year')->nullable();
                $table->string('email');
                $table->string('phone');
                $table->string('gender');
                $table->string('toga_size');
                $table->string('transfer_sender_name', 150)->nullable();
                $table->text('size_note')->nullable();
                $table->unsignedInteger('quantity')->default(1);
                $table->string('status')->default('pending_payment');
                $table->string('payment_status')->default('unpaid');
                $table->timestamp('payment_uploaded_at')->nullable();
                $table->timestamp('payment_verified_at')->nullable();
                $table->string('public_token')->nullable();
                $table->timestamps();
            });
        }
    }

    public function test_admin_orders_index_displays_wib_not_utc(): void
    {
        $admin = $this->admin();
        $this->createOrder('WSD-20260914-UTC1', Carbon::parse('2026-09-14 07:41:00', 'UTC'));

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.index'));

        $response->assertOk();
        $response->assertSee('14/09/2026 14:41 WIB', false);
        $response->assertDontSee('14/09/2026 07:41', false);
    }

    public function test_date_filter_uses_wib_day_boundaries_against_utc_storage(): void
    {
        $admin = $this->admin();
        $previousDay = $this->createOrder(
            'WSD-20260913-LATE',
            Carbon::parse('2026-09-13 16:59:00', 'UTC'),
        );
        $currentDay = $this->createOrder(
            'WSD-20260914-EARLY',
            Carbon::parse('2026-09-13 17:01:00', 'UTC'),
        );

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.index', [
            'date_from' => '2026-09-14',
            'date_to' => '2026-09-14',
        ]));

        $response->assertOk();
        $response->assertSee('WSD-20260914-EARLY', false);
        $response->assertDontSee('WSD-20260913-LATE', false);
        $this->assertSame('2026-09-13 16:59:00', $previousDay->created_at->timezone('UTC')->format('Y-m-d H:i:s'));
        $this->assertSame('2026-09-13 17:01:00', $currentDay->created_at->timezone('UTC')->format('Y-m-d H:i:s'));
    }

    public function test_export_csv_uses_wib_timestamps(): void
    {
        $admin = $this->admin();
        $this->createOrder('WSD-20260914-CSV1', Carbon::parse('2026-09-14 07:41:00', 'UTC'));

        $response = $this->actingAs($admin)->get(route('admin.wisuda.orders.export'));

        $response->assertOk();
        $csv = $response->streamedContent();
        $this->assertStringContainsString('2026-09-14 14:41 WIB', $csv);
        $this->assertStringNotContainsString('2026-09-14 07:41', $csv);
    }

    public function test_order_code_uses_jakarta_calendar_date(): void
    {
        Carbon::setTestNow(Carbon::parse('2026-09-13 17:30:00', 'UTC'));

        $code = GraduationTogaOrder::generateOrderCode();

        $this->assertStringStartsWith('WSD-20260914-', $code);
        $this->assertSame('2026-09-14', AppTimezone::now()->toDateString());

        Carbon::setTestNow();
    }

    private function admin(): User
    {
        return User::factory()->create([
            'role' => 'admin',
            'is_active' => true,
            'must_change_password' => false,
        ]);
    }

    private function createOrder(string $code, Carbon $createdAt): GraduationTogaOrder
    {
        $order = new GraduationTogaOrder;
        $order->forceFill([
            'order_code' => $code,
            'student_name' => 'Mahasiswa Uji',
            'nim' => 'P27900000001',
            'email' => $code.'@example.test',
            'phone' => '081234567890',
            'gender' => 'Perempuan',
            'toga_size' => 'All Size',
            'quantity' => 1,
            'status' => 'pending_payment',
            'payment_status' => 'unpaid',
            'public_token' => $code.'-token',
        ]);
        $order->created_at = $createdAt;
        $order->updated_at = $createdAt;
        $order->save();

        return $order->fresh();
    }
}
