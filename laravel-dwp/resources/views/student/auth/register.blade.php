@extends('layouts.app')

@section('title', 'Registrasi Mahasiswa - Dharma Wanita Persatuan')

@section('content')
<div class="page-title-bar">Registrasi Mahasiswa</div>

<section class="container form-layout">
    <div class="form-card" style="grid-column: 1 / -1; max-width: 520px; margin: 0 auto;">
        <div class="form-card-header">Buat Akun Mahasiswa</div>
        <div class="form-card-body" style="display:block;">
            @if($errors->any())
                <div class="alert alert-error">
                    <ul style="margin:0;padding-left:1.1rem;">
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @if($errors->has('nim') && $errors->first('nim') === \App\Services\StudentRegistrationService::ALREADY_REGISTERED_MESSAGE)
                    <p style="margin-top:0.75rem;">
                        <a href="{{ route('student.login') }}" class="btn-primary" style="display:inline-block;">Login</a>
                    </p>
                @endif
            @endif

            <form method="POST" action="{{ route('student.register.submit') }}" id="studentRegisterForm">
                @csrf
                <div class="form-group">
                    <label for="nim">NIM <span style="color:#dc2626;">*</span></label>
                    <input type="text" name="nim" id="nim" class="form-control" value="{{ old('nim') }}" maxlength="50" required>
                </div>
                <div class="form-group">
                    <label for="name">Nama Lengkap <span style="color:#dc2626;">*</span></label>
                    <input type="text" name="name" id="name" class="form-control" value="{{ old('name') }}" maxlength="255" required>
                </div>
                <div class="form-group">
                    <label for="password">Password <span style="color:#dc2626;">*</span></label>
                    <input type="password" name="password" id="password" class="form-control" minlength="8" required>
                </div>
                <div class="form-group">
                    <label for="password_confirmation">Konfirmasi Password <span style="color:#dc2626;">*</span></label>
                    <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" minlength="8" required>
                </div>
                <button type="submit" class="btn-primary" style="width:100%;">Daftar</button>
            </form>

            <p style="margin-top:1rem;text-align:center;">
                Sudah punya akun?
                <a href="{{ route('student.login') }}">Login</a>
            </p>
        </div>
    </div>
</section>
@endsection
