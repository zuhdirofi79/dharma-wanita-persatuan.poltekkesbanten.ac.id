@extends('layouts.app')

@section('title', 'Katalog DWP - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-intro">
    <div class="container">
        <p class="dwp-kicker">Katalog Produk</p>
        <h1>Katalog Dharma Wanita Persatuan</h1>
        <p class="dwp-intro-text">
            Pemesanan atribut, batik, pernak-pernik, dan toga wisuda melalui
            Dharma Wanita Persatuan Poltekkes Kemenkes Banten.
        </p>
        <p class="dwp-intro-contact">
            Pemesanan: <strong>{{ $dwp['contact_name'] }}</strong><br>
            <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_primary'] }}</a>
            atau
            <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_secondary'] }}</a>
        </p>
    </div>
</section>

@forelse($categories as $category)
    <section class="dwp-catalog-section" id="{{ $category->slug }}">
        <div class="container">
            <h2 class="dwp-section-title">{{ $category->name }}</h2>
            @if($category->description)
                <p class="dwp-section-desc">{{ $category->description }}</p>
            @endif

            @if($category->products->isEmpty())
                <p class="dwp-empty">Produk pada kategori ini belum tersedia.</p>
            @else
                <div class="dwp-product-grid">
                    @foreach($category->products as $product)
                        <article class="dwp-product-card {{ $product->is_featured ? 'is-featured' : '' }}">
                            <div class="dwp-product-image">
                                @if($product->imageUrl())
                                    <img src="{{ $product->imageUrl() }}" alt="{{ $product->name }}" loading="lazy">
                                @else
                                    <div class="dwp-product-placeholder" aria-hidden="true">
                                        <span>{{ $product->name }}</span>
                                    </div>
                                @endif
                            </div>
                            <div class="dwp-product-body">
                                <h3>{{ $product->name }}</h3>
                                @if($product->description)
                                    <p class="dwp-product-desc">{{ $product->description }}</p>
                                @endif
                                <p class="dwp-product-price">{{ $product->displayPrice() }}</p>
                                @if($product->ctaUrl())
                                    <a href="{{ $product->ctaUrl() }}" class="dwp-product-cta">{{ $product->ctaLabel() }}</a>
                                @endif
                            </div>
                        </article>
                    @endforeach
                </div>
            @endif
        </div>
    </section>
@empty
    <section class="dwp-catalog-section">
        <div class="container">
            <h2 class="dwp-section-title">Katalog DWP</h2>
            <p class="dwp-empty">Katalog produk sedang disiapkan. Silakan hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.</p>
        </div>
    </section>
@endforelse
@endsection
