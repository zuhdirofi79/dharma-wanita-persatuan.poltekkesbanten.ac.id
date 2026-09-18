@extends('layouts.app')

@section('title', 'Login Mahasiswa - Dharma Wanita Persatuan')

@section('content')
<div class="page-title-bar">Login Mahasiswa</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1; max-width: 520px; margin: 0 auto;">
        <div class="form-card-header">Masuk dengan NIM</div>
        <div class="form-card-body" style="display:block;">
            @if($errors->any())
                <div class="alert alert-error">
                    <ul style="margin:0;padding-left:1.1rem;">
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form method="POST" action="{{ route('student.login.submit') }}" id="studentLoginForm">
                @csrf
                <div class="form-group">
                    <label for="nim">NIM</label>
                    <input type="text" name="nim" id="nim" class="form-control" value="{{ old('nim') }}" maxlength="50" required autofocus>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control" required>
                </div>
                <div class="form-group">
                    <label style="font-weight:normal;">
                        <input type="checkbox" name="remember" value="1" @checked(old('remember'))>
                        Tetap masuk di perangkat ini
                    </label>
                </div>
                <button type="submit" class="btn-primary" style="width:100%;">Login</button>
            </form>

            <p style="margin-top:1rem;text-align:center;">
                Belum punya akun?
                <a href="{{ route('student.register') }}">Daftar mahasiswa</a>
            </p>
        </div>
    </div>
</section>
@endsection
