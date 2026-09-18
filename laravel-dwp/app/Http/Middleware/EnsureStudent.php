<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class EnsureStudent
{
    public function handle(Request $request, Closure $next): Response
    {
        $user = $request->user();

        if (! $user) {
            return redirect()->route('student.login');
        }

        if (! $user->is_active) {
            Auth::logout();
            $request->session()->invalidate();
            $request->session()->regenerateToken();

            return redirect()->route('student.login')
                ->with('error', 'Akun mahasiswa dinonaktifkan. Hubungi Tim Sekretariat DWP Poltekkes Kemenkes Banten.');
        }

        if ($user->isStaff()) {
            return redirect()->route('admin.dashboard');
        }

        if (! $user->isStudent()) {
            abort(403, 'Halaman ini hanya untuk mahasiswa.');
        }

        return $next($request);
    }
}
