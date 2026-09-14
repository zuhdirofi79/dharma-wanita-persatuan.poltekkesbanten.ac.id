<?php

use App\Support\AppTimezone;
use Carbon\Carbon;

if (! function_exists('format_wib')) {
    function format_wib(
        mixed $value,
        string $format = 'd/m/Y H:i',
        bool $withSuffix = true,
        bool $translated = false,
    ): string {
        return AppTimezone::format($value, $format, $withSuffix, $translated);
    }
}

if (! function_exists('app_now')) {
    function app_now(): Carbon
    {
        return AppTimezone::now();
    }
}
