@extends('layouts.app')

@section('title', 'Tentang - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Tentang</h1>
        <p>Dharma Wanita Persatuan Poltekkes Kemenkes Banten mengelola katalog produk dan pemesanan toga wisuda.</p>
        <p><a href="{{ route('profile') }}">Lihat Profile</a> · <a href="{{ route('katalog') }}">Lihat Katalog</a></p>
    </div>
</section>
@endsection
