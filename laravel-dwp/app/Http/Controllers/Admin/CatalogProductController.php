<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreDwpCatalogProductRequest;
use App\Http\Requests\Admin\UpdateDwpCatalogProductRequest;
use App\Models\DwpCatalogCategory;
use App\Models\DwpCatalogProduct;
use App\Services\AdminActivityLogger;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class CatalogProductController extends Controller
{
    public function __construct(private AdminActivityLogger $activityLogger) {}

    public function index(Request $request)
    {
        $query = DwpCatalogProduct::query()->with('category')->ordered();

        if ($request->filled('category_id')) {
            $query->where('dwp_catalog_category_id', $request->integer('category_id'));
        }

        if ($request->filled('q')) {
            $q = trim((string) $request->input('q'));
            $query->where('name', 'like', "%{$q}%");
        }

        return view('admin.catalog.products.index', [
            'products' => $query->paginate(20)->withQueryString(),
            'categories' => DwpCatalogCategory::ordered()->get(),
        ]);
    }

    public function create()
    {
        return view('admin.catalog.products.form', [
            'product' => new DwpCatalogProduct(['is_active' => true, 'sort_order' => 0]),
            'categories' => DwpCatalogCategory::ordered()->get(),
        ]);
    }

    public function store(StoreDwpCatalogProductRequest $request)
    {
        $data = $this->payload($request);
        $data['image_path'] = $this->storeImage($request);

        $product = DwpCatalogProduct::create($data);

        $this->activityLogger->log('create_catalog_product', "Menambah produk katalog: {$product->name}");

        return redirect()->route('admin.catalog.products.index')
            ->with('success', 'Produk katalog berhasil ditambahkan.');
    }

    public function edit(DwpCatalogProduct $product)
    {
        return view('admin.catalog.products.form', [
            'product' => $product,
            'categories' => DwpCatalogCategory::ordered()->get(),
        ]);
    }

    public function update(UpdateDwpCatalogProductRequest $request, DwpCatalogProduct $product)
    {
        $data = $this->payload($request);

        if ($request->hasFile('image')) {
            $this->deleteStoredImage($product->image_path);
            $data['image_path'] = $this->storeImage($request);
        }

        $product->update($data);

        $this->activityLogger->log('update_catalog_product', "Memperbarui produk katalog: {$product->name}");

        return redirect()->route('admin.catalog.products.index')
            ->with('success', 'Produk katalog berhasil diperbarui.');
    }

    public function destroy(DwpCatalogProduct $product)
    {
        abort_unless(request()->user()?->canDeleteCatalog(), 403, 'Hanya superadmin yang dapat menghapus produk.');
        $name = $product->name;
        $this->deleteStoredImage($product->image_path);
        $product->delete();

        $this->activityLogger->log('delete_catalog_product', "Menghapus produk katalog: {$name}");

        return redirect()->route('admin.catalog.products.index')
            ->with('success', 'Produk katalog berhasil dihapus.');
    }

    private function payload(FormRequest $request): array
    {
        $data = $request->safe()->except(['image']);
        $data['slug'] = $data['slug'] ?: Str::slug($data['name']);
        $data['is_active'] = $request->boolean('is_active');
        $data['is_featured'] = $request->boolean('is_featured');
        $data['price'] = DwpCatalogProduct::normalizePriceInput($data['price'] ?? null);

        return $data;
    }

    private function storeImage(Request $request): ?string
    {
        if (! $request->hasFile('image')) {
            return null;
        }

        return $request->file('image')->store('dwp-catalog', 'public');
    }

    private function deleteStoredImage(?string $path): void
    {
        if (! $path) {
            return;
        }

        $normalized = ltrim(str_replace('\\', '/', $path), '/');

        if (str_starts_with($normalized, 'src/')) {
            return;
        }

        if (str_starts_with($normalized, 'storage/')) {
            $normalized = substr($normalized, strlen('storage/'));
        }

        if (Storage::disk('public')->exists($normalized)) {
            Storage::disk('public')->delete($normalized);
        }
    }
}
