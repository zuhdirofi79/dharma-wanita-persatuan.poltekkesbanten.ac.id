<?php

namespace App\Console\Commands;

use App\Services\StudentRosterImporter;
use Illuminate\Console\Command;
use RuntimeException;

class ImportStudentRosterCommand extends Command
{
    protected $signature = 'students:import-roster
        {path : Path file CSV roster resmi}
        {--dry-run : Hitung tanpa menulis data}
        {--update-names : Perbarui nama pada NIM yang sudah ada di student_roster}
        {--source=import : Nilai kolom source}';

    protected $description = 'Import daftar mahasiswa resmi ke student_roster dari CSV (nim,full_name) secara idempotent. Tidak membuat akun dan tidak membuat pesanan toga.';

    public function handle(StudentRosterImporter $importer): int
    {
        $path = (string) $this->argument('path');
        $dryRun = (bool) $this->option('dry-run');
        $updateNames = (bool) $this->option('update-names');
        $source = (string) $this->option('source');

        try {
            $stats = $importer->import($path, $dryRun, $updateNames, $source);
        } catch (RuntimeException $exception) {
            $this->error($exception->getMessage());

            return self::FAILURE;
        }

        if ($dryRun) {
            $this->comment('Mode dry-run: tidak ada baris yang ditulis ke student_roster.');
        }

        $this->info('Baris data dibaca: '.$stats['rows_read']);
        $this->info('NIM baru diimport: '.$stats['imported']);
        $this->info('NIM existing dilewati: '.$stats['skipped_existing']);
        $this->info('Nama diperbarui: '.$stats['updated']);
        $this->info('Baris invalid: '.$stats['invalid']);
        $this->info('Duplikat di file: '.$stats['duplicates_in_file']);

        foreach ($stats['anomalies'] as $anomaly) {
            $this->warn($anomaly);
        }

        $this->comment('Command ini tidak membuat akun users dan tidak membuat graduation_toga_orders.');

        return self::SUCCESS;
    }
}
