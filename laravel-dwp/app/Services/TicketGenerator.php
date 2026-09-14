<?php

namespace App\Services;

use App\Models\Submission;
use App\Support\AppTimezone;

class TicketGenerator
{
    public function generate(): string
    {
        $year = AppTimezone::now()->year;
        $prefix = "AKD-{$year}-";

        $last = Submission::query()
            ->where('ticket_number', 'like', $prefix.'%')
            ->orderByDesc('id')
            ->value('ticket_number');

        $sequence = 1;

        if ($last && preg_match('/AKD-\d{4}-(\d+)/', $last, $matches)) {
            $sequence = (int) $matches[1] + 1;
        }

        return $prefix.str_pad((string) $sequence, 6, '0', STR_PAD_LEFT);
    }

    public function generateToken(): string
    {
        return bin2hex(random_bytes(32));
    }
}
