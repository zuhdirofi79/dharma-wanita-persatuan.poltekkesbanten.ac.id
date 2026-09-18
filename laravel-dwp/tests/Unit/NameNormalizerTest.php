<?php

namespace Tests\Unit;

use App\Support\NameNormalizer;
use Tests\TestCase;

class NameNormalizerTest extends TestCase
{
    public function test_it_normalizes_spacing_case_and_punctuation(): void
    {
        $this->assertSame('SRI ARDINA MULYANI', NameNormalizer::normalize('Sri ardina mulyani'));
        $this->assertSame('SRI ARDINA MULYANI', NameNormalizer::normalize('  Sri  Ardina   Mulyani  '));
        $this->assertTrue(NameNormalizer::matches('Sri ardina mulyani', 'SRI ARDINA MULYANI'));
        $this->assertFalse(NameNormalizer::matches('Sri ardina mulyani', 'Mahasiswa Lain'));
        $this->assertFalse(NameNormalizer::matches('', ''));
    }
}
