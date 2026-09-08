@extends('layouts.app')

@section('title', 'Layanan - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Layanan</h1>
        <p>Layanan Dharma Wanita Persatuan Poltekkes Kemenkes Banten:</p>
        <ul class="dwp-info-list">
            <li><a href="{{ route('katalog') }}">Katalog Produk DWP</a></li>
            @foreach($categories as $category)
                <li><a href="{{ route('katalog') }}#{{ $category->slug }}">{{ $category->name }}</a></li>
            @endforeach
            <li><a href="{{ route('wisuda.index') }}">Pemesanan Toga Wisuda</a></li>
            <li><a href="{{ route('kontak') }}">Kontak Tim Sekretariat DWP</a></li>
        </ul>
    </div>
</section>
@endsection
