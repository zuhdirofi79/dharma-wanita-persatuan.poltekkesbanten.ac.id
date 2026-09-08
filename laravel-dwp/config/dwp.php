<?php

return [
    'name' => 'Dharma Wanita Persatuan',
    'short_name' => 'DWP',
    'institution' => 'Poltekkes Kemenkes Banten',
    'full_name' => 'Dharma Wanita Persatuan Poltekkes Kemenkes Banten',

    'primary_superadmin_email' => strtolower(trim((string) env('SUPERADMIN_EMAIL', 'qowiyrofi@poltekkesbanten.ac.id'))),
    'superadmin_1_email' => strtolower(trim((string) env('SUPERADMIN_1_EMAIL', 'kuntum.ekawati@poltekkesbanten.ac.id'))),

    'address' => 'Poltekkes Kemenkes Banten, Jl. Syech Nawawi Al Bantani No.12, Cipocok Jaya, Kota Serang',
    'email' => 'humas@poltekkesbanten.ac.id',

    'contact_name' => 'Dias Arliadini (Tim Sekretariat DWP Poltekkes Kemenkes Banten)',
    'contact_phone_primary' => '+62 851-8777-8838',
    'contact_phone_secondary' => '+62 877-4112-1505',
    'contact_wa_primary' => 'https://api.whatsapp.com/send/?phone=6285187778838&text&type=phone_number&app_absent=0',
    'contact_wa_secondary' => 'https://api.whatsapp.com/send/?phone=6287741121505&text&type=phone_number&app_absent=0',

    'service_hours' => 'Pelayanan pukul 08.00 sampai 17.00 WIB.',
    'service_hours_note' => 'Di luar jam tersebut, silakan menunggu hari berikutnya.',
    'order_deadline_note' => 'Pelayanan dibuka hingga minimal 10 hari sebelum wisuda dilaksanakan.',
];
