<?php

return [
    'name' => 'Dharma Wanita Persatuan',
    'short_name' => 'DWP',
    'institution' => 'Poltekkes Kemenkes Banten',
    'full_name' => 'Dharma Wanita Persatuan Poltekkes Kemenkes Banten',

    'primary_superadmin_email' => strtolower(trim((string) env('SUPERADMIN_EMAIL', 'qowiyrofi@poltekkesbanten.ac.id'))),
    'superadmin_1_email' => strtolower(trim((string) env('SUPERADMIN_1_EMAIL', 'kuntum.ekawati@poltekkesbanten.ac.id'))),
    'force_reset_admin_password' => filter_var(env('FORCE_RESET_ADMIN_PASSWORD', false), FILTER_VALIDATE_BOOLEAN),

    'admin_accounts' => [
        [
            'email' => env('SUPERADMIN_EMAIL', 'qowiyrofi@poltekkesbanten.ac.id'),
            'password' => env('SUPERADMIN_PASSWORD'),
            'role' => 'superadmin',
            'label' => 'SUPERADMIN_EMAIL',
        ],
        [
            'email' => env('SUPERADMIN_1_EMAIL', 'kuntum.ekawati@poltekkesbanten.ac.id'),
            'password' => env('SUPERADMIN_1_PASSWORD'),
            'role' => 'superadmin',
            'label' => 'SUPERADMIN_1_EMAIL',
        ],
        [
            'email' => env('SUPERADMIN_2_EMAIL'),
            'password' => env('SUPERADMIN_2_PASSWORD'),
            'role' => 'superadmin',
            'label' => 'SUPERADMIN_2_EMAIL',
        ],
        [
            'email' => env('SUPERADMIN_3_EMAIL'),
            'password' => env('SUPERADMIN_3_PASSWORD'),
            'role' => 'superadmin',
            'label' => 'SUPERADMIN_3_EMAIL',
        ],
        [
            'email' => env('DEFAULT_ADMIN_EMAIL'),
            'password' => env('DEFAULT_ADMIN_PASSWORD'),
            'role' => 'admin',
            'label' => 'DEFAULT_ADMIN_EMAIL',
        ],
    ],

    'address' => 'Poltekkes Kemenkes Banten, Jl. Syech Nawawi Al Bantani No.12, Cipocok Jaya, Kota Serang',
    'email' => 'humas@poltekkesbanten.ac.id',

    'contact_name' => 'Tim Sekretariat DWP Poltekkes Kemenkes Banten',
    'contact_primary_name' => 'Dias Arliadini',
    'contact_secondary_name' => 'Putri Ratna Dewi',
    'contact_phone_primary' => '+62 895-0839-4483',
    'contact_phone_secondary' => '+62 877-4112-1505',
    'contact_wa_primary' => 'https://api.whatsapp.com/send/?phone=6289508394483&text&type=phone_number&app_absent=0',
    'contact_wa_secondary' => 'https://api.whatsapp.com/send/?phone=6287741121505&text&type=phone_number&app_absent=0',

    'service_hours' => 'Pelayanan pukul 08.00 sampai 17.00 WIB.',
    'service_hours_note' => 'Di luar jam tersebut, silakan menunggu hari berikutnya.',
    'order_deadline_note' => 'Pelayanan dibuka hingga minimal 10 hari sebelum wisuda dilaksanakan.',

    'payment' => [
        'title' => 'Informasi Pembayaran',
        'bank_name' => 'Bank BRI / BRI BritAma Bisnis',
        'account_type' => 'Britama Bisnis',
        'account_name' => 'DWP POLTEKES BANTEN',
        'account_number' => '008401004160565',
        'branch' => 'KC Serang',
        'instruction' => 'Silakan melakukan pembayaran ke rekening berikut, kemudian unggah bukti pembayaran untuk diverifikasi oleh Tim Sekretariat DWP Poltekkes Kemenkes Banten.',
        'note' => 'Setelah melakukan pembayaran, silakan unggah bukti pembayaran melalui form yang tersedia. Bukti pembayaran akan diverifikasi oleh Tim Sekretariat DWP Poltekkes Kemenkes Banten.',
    ],
];
