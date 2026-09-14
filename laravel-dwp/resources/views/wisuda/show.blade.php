@extends('layouts.app')

@section('title', 'Detail Pesanan Toga - '.$order->order_code)

@section('content')
@php
    $togaProduct = $togaProduct ?? \App\Models\DwpCatalogProduct::canonicalToga();
@endphp
<div class="page-title-bar">Detail Pesanan Toga Wisuda</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1;">
        <div class="form-card-header">Kode Pesanan: {{ $order->order_code }}</div>
        <div class="form-card-body" style="display:block;">
            @if(session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif
            @if(session('error'))
                <div class="alert alert-error">{{ session('error') }}</div>
            @endif

            <div class="wisuda-status-waiting">
                <strong>Status:</strong>
                @if($order->payment_status === 'unpaid')
                    Menunggu pembayaran ke rekening BRI BritAma Bisnis
                @else
                    {{ $order->paymentStatusLabel() }}
                @endif
            </div>

            @include('partials.dwp-payment-card')

            <div class="wisuda-order-summary">
                <p><strong>Nama:</strong> {{ $order->student_name }}</p>
                <p><strong>NIM:</strong> {{ $order->nim }}</p>
                <p><strong>Nama Orang Tua/Pengirim Transfer:</strong> {{ $order->transferSenderDisplay() }}</p>
                <p><strong>Program Studi:</strong> {{ $order->programDisplayName() }}</p>
                <p><strong>Tahun Lulus:</strong> {{ $order->graduation_year ?: '-' }}</p>
                <p><strong>Email:</strong> {{ $order->email }}</p>
                <p><strong>Nomor HP / WhatsApp:</strong> {{ $order->phone }}</p>
                <p><strong>Jenis Kelamin:</strong> {{ $order->genderLabel() }}</p>
                <p><strong>Ukuran Toga:</strong> {{ $order->toga_size }}</p>
                <p><strong>Catatan Ukuran:</strong> {{ $order->size_note ?: '-' }}</p>
                <p><strong>Jumlah:</strong> {{ $order->quantity }}</p>
                <p><strong>Harga satuan:</strong> {{ $togaProduct->displayPrice() }}</p>
                <p><strong>Perkiraan total:</strong> {{ $togaProduct->estimatedTotal((int) $order->quantity) }}</p>
                <p><strong>Status Pesanan:</strong> {{ $order->statusLabel() }}</p>
                <p><strong>Status Pembayaran:</strong> {{ $order->paymentStatusLabel() }}</p>
            </div>

            <div class="wisuda-hero-actions" style="margin-top:1.25rem;">
                <a href="{{ route('wisuda.payment', ['orderCode' => $order->order_code, 'token' => $order->public_token]) }}" class="btn-sm btn-teal">
                    Lanjut ke Upload Bukti Pembayaran
                </a>
                <a href="{{ $config['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-green">
                    Hubungi Dias Arliadini
                </a>
                <a href="{{ $config['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-blue">
                    Hubungi Putri Ratna Dewi
                </a>
                <a href="{{ route('wisuda.index') }}" class="btn-sm btn-gray">Kembali ke Wisuda</a>
            </div>
            @include('partials.wisuda-contact-hours')
        </div>
    </div>
</section>
@endsection
