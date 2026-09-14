<?php

namespace App\Support;

use Carbon\Carbon;
use Carbon\CarbonInterface;
use DateTimeInterface;
use Illuminate\Database\Eloquent\Builder;

class AppTimezone
{
    public static function name(): string
    {
        return (string) config('app.display_timezone', 'Asia/Jakarta');
    }

    public static function now(): Carbon
    {
        return Carbon::now(self::name());
    }

    public static function today(): Carbon
    {
        return self::now()->startOfDay();
    }

    public static function utcOffset(): string
    {
        return self::now()->format('P');
    }

    public static function sqliteShiftModifier(): string
    {
        $hours = (int) round(self::now()->utcOffset() / 3600);

        return sprintf('%+d hours', $hours);
    }

    public static function format(
        mixed $value,
        string $format = 'd/m/Y H:i',
        bool $withSuffix = true,
        bool $translated = false,
    ): string {
        $date = self::asCarbon($value);

        if (! $date) {
            return '-';
        }

        $local = $date->copy()->timezone(self::name());
        $formatted = $translated
            ? $local->translatedFormat($format)
            : $local->format($format);

        return $withSuffix ? $formatted.' WIB' : $formatted;
    }

    public static function parseDateStart(string $date): Carbon
    {
        return Carbon::parse($date, self::name())->startOfDay();
    }

    public static function parseDateEnd(string $date): Carbon
    {
        return Carbon::parse($date, self::name())->endOfDay();
    }

    /**
     * Convert a local (WIB) calendar date range into UTC strings for querying
     * timezone-naive UTC datetime columns.
     *
     * @return array{0: ?string, 1: ?string}
     */
    public static function utcDateTimeRange(?string $fromDate, ?string $toDate): array
    {
        $from = filled($fromDate)
            ? self::parseDateStart($fromDate)->utc()->format('Y-m-d H:i:s')
            : null;
        $to = filled($toDate)
            ? self::parseDateEnd($toDate)->utc()->format('Y-m-d H:i:s')
            : null;

        return [$from, $to];
    }

    public static function applyLocalDateFilter(
        Builder $query,
        string $column,
        ?string $fromDate,
        ?string $toDate,
    ): Builder {
        [$from, $to] = self::utcDateTimeRange($fromDate, $toDate);

        if ($from) {
            $query->where($column, '>=', $from);
        }

        if ($to) {
            $query->where($column, '<=', $to);
        }

        return $query;
    }

    /**
     * @return array{0: ?string, 1: ?string}
     */
    public static function periodUtcRange(string $period): array
    {
        $now = self::now();

        [$start, $end] = match ($period) {
            'today' => [$now->copy()->startOfDay(), $now->copy()->endOfDay()],
            'week' => [
                $now->copy()->startOfWeek(Carbon::MONDAY)->startOfDay(),
                $now->copy()->endOfWeek(Carbon::SUNDAY)->endOfDay(),
            ],
            'month' => [$now->copy()->startOfMonth(), $now->copy()->endOfMonth()],
            'year' => [$now->copy()->startOfYear(), $now->copy()->endOfYear()],
            default => [null, null],
        };

        return [
            $start?->copy()->utc()->format('Y-m-d H:i:s'),
            $end?->copy()->utc()->format('Y-m-d H:i:s'),
        ];
    }

    public static function applyLocalPeriodFilter(Builder $query, string $column, string $period): Builder
    {
        [$from, $to] = self::periodUtcRange($period);

        if ($from && $to) {
            $query->where($column, '>=', $from)->where($column, '<=', $to);
        }

        return $query;
    }

    /**
     * @return array{0: string, 1: string}
     */
    public static function yearUtcRange(?int $year = null): array
    {
        $year ??= self::now()->year;
        $start = Carbon::create($year, 1, 1, 0, 0, 0, self::name())->startOfDay()->utc();
        $end = Carbon::create($year, 12, 31, 23, 59, 59, self::name())->endOfDay()->utc();

        return [
            $start->format('Y-m-d H:i:s'),
            $end->format('Y-m-d H:i:s'),
        ];
    }

    public static function asCarbon(mixed $value): ?Carbon
    {
        if ($value === null || $value === '') {
            return null;
        }

        if ($value instanceof Carbon) {
            return $value;
        }

        if ($value instanceof CarbonInterface || $value instanceof DateTimeInterface) {
            return Carbon::instance($value);
        }

        return Carbon::parse((string) $value, 'UTC');
    }
}
