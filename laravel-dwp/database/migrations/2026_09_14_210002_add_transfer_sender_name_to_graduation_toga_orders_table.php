<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (! Schema::hasTable('graduation_toga_orders')) {
            return;
        }

        if (Schema::hasColumn('graduation_toga_orders', 'transfer_sender_name')) {
            return;
        }

        Schema::table('graduation_toga_orders', function (Blueprint $table) {
            $table->string('transfer_sender_name', 150)->nullable()->after('phone');
        });
    }

    public function down(): void
    {
        if (! Schema::hasTable('graduation_toga_orders')) {
            return;
        }

        if (! Schema::hasColumn('graduation_toga_orders', 'transfer_sender_name')) {
            return;
        }

        Schema::table('graduation_toga_orders', function (Blueprint $table) {
            $table->dropColumn('transfer_sender_name');
        });
    }
};
