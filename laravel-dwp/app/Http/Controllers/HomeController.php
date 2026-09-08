<?php

namespace App\Http\Controllers;

use App\Models\DwpCatalogCategory;
use App\Models\DwpCatalogProduct;
use Illuminate\Support\Facades\Schema;

class HomeController extends Controller
{
    public function beranda()
    {
        $categories = collect();
        $featured = collect();
        $hasDatabase = Schema::hasTable('dwp_catalog_categories') && Schema::hasTable('dwp_catalog_products');

        if ($hasDatabase) {
            $categories = DwpCatalogCategory::query()
                ->active()
                ->ordered()
                ->with(['products' => fn ($query) => $query->active()->ordered()])
                ->get();

            $featured = DwpCatalogProduct::query()
                ->active()
                ->with('category')
                ->ordered()
                ->get()
                ->sortBy(fn (DwpCatalogProduct $product) => $product->isTogaProduct() ? 0 : 1)
                ->values();
        }

        if ($featured->isEmpty()) {
            $featured = collect([DwpCatalogProduct::togaFallback()]);
        }

        return view('public.katalog', [
            'categories' => $categories,
            'featured' => $featured,
            'dwp' => config('dwp'),
            'catalogEmpty' => $hasDatabase && DwpCatalogProduct::query()->active()->doesntExist(),
        ]);
    }

    public function about()
    {
        return redirect()->route('profile');
    }
}
