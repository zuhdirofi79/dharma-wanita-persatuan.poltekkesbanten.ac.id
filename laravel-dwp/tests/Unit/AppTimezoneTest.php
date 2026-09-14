<?php

namespace Tests\Unit;

use App\Support\AppTimezone;
use Carbon\Carbon;
use Tests\TestCase;

class AppTimezoneTest extends TestCase
{
    public function test_storage_timezone_remains_utc(): void
    {
        $this->assertSame('UTC', config('app.timezone'));
        $this->assertSame('Asia/Jakarta', AppTimezone::name());
    }

    public function test_utc_timestamp_is_presented_as_wib_without_adding_hours(): void
    {
        $utc = Carbon::parse('2026-09-14 07:41:00', 'UTC');

        $this->assertSame('14/09/2026 14:41 WIB', AppTimezone::format($utc));
        $this->assertSame('2026-09-14 07:41:00', $utc->format('Y-m-d H:i:s'));
    }

    public function test_helper_is_loaded_by_the_application_without_composer_files_autoload(): void
    {
        $this->assertTrue(function_exists('format_wib'));
        $this->assertSame(
            '14/09/2026 14:41 WIB',
            format_wib(Carbon::parse('2026-09-14 07:41:00', 'UTC'))
        );
    }

    public function test_local_date_filter_converts_wib_boundaries_to_utc(): void
    {
        [$from, $to] = AppTimezone::utcDateTimeRange('2026-09-14', '2026-09-14');

        $this->assertSame('2026-09-13 17:00:00', $from);
        $this->assertSame('2026-09-14 16:59:59', $to);
    }

    public function test_late_previous_day_wib_is_outside_next_local_day_filter(): void
    {
        [$from, $to] = AppTimezone::utcDateTimeRange('2026-09-14', '2026-09-14');
        $latePreviousDay = Carbon::parse('2026-09-13 16:59:59', 'UTC');
        $justAfterMidnight = Carbon::parse('2026-09-13 17:01:00', 'UTC');

        $this->assertTrue($latePreviousDay->lt(Carbon::parse($from, 'UTC')));
        $this->assertTrue($justAfterMidnight->betweenIncluded(
            Carbon::parse($from, 'UTC'),
            Carbon::parse($to, 'UTC'),
        ));
    }
}
