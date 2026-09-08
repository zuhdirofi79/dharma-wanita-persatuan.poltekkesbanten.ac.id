<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (! Schema::hasTable('dwp_catalog_categories')) {
            Schema::create('dwp_catalog_categories', function (Blueprint $table) {
                $table->id();
                $table->string('name');
                $table->string('slug')->unique();
                $table->text('description')->nullable();
                $table->unsignedInteger('sort_order')->default(0);
                $table->boolean('is_active')->default(true);
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('dwp_catalog_products')) {
            Schema::create('dwp_catalog_products', function (Blueprint $table) {
                $table->id();
                $table->foreignId('dwp_catalog_category_id')
                    ->nullable()
                    ->constrained('dwp_catalog_categories')
                    ->nullOnDelete();
                $table->string('name');
                $table->string('slug')->unique();
                $table->text('description')->nullable();
                $table->decimal('price', 15, 2)->nullable();
                $table->string('price_text')->nullable();
                $table->string('unit')->nullable();
                $table->string('image_path')->nullable();
                $table->string('contact_name')->nullable();
                $table->string('contact_phone')->nullable();
                $table->unsignedInteger('sort_order')->default(0);
                $table->boolean('is_featured')->default(false);
                $table->boolean('is_active')->default(true);
                $table->timestamps();
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('dwp_catalog_products');
        Schema::dropIfExists('dwp_catalog_categories');
    }
};
