<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (Schema::hasTable('student_roster')) {
            return;
        }

        Schema::create('student_roster', function (Blueprint $table) {
            $table->id();
            $table->string('nim_normalized', 100)->unique();
            $table->string('full_name')->nullable();
            $table->string('source', 50)->default('import');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('student_roster');
    }
};
