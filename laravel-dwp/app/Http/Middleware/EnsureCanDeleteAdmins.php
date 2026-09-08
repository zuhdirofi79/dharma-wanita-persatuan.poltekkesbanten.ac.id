<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EnsureCanDeleteAdmins
{
    public function handle(Request $request, Closure $next): Response
    {
        if (! $request->user()?->canDeleteAdmins()) {
            abort(403, 'Hanya superadmin utama yang dapat menghapus akun admin.');
        }

        return $next($request);
    }
}
