<?php

namespace App\Http\Controllers;

use App\Models\DwpCatalogProduct;
use Illuminate\Support\Facades\Schema;

class CatalogController extends Controller
{
    public function show(string $slug)
    {
        $product = null;

        if (Schema::hasTable('dwp_catalog_products')) {
            $product = DwpCatalogProduct::query()
                ->with('category')
                ->active()
                ->where('slug', $slug)
                ->first();
        }

        if (! $product && DwpCatalogProduct::isTogaSlug($slug)) {
            $product = DwpCatalogProduct::togaFallback();
        }

        abort_if(! $product, 404);

        $related = collect();
        if (Schema::hasTable('dwp_catalog_products') && $product->dwp_catalog_category_id) {
            $related = DwpCatalogProduct::query()
                ->active()
                ->with('category')
                ->where('dwp_catalog_category_id', $product->dwp_catalog_category_id)
                ->where('id', '!=', $product->id)
                ->ordered()
                ->limit(6)
                ->get();
        }

        return view('public.produk', [
            'product' => $product,
            'related' => $related,
            'dwp' => config('dwp'),
        ]);
    }
}
