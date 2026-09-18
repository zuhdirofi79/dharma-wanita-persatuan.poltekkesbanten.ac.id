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

    /*
    |--------------------------------------------------------------------------
    | Roster mahasiswa resmi
    |--------------------------------------------------------------------------
    |
    | student_roster adalah master siapa yang berhak membuat akun.
    | Import CSV resmi:
    | php artisan students:import-roster storage/app/student-roster.csv
    |
    | Header minimal: nim,full_name
    | Command tidak membuat akun dan tidak membuat pesanan toga.
    |
    */
];
