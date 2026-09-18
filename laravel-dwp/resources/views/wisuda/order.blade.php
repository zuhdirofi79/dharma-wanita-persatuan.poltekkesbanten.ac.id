@extends('layouts.app')

@section('title', 'Pesan Toga Wisuda - Poltekkes Kemenkes Banten')

@push('styles')
<link rel="stylesheet" href="{{ asset('css/wisuda.css') }}?v=20260914-nim1">
@endpush

@section('content')
@php
    $togaProduct = $togaProduct ?? \App\Models\DwpCatalogProduct::canonicalToga();
@endphp
<div class="page-title-bar">Pemesanan Toga Wisuda</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1;">
        <div class="form-card-header">Form Pemesanan Paket Toga Wisuda Mahasiswa</div>
        <div class="form-card-body" style="grid-template-columns: 1fr 1.4fr;">
            <div class="form-sidebar">
                <h3>Wisuda {{ $config['event_year'] }}</h3>
                <p>Pelaksanaan: <strong>{{ $config['event_date'] }}</strong></p>
                <p>Lokasi: <strong>{{ $config['event_location'] }}</strong></p>
                <p>{{ $config['order_deadline_note'] }}</p>
                <p>Silakan lengkapi data pemesan toga dengan benar. Setelah pengajuan berhasil, Anda akan mendapatkan kode pesanan dan dapat melakukan upload bukti pembayaran untuk diverifikasi oleh Tim Sekretariat DWP Poltekkes Kemenkes Banten.</p>
                <p><strong>Harga paket:</strong> {{ $togaProduct->displayPrice() }}</p>
                <div class="wisuda-order-flow" aria-label="Alur Pemesanan Toga">
                    <p class="wisuda-order-flow-title">Alur Pemesanan Toga</p>
                    <ol class="wisuda-order-flow-steps">
                        <li>Isi Data Pemesan</li>
                        <li>Lakukan Pembayaran</li>
                        <li>Upload Bukti Pembayaran</li>
                        <li>Konfirmasi Tim Sekretariat DWP</li>
                    </ol>
                </div>
                @include('partials.dwp-payment-card')
                <div class="wisuda-contact-box" style="margin-top:1rem;">
                    <strong>Kontak Sekretariat DWP:</strong>
                    <p style="margin:0.35rem 0;">Dias Arliadini ({{ $config['contact_phone_primary'] }})</p>
                    <p style="margin:0.35rem 0;">Putri Ratna Dewi ({{ $config['contact_phone_secondary'] }})</p>
                    @include('partials.wisuda-contact-hours')
                    <div class="wisuda-hero-actions">
                        <a href="{{ $config['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-green">Hubungi Dias Arliadini</a>
                        <a href="{{ $config['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer" class="btn-sm btn-blue">Hubungi Putri Ratna Dewi</a>
                    </div>
                </div>
                <a href="{{ route('wisuda.index') }}" class="btn-sm btn-gray" style="margin-top:0.75rem;display:inline-block;">Kembali ke Halaman Wisuda</a>
            </div>

            <div class="form-main">
                @if($errors->any())
                    <div class="alert alert-error">
                        <ul style="margin:0;padding-left:1.1rem;">
                            @foreach($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form method="POST" action="{{ route('wisuda.order.store') }}" id="wisudaStandaloneOrderForm">
                    @csrf
                    <div class="form-group">
                        <label for="student_name">Nama Lengkap <span style="color:#dc2626;">*</span></label>
                        <input type="text" name="student_name" id="student_name" class="form-control" value="{{ old('student_name', auth()->user()->name) }}" required readonly>
                    </div>
                    <div class="form-group">
                        <label for="nim">NIM <span style="color:#dc2626;">*</span></label>
                        <input type="text" name="nim" id="nim" class="form-control" value="{{ old('nim', auth()->user()->nim) }}" maxlength="50" required readonly>
                        <small class="wisuda-field-help">Setiap NIM hanya dapat melakukan satu kali pemesanan toga. NIM diambil dari akun login Anda.</small>
                        @error('nim')
                            <div class="wisuda-field-error">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="transfer_sender_name">Nama Orang Tua/Pengirim Transfer <span style="color:#dc2626;">*</span></label>
                        <input
                            type="text"
                            name="transfer_sender_name"
                            id="transfer_sender_name"
                            class="form-control"
                            value="{{ old('transfer_sender_name') }}"
                            maxlength="150"
                            autocapitalize="words"
                            required
                        >
                        <small class="wisuda-field-help">Wajib diisi sesuai nama pemilik rekening atau nama pengirim yang akan tampil pada bukti transfer agar Tim Sekretariat dapat melakukan verifikasi pembayaran dengan lebih mudah.</small>
                        @error('transfer_sender_name')
                            <div class="wisuda-field-error">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="study_program_id">Program Studi <span style="color:#dc2626;">*</span></label>
                        <select name="study_program_id" id="study_program_id" class="form-control" required>
                            <option value="">-- Pilih Program Studi --</option>
                            @foreach($studyPrograms as $program)
                                @php
                                    $nameLower = strtolower($program->name);
                                    $hintMatched = filled($prodiHint ?? null) && (
                                        str_contains($nameLower, $prodiHint)
                                        || ($prodiHint === 'tlm' && (str_contains($nameLower, 'laboratorium') || str_contains($nameLower, 'tlm')))
                                    );
                                    $isSelected = old('study_program_id') == $program->id || (! old('study_program_id') && $hintMatched);
                                @endphp
                                <option value="{{ $program->id }}" @selected($isSelected)>{{ $program->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="graduation_year">Tahun Lulus <span style="color:#dc2626;">*</span></label>
                        <input
                            type="number"
                            name="graduation_year"
                            id="graduation_year"
                            class="form-control"
                            value="{{ old('graduation_year') }}"
                            placeholder="Contoh: 2026"
                            min="2000"
                            max="2099"
                            required
                        >
                        @error('graduation_year')
                            <div style="color:#dc2626;font-size:0.875rem;margin-top:0.25rem;">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="phone">Nomor HP / WhatsApp <span style="color:#dc2626;">*</span></label>
                        <input type="text" name="phone" id="phone" class="form-control" value="{{ old('phone') }}" placeholder="08xxxxxxxxxx" required>
                    </div>
                    <div class="form-group">
                        <label for="gender">Jenis Kelamin <span style="color:#dc2626;">*</span></label>
                        <select name="gender" id="gender" class="form-control" required>
                            <option value="">-- Pilih --</option>
                            <option value="Laki-laki" @selected(old('gender') === 'Laki-laki')>Laki-laki</option>
                            <option value="Perempuan" @selected(old('gender') === 'Perempuan')>Perempuan</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">Email <span style="color:#dc2626;">*</span></label>
                        <input type="email" name="email" id="email" class="form-control" value="{{ old('email') }}" required>
                    </div>
                    <div class="form-group">
                        <label for="toga_size_display">Ukuran Toga</label>
                        <input type="text" id="toga_size_display" class="form-control" value="All Size" readonly>
                        <input type="hidden" name="toga_size" value="All Size">
                    </div>
                    <div class="form-group">
                        <label for="size_note">Catatan Tambahan</label>
                        <textarea name="size_note" id="size_note" class="form-control" rows="3" placeholder="Opsional: catatan tambahan untuk Tim Sekretariat DWP Poltekkes Kemenkes Banten.">{{ old('size_note') }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="quantity">Jumlah <span style="color:#dc2626;">*</span></label>
                        <input type="number" name="quantity" id="quantity" class="form-control" value="{{ old('quantity', 1) }}" min="1" max="20" required>
                    </div>
                    @include('partials.dwp-payment-card')
                    <p class="dwp-pay-hint">Pastikan nama pemesan sesuai dengan data yang diisi agar verifikasi lebih mudah.</p>
                    <div class="form-group">
                        <label style="display:flex;align-items:flex-start;gap:0.5rem;font-weight:500;">
                            <input type="checkbox" name="confirm" value="1" {{ old('confirm') ? 'checked' : '' }} style="margin-top:0.25rem;" required>
                            <span>Saya menyatakan data pemesanan toga wisuda yang diisi sudah benar.</span>
                        </label>
                    </div>
                    <button type="submit" class="btn-primary" style="width:100%;padding:1rem;font-size:1.05rem;">Kirim Pemesanan</button>
                </form>
                <script>
                (function () {
                    var form = document.getElementById('wisudaStandaloneOrderForm');
                    if (!form) return;
                    form.addEventListener('submit', function () {
                        var btn = form.querySelector('button[type="submit"]');
                        if (btn) btn.disabled = true;
                    });
                })();
                </script>
            </div>
        </div>
    </div>
</section>
@endsection
