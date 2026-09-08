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
        $contactPhone = config('dwp.contact_phone_primary');

        $categories = [
            [
                'name' => 'Toga Mahasiswa/Mahasiswi',
                'slug' => 'toga-mahasiswa-mahasiswi',
                'description' => 'Paket baju toga wisuda mahasiswa/mahasiswi Poltekkes Kemenkes Banten.',
                'sort_order' => 1,
            ],
            [
                'name' => 'Pre Order Baju dan Kain Batik DWP',
                'slug' => 'pre-order-baju-dan-kain-batik-dwp',
                'description' => 'Pre order baju batik jadi dan bahan seragam batik DWP.',
                'sort_order' => 2,
            ],
            [
                'name' => 'Pernak Pernik KWAS',
                'slug' => 'pernak-pernik-kwas',
                'description' => 'Pernak-pernik KWAS Dharma Wanita Persatuan.',
                'sort_order' => 3,
            ],
            [
                'name' => 'Atribut DWP',
                'slug' => 'atribut-dwp',
                'description' => 'Atribut resmi Dharma Wanita Persatuan.',
                'sort_order' => 4,
            ],
        ];

        $categoryMap = [];

        foreach ($categories as $data) {
            $category = DwpCatalogCategory::firstOrNew(['slug' => $data['slug']]);
            if (! $category->exists) {
                $category->fill([
                    'name' => $data['name'],
                    'description' => $data['description'],
                    'sort_order' => $data['sort_order'],
                    'is_active' => true,
                ]);
                $category->save();
            }
            $categoryMap[$data['slug']] = $category;
        }

        $togaImage = $this->existingPublicPath('src/img/wisuda/Baju-Toga-Mahasiswa.jpeg');

        $products = [
            [
                'category' => 'toga-mahasiswa-mahasiswi',
                'name' => 'Baju Toga Wisuda Mahasiswa/Mahasiswi',
                'slug' => 'baju-toga-wisuda-mahasiswa-mahasiswi',
                'description' => 'Paket Baju Toga Wisuda Kini Bisa dipesan melalui Dharma Wanita Persatuan Poltekkes Kemenkes Banten',
                'price' => null,
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => '-',
                'image_path' => $togaImage,
                'is_featured' => true,
                'sort_order' => 1,
            ],
            [
                'category' => 'pre-order-baju-dan-kain-batik-dwp',
                'name' => 'Baju Batik Jadi',
                'description' => 'Pre order baju batik jadi DWP Poltekkes Kemenkes Banten.',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'pcs',
                'sort_order' => 1,
            ],
            [
                'category' => 'pre-order-baju-dan-kain-batik-dwp',
                'name' => 'Bahan Seragam Batik',
                'description' => 'Bahan seragam batik DWP, pemesanan sesuai kebutuhan.',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'meter',
                'sort_order' => 2,
            ],
            [
                'category' => 'pernak-pernik-kwas',
                'name' => 'Pernak Pernik KWAS 1',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'paket',
                'sort_order' => 1,
            ],
            [
                'category' => 'pernak-pernik-kwas',
                'name' => 'Pernak Pernik KWAS 2',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'paket',
                'sort_order' => 2,
            ],
            [
                'category' => 'pernak-pernik-kwas',
                'name' => 'Pernak Pernik KWAS 3',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'paket',
                'sort_order' => 3,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'AD/ART',
                'price' => 20000,
                'unit' => 'buku',
                'sort_order' => 1,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Bahan Seragam Kerja/Resmi',
                'price' => 60000,
                'unit' => 'meter',
                'sort_order' => 2,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Bisban',
                'price' => 12000,
                'unit' => 'paket',
                'sort_order' => 3,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Jilbab Bergo',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 4,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Kerudung Batik Standar',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 5,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Kerudung Batik Jumbo',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 6,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Kerudung Segiempat / Scarf',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 7,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Lencana',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 8,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Piagam',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 9,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Topi DWP',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 10,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Vandel Provinsi',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 11,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Vandel Kabupaten',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 12,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Vandel Kecamatan',
                'price_text' => 'Hubungi Tim Sekretariat DWP',
                'unit' => 'buah',
                'sort_order' => 13,
            ],
            [
                'category' => 'atribut-dwp',
                'name' => 'Vandel Meja',
                'price' => 300000,
                'unit' => 'buah',
                'sort_order' => 14,
            ],
        ];

        foreach ($products as $item) {
            $slug = $item['slug'] ?? Str::slug($item['name']);
            $product = DwpCatalogProduct::firstOrNew(['slug' => $slug]);

            if ($product->exists) {
                continue;
            }

            $category = $categoryMap[$item['category']] ?? null;

            $product->fill([
                'dwp_catalog_category_id' => $category?->id,
                'name' => $item['name'],
                'description' => $item['description'] ?? null,
                'price' => $item['price'] ?? null,
                'price_text' => $item['price_text'] ?? null,
                'unit' => $item['unit'] ?? null,
                'image_path' => $item['image_path'] ?? null,
                'contact_name' => $contactName,
                'contact_phone' => $contactPhone,
                'sort_order' => $item['sort_order'] ?? 0,
                'is_featured' => $item['is_featured'] ?? false,
                'is_active' => true,
            ]);

            $product->save();
        }

        $this->command?->info('DwpCatalogSeeder selesai. Kategori: '.count($categoryMap).', produk: '.count($products));
    }

    private function existingPublicPath(string $relative): ?string
    {
        $relative = ltrim(str_replace('\\', '/', $relative), '/');

        if (is_file(public_path($relative))) {
            return $relative;
        }

        $webroot = dirname(base_path()).DIRECTORY_SEPARATOR.'public_html (5)'.DIRECTORY_SEPARATOR.str_replace('/', DIRECTORY_SEPARATOR, $relative);

        if (is_file($webroot)) {
            return $relative;
        }

        return null;
    }
}
