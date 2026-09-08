@extends('layouts.admin')

@section('title', 'Produk - Manajemen Katalog DWP')

@section('content')
<div style="display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:1rem;">
    <div>
        <h1>Produk Katalog DWP</h1>
        <p style="color:#6b7280;margin:0;">Unggah gambar, ubah nama, deskripsi, harga, satuan, urutan, dan status.</p>
    </div>
    <a href="{{ route('admin.catalog.products.create') }}" class="btn-sm btn-teal">Tambah Produk</a>
</div>

<form method="GET" class="admin-card" style="margin-top:1rem;display:flex;flex-wrap:wrap;gap:0.5rem;align-items:center;">
    <input type="text" name="q" class="form-control" placeholder="Cari nama produk" value="{{ request('q') }}" style="max-width:220px;">
    <select name="category_id" class="form-select" style="max-width:240px;">
        <option value="">Semua kategori</option>
        @foreach($categories as $category)
            <option value="{{ $category->id }}" @selected(request('category_id') == $category->id)>{{ $category->name }}</option>
        @endforeach
    </select>
    <button type="submit" class="btn-sm btn-teal">Filter</button>
    <a href="{{ route('admin.catalog.products.index') }}" class="btn-sm btn-gray">Reset</a>
</form>

<div class="admin-card" style="margin-top:1rem;">
    <table class="table">
        <thead>
            <tr>
                <th>Gambar</th>
                <th>Nama</th>
                <th>Kategori</th>
                <th>Harga</th>
                <th>Urutan</th>
                <th>Status</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @forelse($products as $product)
                <tr>
                    <td>
                        @if($product->imageUrl())
                            <img src="{{ $product->imageUrl() }}" alt="{{ $product->name }}" style="width:64px;height:64px;object-fit:contain;border:1px solid #e5e7eb;border-radius:8px;background:#fff;">
                        @else
                            <span style="color:#9ca3af;">Placeholder</span>
                        @endif
                    </td>
                    <td>{{ $product->name }}</td>
                    <td>{{ $product->category?->name ?? '-' }}</td>
                    <td>{{ $product->displayPrice() }}</td>
                    <td>{{ $product->sort_order }}</td>
                    <td>{{ $product->is_active ? 'Aktif' : 'Nonaktif' }}</td>
                    <td style="white-space:nowrap;">
                        <a href="{{ route('admin.catalog.products.edit', $product) }}" class="btn-sm btn-blue">Edit</a>
                        <form method="POST" action="{{ route('admin.catalog.products.destroy', $product) }}" style="display:inline;" onsubmit="return confirm('Hapus produk ini?')">
                            @csrf @method('DELETE')
                            <button type="submit" class="btn-sm btn-red">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td colspan="7">Belum ada produk.</td></tr>
            @endforelse
        </tbody>
    </table>
    {{ $products->links() }}
</div>
@endsection
