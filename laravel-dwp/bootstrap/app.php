<?php

use App\Http\Middleware\EnsureCanDeleteAdmins;
use App\Http\Middleware\EnsureCanManageAdmins;
use App\Http\Middleware\EnsureCanManageCatalog;
use App\Http\Middleware\EnsureMustChangePassword;
use App\Http\Middleware\EnsureRole;
use App\Http\Middleware\EnsureStudent;
use App\Http\Middleware\RedirectIfStudentAuthenticated;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Http\Request;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {
        $middleware->alias([
            'role' => EnsureRole::class,
            'must.change.password' => EnsureMustChangePassword::class,
            'catalog.manage' => EnsureCanManageCatalog::class,
            'admins.manage' => EnsureCanManageAdmins::class,
            'admins.delete' => EnsureCanDeleteAdmins::class,
            'student' => EnsureStudent::class,
            'guest.student' => RedirectIfStudentAuthenticated::class,
        ]);

        $middleware->redirectGuestsTo(function (Request $request) {
            if ($request->is('admin') || $request->is('admin/*')) {
                return route('admin.login');
            }

            return route('student.login');
        });
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        $exceptions->shouldRenderJsonWhen(
            fn (Request $request) => $request->is('api/*'),
        );
    })->create();
