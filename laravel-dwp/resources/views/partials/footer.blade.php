@php
    $dwp = $dwp ?? config('dwp');
@endphp
<footer class="dwp-footer">
    <div class="container dwp-footer-grid">
        <div class="dwp-footer-brand">
            <img src="{{ asset('src/img/logo-dwp.jpeg') }}" alt="Logo Dharma Wanita Persatuan Poltekkes Kemenkes Banten" class="dwp-footer-logo site-logo">
            <p class="dwp-footer-title">Dharma Wanita Persatuan</p>
            <p class="dwp-footer-sub">Poltekkes Kemenkes Banten</p>
        </div>

        <div>
            <h3 class="dwp-footer-heading">Menu</h3>
            <ul class="dwp-footer-menu">
                <li><a href="{{ route('beranda') }}">Beranda</a></li>
                <li><a href="{{ route('profile') }}">Profile</a></li>
                <li><a href="{{ route('informasi') }}">Informasi</a></li>
                <li><a href="{{ route('media') }}">Media</a></li>
                <li><a href="{{ route('layanan') }}">Layanan</a></li>
                <li><a href="{{ route('wisuda.index') }}">Wisuda</a></li>
                <li><a href="{{ route('kontak') }}">Kontak</a></li>
            </ul>
        </div>

        <div>
            <h3 class="dwp-footer-heading">Kontak</h3>
            <ul class="dwp-footer-contact">
                <li>Poltekkes Kemenkes Banten, Jl. Syech Nawawi Al Bantani No.12, Cipocok Jaya, Kota Serang</li>
                <li><a href="mailto:humas@poltekkesbanten.ac.id">humas@poltekkesbanten.ac.id</a></li>
                <li>Kontak Sekretariat DWP:</li>
                <li>Dias Arliadini (<a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_primary'] }}</a>)</li>
                <li>Putri Ratna Dewi (<a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer">{{ $dwp['contact_phone_secondary'] }}</a>)</li>
            </ul>
        </div>
    </div>
    <div class="dwp-footer-copy">
        <p>© {{ date('Y') }} Dharma Wanita Persatuan Poltekkes Kemenkes Banten. Seluruh Hak Cipta Dilindungi.</p>
        <p><a href="{{ route('admin.login') }}">Login Admin</a></p>
    </div>
</footer>
