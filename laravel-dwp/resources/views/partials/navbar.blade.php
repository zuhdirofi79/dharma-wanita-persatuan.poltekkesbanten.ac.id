@php
    $dwp = $dwp ?? config('dwp');
@endphp
<header class="site-header dwp-header">
    <div class="container site-header-inner dwp-header-inner">
        <a href="{{ route('beranda') }}" class="dwp-brand" aria-label="Beranda Dharma Wanita Persatuan Poltekkes Kemenkes Banten">
            <img src="{{ asset('src/img/logo.png') }}" alt="Logo Poltekkes Kemenkes Banten" class="dwp-brand-logo">
            <span class="dwp-brand-copy">
                <span class="dwp-brand-title">Dharma Wanita Persatuan</span>
                <span class="dwp-brand-subtitle">Poltekkes Kemenkes Banten</span>
            </span>
        </a>

        <button type="button" class="dwp-nav-toggle" id="dwpNavToggle" aria-controls="dwpSiteNav" aria-expanded="false" aria-label="Buka menu">
            Menu
        </button>

        <nav class="site-nav dwp-nav" id="dwpSiteNav">
            <a href="{{ route('beranda') }}" class="site-nav-link {{ request()->routeIs('home', 'beranda', 'katalog') ? 'active' : '' }}">Beranda</a>
            <a href="{{ route('profile') }}" class="site-nav-link {{ request()->routeIs('profile') ? 'active' : '' }}">Profile</a>
            <a href="{{ route('informasi') }}" class="site-nav-link {{ request()->routeIs('informasi') ? 'active' : '' }}">Informasi</a>
            <a href="{{ route('media') }}" class="site-nav-link {{ request()->routeIs('media') ? 'active' : '' }}">Media</a>
            <div class="site-nav-dropdown">
                <a href="{{ route('layanan') }}" class="site-nav-link {{ request()->routeIs('layanan') ? 'active' : '' }}">Layanan</a>
            </div>
            <a href="{{ route('wisuda.index') }}" class="site-nav-link {{ request()->routeIs('wisuda.*') ? 'active' : '' }}">Wisuda</a>
            <a href="{{ route('kontak') }}" class="site-nav-link {{ request()->routeIs('kontak') ? 'active' : '' }}">Kontak</a>
            <a href="{{ route('admin.login') }}" class="site-admin-login">Login Admin</a>
        </nav>
    </div>
</header>
