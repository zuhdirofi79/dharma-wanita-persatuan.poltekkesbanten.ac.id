<?php

namespace App\Services;

use App\Support\AppTimezone;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class ReportFilterService
{
    public static function timezone(): string
    {
        return AppTimezone::name();
    }

    public function resolvePeriod(Request $request): array
    {
        $period = (string) $request->input('period', 'this_month');
        $now = AppTimezone::now();
        $startDate = $request->input('start_date', $request->input('date_from'));
        $endDate = $request->input('end_date', $request->input('date_to'));

        if ($period === 'custom' || ($startDate && $endDate && ! $request->filled('period'))) {
            $from = $startDate
                ? AppTimezone::parseDateStart($startDate)
                : $now->copy()->startOfDay();
            $to = $endDate
                ? AppTimezone::parseDateEnd($endDate)
                : $now->copy()->endOfDay();
            $period = 'custom';
        } else {
            [$from, $to] = match ($period) {
                'today' => [$now->copy()->startOfDay(), $now->copy()->endOfDay()],
                'yesterday' => [
                    $now->copy()->subDay()->startOfDay(),
                    $now->copy()->subDay()->endOfDay(),
                ],
                'this_week', 'week' => [
                    $now->copy()->startOfWeek(Carbon::MONDAY)->startOfDay(),
                    $now->copy()->endOfWeek(Carbon::SUNDAY)->endOfDay(),
                ],
                'this_year', 'year' => [
                    $now->copy()->startOfYear()->startOfDay(),
                    $now->copy()->endOfYear()->endOfDay(),
                ],
                'this_month', 'month' => [
                    $now->copy()->startOfMonth()->startOfDay(),
                    $now->copy()->endOfMonth()->endOfDay(),
                ],
                default => [
                    $now->copy()->startOfMonth()->startOfDay(),
                    $now->copy()->endOfMonth()->endOfDay(),
                ],
            };

            if ($period === 'week') {
                $period = 'this_week';
            } elseif ($period === 'month') {
                $period = 'this_month';
            } elseif ($period === 'year') {
                $period = 'this_year';
            }
        }

        if ($from->gt($to)) {
            [$from, $to] = [$to->copy()->startOfDay(), $from->copy()->endOfDay()];
        }

        return [
            'period' => $period,
            'start_date' => $from->toDateString(),
            'end_date' => $to->toDateString(),
            'date_from' => $from->toDateString(),
            'date_to' => $to->toDateString(),
            'from' => $from,
            'to' => $to,
        ];
    }

    public function periodLabel(array $period): string
    {
        $from = Carbon::parse($period['start_date'], AppTimezone::name())->format('d/m/Y');
        $to = Carbon::parse($period['end_date'], AppTimezone::name())->format('d/m/Y');

        return match ($period['period']) {
            'today' => 'Hari ini ('.$from.')',
            'yesterday' => 'Kemarin ('.$from.')',
            'this_week' => 'Minggu ini ('.$from.' - '.$to.')',
            'this_month' => 'Bulan ini ('.$from.' - '.$to.')',
            'this_year' => 'Tahun ini ('.$from.' - '.$to.')',
            default => $from.' - '.$to,
        };
    }

    public function applyDateFilter(Builder $query, Request $request, string $dateColumn = 'created_at'): Builder
    {
        $period = $this->resolvePeriod($request);

        return $query
            ->where($dateColumn, '>=', $period['from']->copy()->utc()->format('Y-m-d H:i:s'))
            ->where($dateColumn, '<=', $period['to']->copy()->utc()->format('Y-m-d H:i:s'));
    }

    public function periodOptions(): array
    {
        return [
            'today' => 'Hari ini',
            'yesterday' => 'Kemarin',
            'this_week' => 'Minggu ini',
            'this_month' => 'Bulan ini',
            'this_year' => 'Tahun ini',
            'custom' => 'Custom tanggal',
        ];
    }
}
