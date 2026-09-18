<?php

namespace App\Console\Commands;

use App\Services\StudentAccountProvisioner;
use Illuminate\Console\Command;

class ProvisionStudentAccountsCommand extends Command
{
    protected $signature = 'students:provision-accounts {--dry-run : Hitung tanpa menulis data}';

    protected $description = 'Buat akun mahasiswa dari NIM pemesanan toga existing secara idempotent, tanpa mereset password akun yang sudah ada.';

    public function handle(StudentAccountProvisioner $provisioner): int
    {
        $dryRun = (bool) $this->option('dry-run');
        $stats = $provisioner->provision($dryRun);

        if ($dryRun) {
            $this->comment('Mode dry-run: tidak ada akun yang ditulis.');
        }

        $this->info('Mahasiswa ditemukan: '.$stats['students_found']);
        $this->info('Akun dibuat: '.$stats['accounts_created']);
        $this->info('Akun existing: '.$stats['accounts_existing']);
        $this->info('NIM invalid: '.$stats['nim_invalid']);
        $this->info('NIM dengan lebih dari satu order: '.$stats['duplicate_nim']);
        $this->info('Order berhasil terhubung: '.$stats['orders_linked']);
        $this->info('Data bermasalah: '.count($stats['anomalies']));

        foreach ($stats['anomalies'] as $anomaly) {
            $this->warn($anomaly);
        }

        return self::SUCCESS;
    }
}
