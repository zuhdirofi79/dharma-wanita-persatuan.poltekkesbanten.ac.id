<?php

namespace Database\Seeders;

use App\Support\AdminAccountSync;
use Illuminate\Database\Seeder;

class AdminUserSeeder extends Seeder
{
    public function run(): void
    {
        $forceReset = (bool) config('dwp.force_reset_admin_password', false);
        $results = app(AdminAccountSync::class)->sync($forceReset);

        $this->command?->info('AdminUserSeeder selesai.');
        $this->command?->info('Total akun unik diproses: '.count($results));

        foreach ($results as $result) {
            $this->command?->line(sprintf(
                '  %s as %s (%s)',
                $result['email'],
                $result['role'],
                $result['action']
            ));
        }

        if (! $forceReset) {
            $this->command?->warn('Password user lama tidak diubah. Jalankan php artisan dwp:sync-admin-users --force untuk mereset password sesuai .env.');
        }
    }
}
