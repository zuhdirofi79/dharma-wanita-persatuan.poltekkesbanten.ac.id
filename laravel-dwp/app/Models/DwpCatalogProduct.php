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
            return 'Hubungi Tim Sekretariat';
        }

        $formatted = number_format((float) $this->price, 0, ',', '.');
        $unit = filled($this->unit) && $this->unit !== '-'
            ? ' / '.$this->unit
            : '';

        return 'Rp '.$formatted.$unit;
    }

    public function shortDescription(int $limit = 90): string
    {
        $text = trim(preg_replace('/\s+/', ' ', strip_tags((string) $this->description)) ?? '');

        if ($text === '') {
            return $this->isTogaProduct()
                ? 'Paket baju toga wisuda resmi untuk mahasiswa Poltekkes Kemenkes Banten Tahun 2026/2027.'
                : 'Hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten untuk pemesanan.';
        }

        return Str::limit($text, $limit);
    }

    public static function isTogaSlug(?string $slug): bool
    {
        return in_array($slug, [
            'paket-baju-toga-wisuda-poltekkes-kemenkes-banten',
            'baju-toga-wisuda-mahasiswa-mahasiswi',
        ], true);
    }

    public function isTogaProduct(): bool
    {
        return self::isTogaSlug($this->slug)
            || str_contains(Str::slug((string) $this->name), 'toga');
    }

    public function detailUrl(): string
    {
        return route('produk.show', $this->slug ?: 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten');
    }

    public function orderUrl(): string
    {
        if ($this->isTogaProduct()) {
            return route('wisuda.index');
        }

        return config('dwp.contact_wa_primary');
    }

    public function orderLabel(): string
    {
        return $this->isTogaProduct() ? 'Pesan Toga Wisuda' : 'Hubungi Sekretariat';
    }

    public function ctaUrl(): ?string
    {
        return $this->orderUrl();
    }

    public function ctaLabel(): ?string
    {
        return $this->isTogaProduct() ? 'Pesan Sekarang' : 'Hubungi Sekretariat';
    }

    public static function togaFallback(): self
    {
        $product = new self([
            'name' => 'Paket Baju Toga Wisuda Poltekkes Kemenkes Banten',
            'slug' => 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten',
            'description' => 'Paket baju toga wisuda resmi untuk mahasiswa Poltekkes Kemenkes Banten Tahun 2026/2027. Pemesanan dan informasi pembayaran dapat menghubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.',
            'price_text' => 'Hubungi Tim Sekretariat',
            'unit' => 'paket',
            'image_path' => 'src/img/wisuda/Baju-Toga-Mahasiswa.jpeg',
            'contact_name' => config('dwp.contact_name'),
            'contact_phone' => config('dwp.contact_phone_primary').' / '.config('dwp.contact_phone_secondary'),
            'sort_order' => 1,
            'is_featured' => true,
            'is_active' => true,
        ]);

        $product->setRelation('category', new DwpCatalogCategory([
            'name' => 'Wisuda',
            'slug' => 'wisuda',
        ]));

        return $product;
    }
}
