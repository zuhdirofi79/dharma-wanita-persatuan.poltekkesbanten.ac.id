<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EnsureCanManageCatalog
{
    public function handle(Request $request, Closure $next): Response
    {
        if (! $request->user()?->canManageCatalog()) {
            abort(403, 'Anda tidak memiliki akses untuk mengelola katalog DWP.');
        }

        return $next($request);
    }
}
