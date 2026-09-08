<?php

namespace App\Http\Controllers;

use App\Models\DwpCatalogCategory;
use Illuminate\Support\Facades\Schema;

class HomeController extends Controller
{
    public function beranda()
    {
        $categories = collect();

        if (Schema::hasTable('dwp_catalog_categories')) {
            $categories = DwpCatalogCategory::query()
                ->active()
                ->ordered()
                ->with(['products' => fn ($query) => $query->active()->ordered()])
                ->get();
        }

        return view('public.katalog', [
            'categories' => $categories,
            'dwp' => config('dwp'),
        ]);
    }

    public function about()
    {
        return redirect()->route('profile');
    }
}
