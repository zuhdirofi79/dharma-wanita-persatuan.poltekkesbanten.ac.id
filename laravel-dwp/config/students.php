<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Password awal akun hasil provisioning massal
    |--------------------------------------------------------------------------
    |
    | Dipakai hanya saat php artisan students:provision-accounts membuat
    | akun baru. Password tidak pernah disimpan plaintext. Jangan log nilai ini.
    |
    */
    'provision_password' => (string) env('STUDENT_PROVISION_PASSWORD', 'Polkesten2026'),

    'email_domain' => 'mahasiswa.dwp.invalid',
];
