<?php

namespace App\Support;

class NameNormalizer
{
    public static function normalize(?string $name): string
    {
        $value = strtoupper(trim((string) $name));
        $value = preg_replace('/[^A-Z0-9\s]/', ' ', $value) ?? '';
        $value = preg_replace('/\s+/', ' ', $value) ?? '';

        return trim($value);
    }

    public static function matches(?string $left, ?string $right): bool
    {
        $normalizedLeft = self::normalize($left);
        $normalizedRight = self::normalize($right);

        return $normalizedLeft !== '' && $normalizedLeft === $normalizedRight;
    }
}
