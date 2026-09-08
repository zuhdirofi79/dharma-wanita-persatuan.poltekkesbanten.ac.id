@extends('layouts.app')

@section('title', $product->name.' - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page dwp-product-detail">
    <div class="container dwp-detail-grid">
        <div class="dwp-detail-gallery">
            @if($product->imageUrl())
                <img src="{{ $product->imageUrl() }}" alt="{{ $product->name }}">
            @else
                <div class="dwp-product-placeholder">{{ $product->name }}</div>
            @endif
        </div>
        <div class="dwp-detail-info">
            @if($product->isTogaProduct())
                <span class="dwp-badge dwp-badge-wisuda">Wisuda</span>
            @elseif($product->category?->name)
                <span class="dwp-badge">{{ $product->category->name }}</span>
            @endif
            <h1>{{ $product->name }}</h1>
            <p class="dwp-product-price dwp-detail-price">{{ $product->displayPrice() }}</p>
            @if($product->unit || $product->isTogaProduct())
                <p class="dwp-muted">Satuan: {{ $product->unit ?: 'paket' }}</p>
            @endif
            <div class="dwp-detail-copy">
                {!! nl2br(e($product->description ?: $product->shortDescription(240))) !!}
            </div>
            <div class="dwp-detail-contact">
                <strong>Kontak Sekretariat DWP:</strong>
                <p>Dias Arliadini ({{ $dwp['contact_phone_primary'] }})</p>
                <p>Putri Ratna Dewi ({{ $dwp['contact_phone_secondary'] }})</p>
            </div>
            @if($product->isTogaProduct())
                @include('partials.dwp-payment-card')
            @endif
            <div class="dwp-product-actions">
                <a href="{{ $product->orderUrl() }}" class="dwp-btn dwp-btn-primary" @if(!$product->isTogaProduct()) target="_blank" rel="noopener noreferrer" @endif>
                    {{ $product->orderLabel() }}
                </a>
                <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-outline">Hubungi Dias Arliadini</a>
                <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-outline">Hubungi Putri Ratna Dewi</a>
            </div>
            <p><a href="{{ route('beranda') }}">← Kembali ke katalog</a></p>
        </div>
    </div>

    @if($related->isNotEmpty())
        <div class="container" style="margin-top:2.5rem;">
            <h2 class="dwp-section-title">Produk terkait</h2>
            <div class="dwp-market-grid">
                @foreach($related as $item)
                    @include('partials.dwp-product-card', ['product' => $item])
                @endforeach
            </div>
        </div>
    @endif
</section>
@endsection
