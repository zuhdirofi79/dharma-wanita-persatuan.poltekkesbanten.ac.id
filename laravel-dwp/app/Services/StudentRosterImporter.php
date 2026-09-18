<?php

namespace App\Services;

use App\Models\StudentRoster;
use App\Support\NimNormalizer;
use Illuminate\Support\Facades\Schema;
use RuntimeException;

class StudentRosterImporter
{
    /**
     * @return array{
     *     rows_read: int,
     *     imported: int,
     *     skipped_existing: int,
     *     updated: int,
     *     invalid: int,
     *     duplicates_in_file: int,
     *     anomalies: list<string>
     * }
     */
    public function import(string $path, bool $dryRun = false, bool $updateNames = false, string $source = 'import'): array
    {
        if (! Schema::hasTable('student_roster')) {
            throw new RuntimeException('Tabel student_roster belum tersedia. Jalankan migrasi terlebih dahulu.');
        }

        if (! is_file($path) || ! is_readable($path)) {
            throw new RuntimeException('File roster tidak ditemukan atau tidak dapat dibaca: '.$path);
        }

        $handle = fopen($path, 'r');

        if ($handle === false) {
            throw new RuntimeException('File roster tidak dapat dibuka: '.$path);
        }

        $stats = [
            'rows_read' => 0,
            'imported' => 0,
            'skipped_existing' => 0,
            'updated' => 0,
            'invalid' => 0,
            'duplicates_in_file' => 0,
            'anomalies' => [],
        ];

        try {
            $header = fgetcsv($handle);

            if ($header === false || $header === [null] || $header === []) {
                throw new RuntimeException('File roster kosong. Gunakan header: nim,full_name');
            }

            $columns = $this->mapColumns($header);
            $seen = [];

            while (($row = fgetcsv($handle)) !== false) {
                if ($this->isEmptyRow($row)) {
                    continue;
                }

                $stats['rows_read']++;

                $nim = NimNormalizer::normalize($this->columnValue($row, $columns['nim'] ?? null));
                $name = trim((string) $this->columnValue($row, $columns['full_name'] ?? null));

                if ($nim === '') {
                    $stats['invalid']++;
                    $stats['anomalies'][] = 'Baris '.$stats['rows_read'].': NIM kosong atau tidak valid.';

                    continue;
                }

                if (isset($seen[$nim])) {
                    $stats['duplicates_in_file']++;
                    $stats['anomalies'][] = 'NIM '.$nim.' muncul lebih dari sekali di file. Baris terakhir yang valid dipakai.';
                }

                $seen[$nim] = $name === '' ? null : $name;
            }
        } finally {
            fclose($handle);
        }

        foreach ($seen as $nim => $name) {
            $existing = StudentRoster::query()->where('nim_normalized', $nim)->first();

            if ($existing === null) {
                if (! $dryRun) {
                    StudentRoster::query()->create([
                        'nim_normalized' => $nim,
                        'full_name' => $name,
                        'source' => $source,
                    ]);
                }

                $stats['imported']++;

                continue;
            }

            if ($updateNames && $name !== null && $existing->full_name !== $name) {
                if (! $dryRun) {
                    $existing->update([
                        'full_name' => $name,
                        'source' => $source,
                    ]);
                }

                $stats['updated']++;

                continue;
            }

            $stats['skipped_existing']++;
        }

        return $stats;
    }

    /**
     * @param  list<string|null>  $header
     * @return array{nim: int|null, full_name: int|null}
     */
    private function mapColumns(array $header): array
    {
        $columns = ['nim' => null, 'full_name' => null];

        foreach ($header as $index => $label) {
            $key = strtolower(trim((string) $label));
            $key = preg_replace('/^\xEF\xBB\xBF/', '', $key) ?? $key;

            if (in_array($key, ['nim', 'nim_normalized', 'nomor_induk'], true)) {
                $columns['nim'] = $index;
            }

            if (in_array($key, ['full_name', 'nama', 'name', 'nama_lengkap', 'nama mahasiswa'], true)) {
                $columns['full_name'] = $index;
            }
        }

        if ($columns['nim'] === null) {
            throw new RuntimeException('Kolom NIM tidak ditemukan. Gunakan header: nim,full_name');
        }

        return $columns;
    }

    /**
     * @param  list<string|null>  $row
     */
    private function columnValue(array $row, ?int $index): string
    {
        if ($index === null || ! array_key_exists($index, $row)) {
            return '';
        }

        return trim((string) $row[$index]);
    }

    /**
     * @param  list<string|null>  $row
     */
    private function isEmptyRow(array $row): bool
    {
        foreach ($row as $value) {
            if (trim((string) $value) !== '') {
                return false;
            }
        }

        return true;
    }
}
