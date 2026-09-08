<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreDwpCatalogCategoryRequest;
use App\Http\Requests\Admin\UpdateDwpCatalogCategoryRequest;
use App\Models\DwpCatalogCategory;
use App\Services\AdminActivityLogger;
use Illuminate\Support\Str;

class CatalogCategoryController extends Controller
{
    public function __construct(private AdminActivityLogger $activityLogger) {}

    public function index()
    {
        return view('admin.catalog.categories.index', [
            'categories' => DwpCatalogCategory::query()
                ->withCount('products')
                ->ordered()
                ->paginate(20),
        ]);
    }

    public function create()
    {
        return view('admin.catalog.categories.form', [
            'category' => new DwpCatalogCategory(['is_active' => true, 'sort_order' => 0]),
        ]);
    }

    public function store(StoreDwpCatalogCategoryRequest $request)
    {
        $data = $request->validated();
        $data['slug'] = $data['slug'] ?: Str::slug($data['name']);
        $data['is_active'] = $request->boolean('is_active');

        $category = DwpCatalogCategory::create($data);

        $this->activityLogger->log('create_catalog_category', "Menambah kategori katalog: {$category->name}");

        return redirect()->route('admin.catalog.categories.index')
            ->with('success', 'Kategori katalog berhasil ditambahkan.');
    }

    public function edit(DwpCatalogCategory $category)
    {
        return view('admin.catalog.categories.form', [
            'category' => $category,
        ]);
    }

    public function update(UpdateDwpCatalogCategoryRequest $request, DwpCatalogCategory $category)
    {
        $data = $request->validated();
        $data['slug'] = $data['slug'] ?: Str::slug($data['name']);
        $data['is_active'] = $request->boolean('is_active');

        $category->update($data);

        $this->activityLogger->log('update_catalog_category', "Memperbarui kategori katalog: {$category->name}");

        return redirect()->route('admin.catalog.categories.index')
            ->with('success', 'Kategori katalog berhasil diperbarui.');
    }

    public function destroy(DwpCatalogCategory $category)
    {
        $name = $category->name;
        $category->delete();

        $this->activityLogger->log('delete_catalog_category', "Menghapus kategori katalog: {$name}");

        return redirect()->route('admin.catalog.categories.index')
            ->with('success', 'Kategori katalog berhasil dihapus.');
    }
}
