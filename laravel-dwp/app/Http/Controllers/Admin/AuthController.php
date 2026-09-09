<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\LoginRequest;
use App\Models\User;
use App\Services\AdminActivityLogger;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function __construct(private AdminActivityLogger $activityLogger) {}

    public function showLogin()
    {
        if (Auth::check() && Auth::user()->isStaff() && Auth::user()->is_active) {
            return redirect()->route('admin.dashboard');
        }

        return view('admin.auth.login');
    }

    public function login(LoginRequest $request)
    {
        $email = strtolower(trim((string) $request->input('email')));
        $password = (string) $request->input('password');

        $user = User::query()
            ->whereRaw('LOWER(email) = ?', [$email])
            ->first();

        if (! $user || ! Hash::check($password, (string) $user->password)) {
            return back()
                ->withInput($request->only('email'))
                ->with('error', 'Email atau password salah.');
        }

        if (! $user->isStaff()) {
            return back()
                ->withInput($request->only('email'))
                ->with('error', 'Akun tidak memiliki akses admin.');
        }

        if (! $user->is_active) {
            return back()
                ->withInput($request->only('email'))
                ->with('error', 'Akun admin dinonaktifkan. Hubungi superadmin.');
        }

        Auth::login($user, $request->boolean('remember'));
        $request->session()->regenerate();

        $this->activityLogger->log('login', 'Login admin berhasil.', $user);

        if ($user->must_change_password) {
            return redirect()->route('admin.change-password.show')
                ->with('warning', 'Password masih menggunakan password sementara. Segera ubah password.');
        }

        return redirect()->intended(route('admin.dashboard'));
    }

    public function logout(Request $request)
    {
        if ($request->user()) {
            $this->activityLogger->log('logout', 'Logout admin.', $request->user());
        }

        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('admin.login');
    }
}
