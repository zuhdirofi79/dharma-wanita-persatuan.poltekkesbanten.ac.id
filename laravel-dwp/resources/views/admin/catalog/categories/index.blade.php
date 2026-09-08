@extends('layouts.admin')

@section('title', 'Kategori Produk - Manajemen Katalog DWP')

@section('content')
<div style="display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:1rem;">
    <div>
        <h1>Kategori Produk</h1>
        <p style="color:#6b7280;margin:0;">Manajemen Katalog DWP</p>
    </div>
    <a href="{{ route('admin.catalog.categories.create') }}" class="btn-sm btn-teal">Tambah Kategori</a>
</div>

<div class="admin-card" style="margin-top:1rem;">
    <table class="table">
        <thead>
            <tr>
                <th>Nama</th>
                <th>Slug</th>
                <th>Urutan</th>
                <th>Produk</th>
                <th>Status</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @forelse($categories as $category)
                <tr>
                    <td>{{ $category->name }}</td>
                    <td>{{ $category->slug }}</td>
                    <td>{{ $category->sort_order }}</td>
                    <td>{{ $category->products_count }}</td>
                    <td>{{ $category->is_active ? 'Aktif' : 'Nonaktif' }}</td>
                    <td style="white-space:nowrap;">
                        <a href="{{ route('admin.catalog.categories.edit', $category) }}" class="btn-sm btn-blue">Edit</a>
                        <form method="POST" action="{{ route('admin.catalog.categories.destroy', $category) }}" style="display:inline;" onsubmit="return confirm('Hapus kategori ini?')">
                            @csrf @method('DELETE')
                            <button type="submit" class="btn-sm btn-red">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr><td colspan="6">Belum ada kategori.</td></tr>
            @endforelse
        </tbody>
    </table>
    {{ $categories->links() }}
</div>
@endsection
