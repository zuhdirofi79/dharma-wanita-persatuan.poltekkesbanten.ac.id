<?php

namespace Tests\Unit;

use App\Support\NimNormalizer;
use Tests\TestCase;

class NimNormalizerTest extends TestCase
{
    public function test_normalize_trims_uppercases_and_strips_separators(): void
    {
        $this->assertSame('P27901123097', NimNormalizer::normalize('P27901123097'));
        $this->assertSame('P27901123097', NimNormalizer::normalize('P27901123097 '));
        $this->assertSame('P27901123097', NimNormalizer::normalize(' p27901123097 '));
        $this->assertSame('P27901123097', NimNormalizer::normalize('P279-0112-3097'));
        $this->assertSame('TEST2026001', NimNormalizer::normalize('TEST-2026-001'));
        $this->assertSame('', NimNormalizer::normalize('   ---   '));
        $this->assertSame('', NimNormalizer::normalize(null));
    }
}
