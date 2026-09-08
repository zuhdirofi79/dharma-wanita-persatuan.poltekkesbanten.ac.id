@extends('layouts.admin')

@section('title', $category->exists ? 'Edit Kategori' : 'Tambah Kategori')

@section('content')
<h1>{{ $category->exists ? 'Edit' : 'Tambah' }} Kategori Produk</h1>

<div class="admin-card" style="max-width:640px;">
    <form method="POST" action="{{ $category->exists ? route('admin.catalog.categories.update', $category) : route('admin.catalog.categories.store') }}">
        @csrf
        @if($category->exists) @method('PUT') @endif

        <div class="form-group">
            <label for="name">Nama Kategori</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ old('name', $category->name) }}" required>
            @error('name')<small style="color:#dc2626;">{{ $message }}</small>@enderror
        </div>

        <div class="form-group">
            <label for="slug">Slug (opsional)</label>
            <input type="text" name="slug" id="slug" class="form-control" value="{{ old('slug', $category->slug) }}">
            @error('slug')<small style="color:#dc2626;">{{ $message }}</small>@enderror
        </div>

        <div class="form-group">
            <label for="description">Deskripsi</label>
            <textarea name="description" id="description" class="form-control" rows="3">{{ old('description', $category->description) }}</textarea>
        </div>

        <div class="form-group">
            <label for="sort_order">Urutan Tampil</label>
            <input type="number" name="sort_order" id="sort_order" class="form-control" min="0" value="{{ old('sort_order', $category->sort_order ?? 0) }}">
        </div>

        <div class="form-group">
            <label style="font-weight:normal;">
                <input type="checkbox" name="is_active" value="1" {{ old('is_active', $category->is_active) ? 'checked' : '' }}>
                Aktif
            </label>
        </div>

        <button type="submit" class="btn-sm btn-teal">Simpan</button>
        <a href="{{ route('admin.catalog.categories.index') }}" class="btn-sm btn-gray">Batal</a>
    </form>
</div>
@endsection
