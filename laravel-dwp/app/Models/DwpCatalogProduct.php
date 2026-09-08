<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class DwpCatalogProduct extends Model
{
    public const TOGA_DEFAULT_PRICE = 200000;

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

            if (self::priceTextLooksLikePayment($product->price_text)) {
                $product->price_text = null;
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

    public static function formatRupiah(float|int|string|null $amount): string
    {
        return 'Rp. '.number_format((float) $amount, 0, ',', '.');
    }

    public static function priceTextLooksLikePayment(?string $text): bool
    {
        $haystack = Str::lower(trim((string) $text));

        if ($haystack === '') {
            return false;
        }

        foreach (['bank', 'bri', 'britama', 'rekening', 'nomor rekening', 'dwp poltekes banten'] as $needle) {
            if (str_contains($haystack, $needle)) {
                return true;
            }
        }

        return false;
    }

    public static function normalizePriceInput(mixed $value): ?float
    {
        if ($value === null) {
            return null;
        }

        $raw = trim((string) $value);

        if ($raw === '') {
            return null;
        }

        if (is_numeric($raw)) {
            return round((float) $raw, 2);
        }

        $digits = preg_replace('/[^\d]/', '', $raw);

        return $digits === '' ? null : (float) $digits;
    }

    public function numericPrice(): ?float
    {
        if ($this->price === null || (float) $this->price <= 0) {
            return null;
        }

        return (float) $this->price;
    }

    public function unitPrice(): float
    {
        $price = $this->numericPrice();

        if ($price !== null) {
            return $price;
        }

        return $this->isTogaProduct() ? (float) self::TOGA_DEFAULT_PRICE : 0.0;
    }

    public function displayPrice(): string
    {
        $price = $this->numericPrice();

        if ($price !== null) {
            $label = self::formatRupiah($price);

            if (! $this->isTogaProduct() && filled($this->unit) && $this->unit !== '-') {
                $label .= ' / '.$this->unit;
            }

            return $label;
        }

        $text = trim((string) $this->price_text);

        if ($text !== '' && ! self::priceTextLooksLikePayment($text)) {
            return $text;
        }

        if ($this->isTogaProduct()) {
            return self::formatRupiah(self::TOGA_DEFAULT_PRICE);
        }

        return 'Hubungi Tim Sekretariat';
    }

    public function estimatedTotal(int $quantity = 1): string
    {
        $qty = max(1, $quantity);

        return self::formatRupiah($this->unitPrice() * $qty);
    }

    public static function canonicalToga(): self
    {
        if (! Schema::hasTable((new static)->getTable())) {
            return static::togaFallback();
        }

        $product = static::query()
            ->with('category')
            ->whereIn('slug', [
                'paket-baju-toga-wisuda-poltekkes-kemenkes-banten',
                'baju-toga-wisuda-mahasiswa-mahasiswi',
            ])
            ->orderByRaw("CASE WHEN slug = 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten' THEN 0 ELSE 1 END")
            ->first();

        return $product ?: static::togaFallback();
    }

    public static function normalizeStoredTogaPrices(): int
    {
        $updated = 0;

        static::query()->get()->each(function (self $product) use (&$updated) {
            $dirty = false;

            if (self::priceTextLooksLikePayment($product->price_text)) {
                $product->price_text = null;
                $dirty = true;
            }

            if ($product->isTogaProduct() && $product->numericPrice() === null) {
                $product->price = self::TOGA_DEFAULT_PRICE;
                $dirty = true;
            }

            if ($dirty) {
                $product->save();
                $updated++;
            }
        });

        return $updated;
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
            'description' => 'Paket baju toga wisuda resmi untuk mahasiswa Poltekkes Kemenkes Banten Tahun 2026/2027.',
            'price' => self::TOGA_DEFAULT_PRICE,
            'price_text' => null,
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
