<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class DwpCatalogProduct extends Model
{
    protected $fillable = [
        'dwp_catalog_category_id',
        'name',
        'slug',
        'description',
        'price',
        'price_text',
        'unit',
        'image_path',
        'contact_name',
        'contact_phone',
        'sort_order',
        'is_featured',
        'is_active',
    ];

    protected function casts(): array
    {
        return [
            'price' => 'decimal:2',
            'sort_order' => 'integer',
            'is_featured' => 'boolean',
            'is_active' => 'boolean',
        ];
    }

    protected static function booted(): void
    {
        static::saving(function (self $product) {
            if (! filled($product->slug)) {
                $product->slug = Str::slug($product->name);
            }
        });
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(DwpCatalogCategory::class, 'dwp_catalog_category_id');
    }

    public function scopeActive(Builder $query): Builder
    {
        return $query->where('is_active', true);
    }

    public function scopeOrdered(Builder $query): Builder
    {
        return $query->orderBy('sort_order')->orderBy('name');
    }

    public function imageUrl(): ?string
    {
        $path = str_replace('\\', '/', trim((string) $this->image_path));

        if ($path === '') {
            return null;
        }

        if (str_contains(strtolower($path), 'hstgr.io') || str_contains(strtolower($path), 'filemanager')) {
            return null;
        }

        if (str_starts_with($path, 'http://') || str_starts_with($path, 'https://')) {
            return $path;
        }

        $path = ltrim($path, '/');

        if (str_starts_with($path, 'src/')) {
            return asset($path);
        }

        if (str_starts_with($path, 'storage/')) {
            return asset($path);
        }

        return asset('storage/'.$path);
    }

    public function displayPrice(): string
    {
        if (filled($this->price_text)) {
            return $this->price_text;
        }

        if ($this->price === null) {
            return 'Hubungi Tim Sekretariat DWP';
        }

        $formatted = number_format((float) $this->price, 0, ',', '.');
        $unit = filled($this->unit) && $this->unit !== '-'
            ? ' / '.$this->unit
            : '';

        return $formatted.$unit;
    }

    public function isTogaProduct(): bool
    {
        return $this->slug === 'baju-toga-wisuda-mahasiswa-mahasiswi'
            || str_contains(Str::slug((string) $this->name), 'toga');
    }

    public function ctaUrl(): ?string
    {
        return $this->isTogaProduct() ? route('wisuda.index') : null;
    }

    public function ctaLabel(): ?string
    {
        return $this->ctaUrl() ? 'Lihat Detail Wisuda' : null;
    }
}
