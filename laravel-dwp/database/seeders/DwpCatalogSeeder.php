<?php

namespace Database\Seeders;

use App\Models\DwpCatalogCategory;
use App\Models\DwpCatalogProduct;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class DwpCatalogSeeder extends Seeder
{
    public function run(): void
    {
        $contactName = config('dwp.contact_name');
        $contactPhone = config('dwp.contact_phone_primary').' / '.config('dwp.contact_phone_secondary');

        $this->renameCategory('toga-mahasiswa-mahasiswi', 'wisuda');
        $this->renameCategory('pre-order-baju-dan-kain-batik-dwp', 'batik');
        $this->renameCategory('pernak-pernik-kwas', 'pernak-pernik');

        $categories = [
            ['name' => 'Wisuda', 'slug' => 'wisuda', 'description' => 'Paket baju toga wisuda mahasiswa Poltekkes Kemenkes Banten.', 'sort_order' => 1],
            ['name' => 'Batik', 'slug' => 'batik', 'description' => 'Pre order baju dan kain batik DWP.', 'sort_order' => 2],
            ['name' => 'Pernak-Pernik', 'slug' => 'pernak-pernik', 'description' => 'Pernak-pernik KWAS Dharma Wanita Persatuan.', 'sort_order' => 3],
            ['name' => 'Atribut DWP', 'slug' => 'atribut-dwp', 'description' => 'Atribut resmi Dharma Wanita Persatuan.', 'sort_order' => 4],
        ];

        $categoryMap = [];
        foreach ($categories as $data) {
            $category = DwpCatalogCategory::updateOrCreate(
                ['slug' => $data['slug']],
                [
                    'name' => $data['name'],
                    'description' => $data['description'],
                    'sort_order' => $data['sort_order'],
                    'is_active' => true,
                ]
            );
            $categoryMap[$data['slug']] = $category;
        }

        $oldToga = DwpCatalogProduct::query()
            ->where('slug', 'baju-toga-wisuda-mahasiswa-mahasiswi')
            ->first();
        if ($oldToga && ! DwpCatalogProduct::query()->where('slug', 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten')->exists()) {
            $oldToga->slug = 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten';
            $oldToga->save();
        }

        $togaImage = $this->existingPublicPath('src/img/wisuda/Baju-Toga-Mahasiswa.jpeg')
            ?: 'src/img/wisuda/Baju-Toga-Mahasiswa.jpeg';

        $toga = DwpCatalogProduct::firstOrNew([
            'slug' => 'paket-baju-toga-wisuda-poltekkes-kemenkes-banten',
        ]);

        $toga->fill([
            'dwp_catalog_category_id' => $categoryMap['wisuda']->id,
            'name' => 'Paket Baju Toga Wisuda Poltekkes Kemenkes Banten',
            'description' => 'Paket baju toga wisuda resmi untuk mahasiswa Poltekkes Kemenkes Banten Tahun 2026/2027.',
            'unit' => 'paket',
            'image_path' => $toga->image_path ?: $togaImage,
            'contact_name' => $contactName,
            'contact_phone' => $contactPhone,
            'sort_order' => 1,
            'is_featured' => true,
            'is_active' => true,
        ]);

        if ($toga->numericPrice() === null) {
            $toga->price = DwpCatalogProduct::TOGA_DEFAULT_PRICE;
        }

        if (DwpCatalogProduct::priceTextLooksLikePayment($toga->price_text)) {
            $toga->price_text = null;
        }

        $toga->save();

        DwpCatalogProduct::normalizeStoredTogaPrices();

        $samples = [
            ['category' => 'batik', 'name' => 'Baju Batik Jadi', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'pcs', 'sort_order' => 1],
            ['category' => 'batik', 'name' => 'Bahan Seragam Batik', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'meter', 'sort_order' => 2],
            ['category' => 'pernak-pernik', 'name' => 'Pernak Pernik KWAS 1', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'paket', 'sort_order' => 1],
            ['category' => 'pernak-pernik', 'name' => 'Pernak Pernik KWAS 2', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'paket', 'sort_order' => 2],
            ['category' => 'pernak-pernik', 'name' => 'Pernak Pernik KWAS 3', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'paket', 'sort_order' => 3],
            ['category' => 'atribut-dwp', 'name' => 'AD/ART', 'price' => 20000, 'unit' => 'buku', 'sort_order' => 1],
            ['category' => 'atribut-dwp', 'name' => 'Bahan Seragam Kerja/Resmi', 'price' => 60000, 'unit' => 'meter', 'sort_order' => 2],
            ['category' => 'atribut-dwp', 'name' => 'Bisban', 'price' => 12000, 'unit' => 'paket', 'sort_order' => 3],
            ['category' => 'atribut-dwp', 'name' => 'Jilbab Bergo', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 4],
            ['category' => 'atribut-dwp', 'name' => 'Kerudung Batik Standar', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 5],
            ['category' => 'atribut-dwp', 'name' => 'Kerudung Batik Jumbo', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 6],
            ['category' => 'atribut-dwp', 'name' => 'Kerudung Segiempat / Scarf', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 7],
            ['category' => 'atribut-dwp', 'name' => 'Lencana', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 8],
            ['category' => 'atribut-dwp', 'name' => 'Piagam', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 9],
            ['category' => 'atribut-dwp', 'name' => 'Topi DWP', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 10],
            ['category' => 'atribut-dwp', 'name' => 'Vandel Provinsi', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 11],
            ['category' => 'atribut-dwp', 'name' => 'Vandel Kabupaten', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 12],
            ['category' => 'atribut-dwp', 'name' => 'Vandel Kecamatan', 'price_text' => 'Hubungi Tim Sekretariat', 'unit' => 'buah', 'sort_order' => 13],
            ['category' => 'atribut-dwp', 'name' => 'Vandel Meja', 'price' => 300000, 'unit' => 'buah', 'sort_order' => 14],
        ];

        foreach ($samples as $item) {
            $slug = Str::slug($item['name']);
            DwpCatalogProduct::firstOrCreate(
                ['slug' => $slug],
                [
                    'dwp_catalog_category_id' => $categoryMap[$item['category']]->id ?? null,
                    'name' => $item['name'],
                    'description' => $item['description'] ?? null,
                    'price' => $item['price'] ?? null,
                    'price_text' => $item['price_text'] ?? null,
                    'unit' => $item['unit'] ?? null,
                    'contact_name' => $contactName,
                    'contact_phone' => $contactPhone,
                    'sort_order' => $item['sort_order'] ?? 0,
                    'is_featured' => false,
                    'is_active' => true,
                ]
            );
        }

        $this->command?->info('DwpCatalogSeeder selesai.');
    }

    private function renameCategory(string $oldSlug, string $newSlug): void
    {
        $category = DwpCatalogCategory::query()->where('slug', $oldSlug)->first();
        if ($category && ! DwpCatalogCategory::query()->where('slug', $newSlug)->exists()) {
            $category->slug = $newSlug;
            $category->save();
        }
    }

    private function existingPublicPath(string $relative): ?string
    {
        $relative = ltrim(str_replace('\\', '/', $relative), '/');

        if (is_file(public_path($relative))) {
            return $relative;
        }

        $webroot = dirname(base_path()).DIRECTORY_SEPARATOR.'public_html (5)'.DIRECTORY_SEPARATOR.str_replace('/', DIRECTORY_SEPARATOR, $relative);

        return is_file($webroot) ? $relative : null;
    }
}
