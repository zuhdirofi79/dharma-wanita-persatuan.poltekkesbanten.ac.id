@extends('layouts.app')

@section('title', 'Katalog DWP - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-hero">
    <div class="container dwp-hero-inner">
        <p class="dwp-kicker">Katalog Produk DWP</p>
        <h1>Katalog Dharma Wanita Persatuan</h1>
        <p class="dwp-intro-text">
            Pemesanan atribut, batik, pernak-pernik, dan toga wisuda melalui Dharma Wanita Persatuan Poltekkes Kemenkes Banten.
        </p>
        <p class="dwp-intro-contact">
            Kontak Sekretariat DWP:<br>
            Dias Arliadini (<a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_primary'] }}</a>)<br>
            Putri Ratna Dewi (<a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_secondary'] }}</a>)
        </p>
        <div class="dwp-hero-actions">
            <a href="#produk-pilihan" class="dwp-btn dwp-btn-orange">Lihat Produk Pilihan</a>
            <a href="{{ route('wisuda.index') }}" class="dwp-btn dwp-btn-primary">Pesan Toga Wisuda</a>
            <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-white">Hubungi Dias Arliadini</a>
            <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-outline">Hubungi Putri Ratna Dewi</a>
        </div>
    </div>
</section>

@if($categories->isNotEmpty())
    <nav class="dwp-category-chips" aria-label="Kategori produk">
        <div class="container dwp-chip-row">
            @foreach($categories as $category)
                <a href="#{{ $category->slug }}" class="dwp-chip">{{ $category->name }}</a>
            @endforeach
        </div>
    </nav>
@endif

<section class="dwp-catalog-section" id="produk-pilihan">
    <div class="container">
        <div class="dwp-section-head">
            <div>
                <p class="dwp-kicker">Marketplace DWP</p>
                <h2 class="dwp-section-title">Produk Pilihan</h2>
            </div>
            <a href="{{ route('wisuda.index') }}" class="dwp-section-link">Pesan Toga Wisuda</a>
        </div>
        <div class="dwp-market-grid">
            @foreach($featured as $product)
                @include('partials.dwp-product-card', ['product' => $product])
            @endforeach
        </div>
        @if($catalogEmpty ?? false)
            <p class="dwp-empty-note">
                Katalog produk belum tersedia. Silakan admin mengunggah produk melalui dashboard admin.
                @guest
                    <a href="{{ route('admin.login') }}" class="dwp-btn dwp-btn-primary">Login Admin</a>
                @endguest
            </p>
        @endif
    </div>
</section>

@foreach($categories as $category)
    @continue($category->products->isEmpty())
    <section class="dwp-catalog-section" id="{{ $category->slug }}">
        <div class="container">
            <div class="dwp-section-head">
                <h2 class="dwp-section-title">{{ $category->name }}</h2>
            </div>
            @if($category->description)
                <p class="dwp-section-desc">{{ $category->description }}</p>
            @endif
            <div class="dwp-market-grid">
                @foreach($category->products as $product)
                    @include('partials.dwp-product-card', ['product' => $product])
                @endforeach
            </div>
        </div>
    </section>
@endforeach
@endsection
