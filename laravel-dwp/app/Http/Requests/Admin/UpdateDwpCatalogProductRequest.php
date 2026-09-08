<?php

namespace App\Http\Requests\Admin;

use App\Models\DwpCatalogProduct;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateDwpCatalogProductRequest extends FormRequest
{
    public function authorize(): bool
    {
        return $this->user()?->canManageCatalog() ?? false;
    }

    protected function prepareForValidation(): void
    {
        $this->merge([
            'price' => DwpCatalogProduct::normalizePriceInput($this->input('price')),
        ]);

        if (DwpCatalogProduct::priceTextLooksLikePayment($this->input('price_text'))) {
            $this->merge(['price_text' => null]);
        }
    }

    public function rules(): array
    {
        $productId = $this->route('product')?->id;

        return [
            'dwp_catalog_category_id' => ['nullable', 'integer', 'exists:dwp_catalog_categories,id'],
            'name' => ['required', 'string', 'max:255'],
            'slug' => ['nullable', 'string', 'max:255', Rule::unique('dwp_catalog_products', 'slug')->ignore($productId)],
            'description' => ['nullable', 'string'],
            'price' => ['nullable', 'numeric', 'min:0'],
            'price_text' => ['nullable', 'string', 'max:255'],
            'unit' => ['nullable', 'string', 'max:50'],
            'contact_name' => ['nullable', 'string', 'max:255'],
            'contact_phone' => ['nullable', 'string', 'max:50'],
            'sort_order' => ['nullable', 'integer', 'min:0'],
            'is_featured' => ['nullable', 'boolean'],
            'is_active' => ['nullable', 'boolean'],
            'image' => ['nullable', 'image', 'mimes:jpg,jpeg,png,webp', 'max:2048'],
        ];
    }
}
