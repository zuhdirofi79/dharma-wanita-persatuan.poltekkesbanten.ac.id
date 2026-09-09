<?php

namespace App\Console\Commands;

use App\Support\AdminAccountSync;
use RuntimeException;
use Illuminate\Console\Command;

class SyncAdminUsersCommand extends Command
{
    protected $signature = 'dwp:sync-admin-users {--force : Reset password akun dari .env meskipun user sudah ada}';

    protected $description = 'Sinkronkan akun admin/superadmin dari .env ke tabel users tanpa menampilkan password';

    public function handle(AdminAccountSync $sync): int
    {
        $force = (bool) $this->option('force');

        try {
            $results = $sync->sync($force);
        } catch (RuntimeException $e) {
            $this->error($e->getMessage());

            return self::FAILURE;
        }

        foreach ($results as $result) {
            $this->info(sprintf(
                'Synced: %s as %s (%s)',
                $result['email'],
                $result['role'],
                $result['action']
            ));
        }

        if (! $force) {
            $this->comment('Password user lama tidak diubah. Jalankan dengan --force untuk mereset password sesuai .env.');
        }

        $this->info('Total akun unik: '.count($results));

        return self::SUCCESS;
    }
}
