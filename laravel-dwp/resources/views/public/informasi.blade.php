@extends('layouts.app')

@section('title', 'Informasi - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Informasi</h1>
        <ul class="dwp-info-list">
            <li>{{ $dwp['service_hours'] }}</li>
            <li>{{ $dwp['service_hours_note'] }}</li>
            <li>{{ $dwp['order_deadline_note'] }}</li>
            <li>Mengenai pengambilan, silakan menghubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.</li>
        </ul>
        <p>
            <strong>Kontak pemesanan:</strong><br>
            {{ $dwp['contact_name'] }}<br>
            {{ $dwp['contact_phone_primary'] }} atau {{ $dwp['contact_phone_secondary'] }}
        </p>
        <p>
            <a href="{{ route('katalog') }}">Lihat Katalog</a> ·
            <a href="{{ route('wisuda.index') }}">Pemesanan Toga Wisuda</a>
        </p>
    </div>
</section>
@endsection
