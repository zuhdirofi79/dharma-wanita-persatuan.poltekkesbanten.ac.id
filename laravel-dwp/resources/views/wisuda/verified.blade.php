@extends('layouts.app')

@section('title', 'Pembayaran Toga Sudah Terverifikasi')

@section('content')
@php
    $togaProduct = $togaProduct ?? \App\Models\DwpCatalogProduct::canonicalToga();
@endphp
<div class="page-title-bar">Pembayaran Toga Sudah Terverifikasi</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1;">
        <div class="form-card-header">Pembayaran Toga Sudah Terverifikasi</div>
        <div class="form-card-body" style="display:block;">
            <div class="alert alert-success">
                Pembayaran toga Anda sudah diverifikasi admin.
            </div>

            <div class="wisuda-order-summary">
                <p>Pembayaran untuk pesanan:</p>
                <p><strong>{{ $order->order_code }}</strong></p>
                <p>telah diverifikasi oleh admin.</p>
                <p><strong>Nama:</strong> {{ $order->student_name }}</p>
                <p><strong>NIM:</strong> {{ $order->nim }}</p>
                <p><strong>Perkiraan total:</strong> {{ $togaProduct->estimatedTotal((int) $order->quantity) }}</p>
            </div>

            <p>Tidak perlu melakukan pembayaran ulang atau mengunggah bukti pembayaran kembali.</p>
            <p>Silakan menghubungi Tim Dharma Wanita Persatuan untuk informasi/tahapan selanjutnya.</p>

            <div class="wisuda-contact-box" style="margin-top:1rem;">
                <strong>Kontak Sekretariat DWP:</strong>
                <p style="margin:0.35rem 0;">{{ $config['contact_primary_name'] }} ({{ $config['contact_phone_primary'] }})</p>
                <p style="margin:0.35rem 0;">{{ $config['contact_secondary_name'] }} ({{ $config['contact_phone_secondary'] }})</p>
                @include('partials.wisuda-contact-hours')
                <div class="wisuda-hero-actions">
                    <a href="{{ $config['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-green">Hubungi {{ $config['contact_primary_name'] }}</a>
                    <a href="{{ $config['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-blue">Hubungi {{ $config['contact_secondary_name'] }}</a>
                </div>
            </div>

            <div class="wisuda-hero-actions" style="margin-top:1rem;">
                <a href="{{ route('student.dashboard') }}" class="btn-sm btn-gray">Kembali ke Dashboard</a>
            </div>
        </div>
    </div>
</section>
@endsection
