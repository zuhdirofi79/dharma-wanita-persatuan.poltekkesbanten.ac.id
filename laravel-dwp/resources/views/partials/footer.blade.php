@php
    $dwp = $dwp ?? config('dwp');
@endphp
<footer class="dwp-footer">
    <div class="container dwp-footer-grid">
        <div class="dwp-footer-brand">
            <img src="{{ asset('src/img/logo.png') }}" alt="Logo Poltekkes Kemenkes Banten" class="dwp-footer-logo">
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
                <li>Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)</li>
                <li>
                    <a href="{{ $dwp['contact_wa_primary'] }}" target="_blank" rel="noopener noreferrer">+62 851-8777-8838</a>
                    atau
                    <a href="{{ $dwp['contact_wa_secondary'] }}" target="_blank" rel="noopener noreferrer">+62 877-4112-1505</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="dwp-footer-copy">
        <p>© {{ date('Y') }} Dharma Wanita Persatuan Poltekkes Kemenkes Banten. Seluruh Hak Cipta Dilindungi.</p>
        <p><a href="{{ route('admin.login') }}">Login Admin</a></p>
    </div>
</footer>
