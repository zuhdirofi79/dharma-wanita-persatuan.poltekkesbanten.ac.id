@extends('layouts.admin')

@section('title', $product->exists ? 'Edit Produk' : 'Tambah Produk')

@section('content')
<h1>{{ $product->exists ? 'Edit' : 'Tambah' }} Produk Katalog</h1>

<div class="admin-card" style="max-width:720px;">
    <form method="POST" action="{{ $product->exists ? route('admin.catalog.products.update', $product) : route('admin.catalog.products.store') }}" enctype="multipart/form-data">
        @csrf
        @if($product->exists) @method('PUT') @endif

        <div class="form-group">
            <label for="dwp_catalog_category_id">Kategori</label>
            <select name="dwp_catalog_category_id" id="dwp_catalog_category_id" class="form-select">
                <option value="">-- Tanpa kategori --</option>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}" @selected((string) old('dwp_catalog_category_id', $product->dwp_catalog_category_id) === (string) $category->id)>
                        {{ $category->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="name">Nama Produk</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ old('name', $product->name) }}" required>
            @error('name')<small style="color:#dc2626;">{{ $message }}</small>@enderror
        </div>

        <div class="form-group">
            <label for="slug">Slug (opsional)</label>
            <input type="text" name="slug" id="slug" class="form-control" value="{{ old('slug', $product->slug) }}">
            @error('slug')<small style="color:#dc2626;">{{ $message }}</small>@enderror
        </div>

        <div class="form-group">
            <label for="description">Deskripsi</label>
            <textarea name="description" id="description" class="form-control" rows="4">{{ old('description', $product->description) }}</textarea>
        </div>

        <div class="form-group">
            <label for="price">Harga</label>
            @php
                $priceValue = old('price', $product->price);
                if (is_numeric($priceValue) && (float) $priceValue == (int) $priceValue) {
                    $priceValue = (int) $priceValue;
                }
            @endphp
            <input type="text" name="price" id="price" class="form-control" inputmode="decimal" placeholder="contoh 200000" value="{{ $priceValue }}">
            <small style="color:#6b7280;">Isi angka saja, tanpa wajib menulis Rp. Contoh: 200000. Jika diketik Rp. 200.000, sistem akan membersihkan format sebelum disimpan. Harga yang tampil di website saat ini: <strong>{{ $product->exists ? $product->displayPrice() : 'Rp. 200.000 (default toga jika harga kosong)' }}</strong></small>
            @error('price')<small style="color:#dc2626;">{{ $message }}</small>@enderror
        </div>

        <div class="form-group">
            <label for="price_text">Teks Harga (opsional, jika harga angka dikosongkan)</label>
            <input type="text" name="price_text" id="price_text" class="form-control" value="{{ old('price_text', \App\Models\DwpCatalogProduct::priceTextLooksLikePayment($product->price_text) ? '' : $product->price_text) }}" placeholder="contoh: Hubungi Tim Sekretariat">
            <small style="color:#6b7280;">Jangan isi nama bank/rekening di sini. Informasi pembayaran tampil terpisah pada card rekening.</small>
        </div>

        <div class="form-group">
            <label for="unit">Satuan (contoh: buah, meter, paket)</label>
            <input type="text" name="unit" id="unit" class="form-control" value="{{ old('unit', $product->unit) }}">
        </div>

        <div class="form-group">
            <label for="contact_name">Nama Kontak</label>
            <input type="text" name="contact_name" id="contact_name" class="form-control" value="{{ old('contact_name', $product->contact_name) }}">
        </div>

        <div class="form-group">
            <label for="contact_phone">Telepon Kontak</label>
            <input type="text" name="contact_phone" id="contact_phone" class="form-control" value="{{ old('contact_phone', $product->contact_phone) }}">
        </div>

        <div class="form-group">
            <label for="sort_order">Urutan Tampil</label>
            <input type="number" name="sort_order" id="sort_order" class="form-control" min="0" value="{{ old('sort_order', $product->sort_order ?? 0) }}">
        </div>

        <div class="form-group">
            <label for="image">Gambar produk (jpg, jpeg, png, webp, maks 2MB)</label>
            <input type="file" name="image" id="image" class="form-control" accept=".jpg,.jpeg,.png,.webp">
            @error('image')<small style="color:#dc2626;">{{ $message }}</small>@enderror
            @if($product->imageUrl())
                <p style="margin-top:0.75rem;">
                    <img src="{{ $product->imageUrl() }}" alt="{{ $product->name }}" style="max-width:180px;max-height:180px;object-fit:contain;border:1px solid #e5e7eb;border-radius:8px;background:#fff;">
                </p>
            @endif
        </div>

        <div class="form-group">
            <label style="font-weight:normal;">
                <input type="checkbox" name="is_featured" value="1" {{ old('is_featured', $product->is_featured) ? 'checked' : '' }}>
                Produk unggulan
            </label>
        </div>

        <div class="form-group">
            <label style="font-weight:normal;">
                <input type="checkbox" name="is_active" value="1" {{ old('is_active', $product->is_active) ? 'checked' : '' }}>
                Aktif
            </label>
        </div>

        <button type="submit" class="btn-sm btn-teal">Simpan</button>
        <a href="{{ route('admin.catalog.products.index') }}" class="btn-sm btn-gray">Batal</a>
    </form>
</div>
@endsection
