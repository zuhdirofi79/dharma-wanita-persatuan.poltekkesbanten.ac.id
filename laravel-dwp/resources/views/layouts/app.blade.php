<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Dharma Wanita Persatuan Poltekkes Kemenkes Banten')</title>
    <link rel="icon" href="{{ asset('src/img/logo-dwp.jpeg') }}" type="image/jpeg">
    <link rel="apple-touch-icon" href="{{ asset('src/img/logo-dwp.jpeg') }}">
    <link rel="stylesheet" href="{{ env('CSS_URL', asset('css/akademik.css')) }}">
    <link rel="stylesheet" href="{{ asset('css/navbar-fix.css') }}?v=20260908-dwp4">
    <link rel="stylesheet" href="{{ asset('css/dwp.css') }}?v=20260908-dwp4">
    @stack('styles')
</head>
<body class="dwp-body">
    @include('partials.navbar')

    @if(session('success'))
        <div class="container" style="padding-top:1rem;">
            <div class="alert alert-success">{{ session('success') }}</div>
        </div>
    @endif
    @if(session('warning'))
        <div class="container" style="padding-top:1rem;">
            <div class="alert alert-error">{{ session('warning') }}</div>
        </div>
    @endif
    @if(session('error'))
        <div class="container" style="padding-top:1rem;">
            <div class="alert alert-error">{{ session('error') }}</div>
        </div>
    @endif

    <main class="dwp-main">
        @yield('content')
    </main>

    @include('partials.footer')

    <button type="button" class="back-to-top" id="backToTop" aria-label="Kembali ke atas">↑</button>

    <script>
        const backToTop = document.getElementById('backToTop');
        window.addEventListener('scroll', () => {
            backToTop.classList.toggle('show', window.scrollY > 300);
        });
        backToTop.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));

        const navToggle = document.getElementById('dwpNavToggle');
        const siteNav = document.getElementById('dwpSiteNav');
        if (navToggle && siteNav) {
            navToggle.addEventListener('click', () => {
                const open = siteNav.classList.toggle('is-open');
                navToggle.setAttribute('aria-expanded', open ? 'true' : 'false');
            });
        }
    </script>
    @stack('scripts')
</body>
</html>
