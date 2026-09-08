@extends('layouts.admin')

@section('title', 'Dashboard Admin DWP')

@section('content')
<h1>Dashboard Admin DWP</h1>

<div class="stats-grid" style="margin:1.5rem 0;">
    <div class="stat-box">
        <h4>Kategori Katalog</h4>
        <div class="value">{{ $catalogStats['categories'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Produk Katalog</h4>
        <div class="value">{{ $catalogStats['products'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Produk Aktif</h4>
        <div class="value">{{ $catalogStats['active_products'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Pesanan Toga</h4>
        <div class="value">{{ $wisudaStats['total'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Bukti Pembayaran</h4>
        <div class="value">{{ $wisudaStats['uploaded'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Pembayaran Terverifikasi</h4>
        <div class="value">{{ $wisudaStats['verified'] }}</div>
    </div>
</div>

<div class="admin-card" style="margin-bottom:1rem;">
    <div style="display:flex;justify-content:space-between;gap:1rem;align-items:center;flex-wrap:wrap;">
        <h3 style="margin:0;">Manajemen Katalog DWP &amp; Rekap Pesanan</h3>
        <div style="display:flex;gap:0.5rem;flex-wrap:wrap;">
            @if(auth()->user()->canManageCatalog())
                <a href="{{ route('admin.catalog.products.index') }}" class="btn-sm btn-teal">Kelola Produk</a>
            @endif
            <a href="{{ route('admin.wisuda.orders.index') }}" class="btn-sm btn-blue">Rekap Pesanan Toga</a>
        </div>
    </div>
</div>

<h2 style="margin:1.5rem 0 0.75rem;font-size:1.15rem;">Ringkasan Operasional</h2>

<div class="stats-grid" style="margin:1.5rem 0;">
    <div class="stat-box">
        <h4>Total Pengajuan</h4>
        <div class="value">{{ $stats['total'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Diajukan</h4>
        <div class="value">{{ $stats['by_status']['Diajukan'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Diproses</h4>
        <div class="value">{{ $stats['by_status']['Diproses'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Selesai / File Tersedia</h4>
        <div class="value">{{ $stats['by_status']['Selesai / File Tersedia'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Terkirim Email</h4>
        <div class="value">{{ $stats['by_status']['Terkirim Email'] }}</div>
    </div>
    <div class="stat-box">
        <h4>Ditolak</h4>
        <div class="value">{{ $stats['by_status']['Ditolak'] }}</div>
    </div>
</div>

<div class="admin-card" style="margin-bottom:1rem;">
    <div style="display:flex;justify-content:space-between;gap:1rem;align-items:center;flex-wrap:wrap;">
        <h3 style="margin:0;">Antrean (Hari Ini)</h3>
        <a href="{{ route('admin.queues.index') }}" class="btn-sm btn-teal">Lihat Antrean Layanan</a>
    </div>
    <div class="stats-grid" style="margin-top:1rem;">
        <div class="stat-box">
            <h4>Antrean Hari Ini</h4>
            <div class="value">{{ $queueStats['total_today'] }}</div>
        </div>
        <div class="stat-box">
            <h4>Sedang Menunggu</h4>
            <div class="value">{{ $queueStats['waiting'] }}</div>
        </div>
        <div class="stat-box">
            <h4>Dipanggil / Dilayani</h4>
            <div class="value">{{ $queueStats['active'] }}</div>
        </div>
        <div class="stat-box">
            <h4>Selesai Dilayani</h4>
            <div class="value">{{ $queueStats['served'] }}</div>
        </div>
        <div class="stat-box">
            <h4>Dilewati</h4>
            <div class="value">{{ $queueStats['skipped'] }}</div>
        </div>
    </div>
</div>

<div class="admin-card" id="layanan-aktif">
    <h3>Daftar Layanan Aktif</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Layanan</th>
                <th>Total</th>
                <th>Tahun {{ now()->year }}</th>
            </tr>
        </thead>
        <tbody>
            @foreach($stats['active_services'] as $service)
                <tr>
                    <td>{{ $service->name }}</td>
                    <td>{{ $service->submissions_count }}</td>
                    <td>{{ $service->year_count }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
