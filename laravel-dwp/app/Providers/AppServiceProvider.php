<?php

namespace App\Providers;

use App\Models\ServiceType;
use App\Support\AppTimezone;
use Carbon\Carbon;
use Carbon\CarbonImmutable;
use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $helpers = app_path('helpers.php');

        if (is_file($helpers)) {
            require_once $helpers;
        }
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Carbon::setLocale((string) config('app.locale', 'id'));
        CarbonImmutable::setLocale((string) config('app.locale', 'id'));

        Carbon::macro('inDisplayTimezone', function () {
            return $this->copy()->timezone(AppTimezone::name());
        });
        CarbonImmutable::macro('inDisplayTimezone', function () {
            return $this->copy()->timezone(AppTimezone::name());
        });

        Blade::directive('wib', function (string $expression) {
            return "<?php echo \\App\\Support\\AppTimezone::format($expression); ?>";
        });

        Paginator::defaultView('pagination.simple');
        Paginator::defaultSimpleView('pagination.simple');

        RateLimiter::for('queue-take', function (Request $request) {
            return Limit::perSecond(1, 30)
                ->by($request->ip())
                ->response(function () {
                    return redirect()
                        ->back()
                        ->withInput()
                        ->with('error', 'Mohon tunggu beberapa saat sebelum mengambil nomor antrean lagi.');
                });
        });

        View::composer(['layouts.app', 'partials.navbar', 'partials.footer'], function ($view) {
            $navServices = collect();

            if (Schema::hasTable('service_types')) {
                $navServices = ServiceType::active()->orderBy('sort_order')->orderBy('id')->get();
            }

            $view->with('navServices', $navServices);
            $view->with('dwp', config('dwp'));
        });
    }
}
