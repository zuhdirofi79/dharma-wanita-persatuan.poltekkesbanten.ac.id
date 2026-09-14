<?php

namespace App\Support;

class NimNormalizer
{
    public static function normalize(?string $nim): string
    {
        $value = strtoupper(trim((string) $nim));
        $value = preg_replace('/[^A-Z0-9]/', '', $value) ?? '';

        return $value;
    }
}
