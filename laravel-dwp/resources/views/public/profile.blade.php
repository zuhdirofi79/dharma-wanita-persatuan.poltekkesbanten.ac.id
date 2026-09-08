@extends('layouts.app')

@section('title', 'Profile - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Profile</h1>
        <p>
            Dharma Wanita Persatuan Poltekkes Kemenkes Banten mengelola katalog atribut,
            batik, pernak-pernik, dan pemesanan toga wisuda bagi civitas akademika
            Poltekkes Kemenkes Banten.
        </p>
        <p>
            Melalui website ini, pemesanan dapat dilakukan secara tertib, termasuk
            pemesanan paket baju toga wisuda mahasiswa/mahasiswi beserta unggah bukti pembayaran.
        </p>
        <p><strong>Alamat:</strong> {{ $dwp['address'] }}</p>
        <p><strong>Email:</strong> <a href="mailto:{{ $dwp['email'] }}">{{ $dwp['email'] }}</a></p>
    </div>
</section>
@endsection
