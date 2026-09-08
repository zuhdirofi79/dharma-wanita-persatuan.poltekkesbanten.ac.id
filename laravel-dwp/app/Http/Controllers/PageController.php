<?php

namespace App\Http\Controllers;

use App\Models\DwpCatalogCategory;
use Illuminate\Support\Facades\Schema;

class PageController extends Controller
{
    public function profile()
    {
        return view('public.profile', [
            'dwp' => config('dwp'),
        ]);
    }

    public function informasi()
    {
        return view('public.informasi', [
            'dwp' => config('dwp'),
        ]);
    }

    public function media()
    {
        return view('public.media', [
            'dwp' => config('dwp'),
        ]);
    }

    public function layanan()
    {
        $categories = collect();

        if (Schema::hasTable('dwp_catalog_categories')) {
            $categories = DwpCatalogCategory::query()
                ->active()
                ->ordered()
                ->get();
        }

        return view('public.layanan', [
            'categories' => $categories,
            'dwp' => config('dwp'),
        ]);
    }

    public function kontak()
    {
        return view('public.kontak', [
            'dwp' => config('dwp'),
        ]);
    }
}
