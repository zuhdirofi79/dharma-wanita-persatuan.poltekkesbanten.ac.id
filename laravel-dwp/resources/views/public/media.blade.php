@extends('layouts.app')

@section('title', 'Media - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Media</h1>
        <p>Galeri produk toga wisuda Dharma Wanita Persatuan Poltekkes Kemenkes Banten.</p>
        <div class="dwp-media-grid">
            @foreach(['Baju-Toga-Mahasiswa.jpeg', 'Topi-Toga-Segi-Lima.jpeg', 'sleber-kerah-wisuda.jpeg'] as $file)
                <figure class="dwp-media-item">
                    <img src="{{ asset('src/img/wisuda/'.$file) }}" alt="Galeri toga {{ $file }}" loading="lazy">
                </figure>
            @endforeach
        </div>
        <p><a href="{{ route('wisuda.index') }}" class="dwp-product-cta">Lihat Detail Wisuda</a></p>
    </div>
</section>
@endsection
