<?php

use App\Services\GraduationTogaOrderService;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (! Schema::hasTable('graduation_toga_order_nim_locks')) {
            Schema::create('graduation_toga_order_nim_locks', function (Blueprint $table) {
                $table->id();
                $table->string('nim_normalized', 100)->unique();
                $table->unsignedBigInteger('first_order_id')->nullable();
                $table->timestamps();

                $table->index('first_order_id');
            });
        }

        app(GraduationTogaOrderService::class)->backfillNimLocks();
    }

    public function down(): void
    {
        Schema::dropIfExists('graduation_toga_order_nim_locks');
    }
};
