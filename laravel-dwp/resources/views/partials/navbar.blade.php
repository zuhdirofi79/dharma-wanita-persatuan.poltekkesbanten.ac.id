@php
    $dwp = $dwp ?? config('dwp');
@endphp
<header class="site-header dwp-header">
    <div class="container site-header-inner dwp-header-inner">
        <a href="{{ route('beranda') }}" class="dwp-brand" aria-label="Beranda Dharma Wanita Persatuan Poltekkes Kemenkes Banten">
            <img src="{{ asset('src/img/logo-dwp.jpeg') }}" alt="Logo Dharma Wanita Persatuan Poltekkes Kemenkes Banten" class="dwp-brand-logo site-logo">
            <span class="dwp-brand-copy">
                <span class="dwp-brand-title">Dharma Wanita Persatuan</span>
                <span class="dwp-brand-subtitle">Poltekkes Kemenkes Banten</span>
            </span>
        </a>

        <button type="button" class="dwp-nav-toggle" id="dwpNavToggle" aria-controls="dwpSiteNav" aria-expanded="false" aria-label="Buka menu">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <nav class="site-nav dwp-nav" id="dwpSiteNav">
            <a href="{{ route('beranda') }}" class="site-nav-link {{ request()->routeIs('home', 'beranda', 'katalog', 'produk.show') ? 'active' : '' }}">Beranda</a>
            <a href="{{ route('profile') }}" class="site-nav-link {{ request()->routeIs('profile') ? 'active' : '' }}">Profile</a>
            <a href="{{ route('informasi') }}" class="site-nav-link {{ request()->routeIs('informasi') ? 'active' : '' }}">Informasi</a>
            <a href="{{ route('media') }}" class="site-nav-link {{ request()->routeIs('media') ? 'active' : '' }}">Media</a>
            <a href="{{ route('layanan') }}" class="site-nav-link {{ request()->routeIs('layanan') ? 'active' : '' }}">Layanan</a>
            <a href="{{ route('wisuda.index') }}" class="site-nav-link {{ request()->routeIs('wisuda.*') ? 'active' : '' }}">Wisuda</a>
            <a href="{{ route('kontak') }}" class="site-nav-link {{ request()->routeIs('kontak') ? 'active' : '' }}">Kontak</a>
            @auth
                @if(auth()->user()->isStudent())
                    <a href="{{ route('student.dashboard') }}" class="site-nav-link {{ request()->routeIs('student.dashboard') ? 'active' : '' }}">Dashboard</a>
                    <a href="{{ route('student.orders.show') }}" class="site-nav-link {{ request()->routeIs('student.orders.show', 'wisuda.payment', 'wisuda.payment.verified', 'wisuda.order.show') ? 'active' : '' }}">Pesanan Saya</a>
                    <form method="POST" action="{{ route('student.logout') }}" style="display:inline;">
                        @csrf
                        <button type="submit" class="site-admin-login" style="border:0;background:transparent;cursor:pointer;">Logout</button>
                    </form>
                @elseif(auth()->user()->isStaff())
                    <a href="{{ route('admin.dashboard') }}" class="site-admin-login">Dashboard Admin</a>
                @endif
            @else
                <a href="{{ route('student.login') }}" class="site-nav-link {{ request()->routeIs('student.login', 'student.register') ? 'active' : '' }}">Login Mahasiswa</a>
                <a href="{{ route('admin.login') }}" class="site-admin-login">Login Admin</a>
            @endauth
        </nav>
    </div>
</header>
