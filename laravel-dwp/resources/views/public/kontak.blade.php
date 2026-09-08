@extends('layouts.app')

@section('title', 'Kontak - Dharma Wanita Persatuan Poltekkes Kemenkes Banten')

@section('content')
<section class="dwp-page">
    <div class="container dwp-page-card">
        <h1>Kontak</h1>
        <p><strong>Alamat</strong><br>{{ $dwp['address'] }}</p>
        <p><strong>Email</strong><br><a href="mailto:{{ $dwp['email'] }}">{{ $dwp['email'] }}</a></p>
        <p>
            <strong>Kontak Sekretariat DWP:</strong><br>
            Dias Arliadini (<a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_primary'] }}</a>)<br>
            Putri Ratna Dewi (<a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_secondary'] }}</a>)
        </p>
        <p>{{ $dwp['service_hours'] }}<br>{{ $dwp['service_hours_note'] }}</p>
        <p>{{ $dwp['order_deadline_note'] }}</p>
        <p>Mengenai pengambilan, silakan menghubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.</p>
        <div class="dwp-contact-actions">
            <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-primary">Hubungi Dias Arliadini</a>
            <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="dwp-btn dwp-btn-outline">Hubungi Putri Ratna Dewi</a>
            <a href="{{ route('wisuda.index') }}" class="dwp-btn dwp-btn-orange">Pemesanan Toga</a>
        </div>
    </div>
</section>
@endsection
