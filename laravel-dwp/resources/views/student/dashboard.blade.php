@extends('layouts.app')

@section('title', 'Dashboard Mahasiswa - Dharma Wanita Persatuan')

@section('content')
@php
    $togaProduct = $togaProduct ?? \App\Models\DwpCatalogProduct::canonicalToga();
@endphp
<div class="page-title-bar">Dashboard Mahasiswa</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1;">
        <div class="form-card-header">Selamat datang, {{ $student->name }}</div>
        <div class="form-card-body" style="display:block;">
            <p><strong>NIM:</strong> {{ $student->nim }}</p>

            <h3 style="margin-top:1.25rem;">Status Pesanan Toga</h3>

            @if($order)
                <div class="wisuda-order-summary">
                    <p><strong>Order:</strong> {{ $order->order_code }}</p>
                    <p><strong>Status pesanan:</strong> {{ $order->statusLabel() }}</p>
                    <p><strong>Status pembayaran:</strong>
                        @if($order->isPaymentVerified())
                            Pembayaran telah diverifikasi admin.
                        @elseif($order->isAwaitingVerification())
                            Bukti pembayaran sudah diupload. Menunggu verifikasi admin.
                        @elseif($order->payment_status === 'rejected')
                            Pembayaran ditolak. Silakan unggah ulang bukti transfer.
                        @else
                            Menunggu pembayaran.
                        @endif
                    </p>
                    <p><strong>Harga satuan:</strong> {{ $togaProduct->displayPrice() }}</p>
                    <p><strong>Perkiraan total:</strong> {{ $togaProduct->estimatedTotal((int) $order->quantity) }}</p>
                </div>

                <div class="wisuda-hero-actions" style="margin-top:1rem;">
                    <a href="{{ $continueUrl }}" class="btn-sm btn-teal">Lihat Pesanan</a>
                </div>
            @else
                <p>Anda belum memiliki pesanan toga.</p>
                <div class="wisuda-hero-actions" style="margin-top:1rem;">
                    <a href="{{ route('wisuda.order.create') }}" class="btn-sm btn-teal">Pesan Toga</a>
                </div>
            @endif
        </div>
    </div>
</section>
@endsection
