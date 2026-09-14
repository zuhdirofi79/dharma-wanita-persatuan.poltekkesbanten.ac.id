<?php

return [
    'payment_title' => 'Informasi Pembayaran Toga Wisuda',
    'payment_instruction' => 'Silakan melakukan pembayaran ke rekening berikut, kemudian unggah bukti pembayaran untuk diverifikasi oleh Tim Sekretariat DWP Poltekkes Kemenkes Banten.',
    'payment_account_name' => 'DWP POLTEKES BANTEN',
    'payment_account_number' => '008401004160565',
    'payment_bank_name' => 'Bank BRI / BRI BritAma Bisnis',
    'payment_account_type' => 'Britama Bisnis',
    'payment_branch' => 'KC Serang',

    'contact_name' => 'Tim Sekretariat DWP Poltekkes Kemenkes Banten',
    'contact_primary_name' => 'Dias Arliadini',
    'contact_secondary_name' => 'Putri Ratna Dewi',
    'contact_phone_primary' => '+62 895-0839-4483',
    'contact_phone_secondary' => '+62 877-4112-1505',
    'contact_wa_primary' => 'https://api.whatsapp.com/send/?phone=6289508394483&text&type=phone_number&app_absent=0',
    'contact_wa_secondary' => 'https://api.whatsapp.com/send/?phone=6287741121505&text&type=phone_number&app_absent=0',

    'event_year' => '2026/2027',
    'event_date' => '30 September 2026',
    'event_location' => 'Auditorium UIN SMH Banten',
    'order_deadline_note' => 'Pelayanan dibuka hingga minimal 10 hari sebelum wisuda dilaksanakan.',
    'service_hours' => 'Senin–Jumat, pukul 09.00–16.00 WIB',
    'contact_hours_label' => 'Jam Layanan Narahubung',
    'contact_hours_days' => 'Senin–Jumat',
    'contact_hours_time' => '09.00–16.00 WIB',
    'contact_hours_note' => 'Mohon tidak menghubungi di luar jam layanan.',
    'contact_hours_full' => 'Jam layanan narahubung: Senin–Jumat, pukul 09.00–16.00 WIB. Mohon tidak menghubungi di luar jam layanan.',

    /*
    |--------------------------------------------------------------------------
    | Galeri produk resmi (file lokal di public/src/img/wisuda)
    |--------------------------------------------------------------------------
    */
    'product_images' => [
        [
            'file' => 'Baju-Toga-Mahasiswa.jpeg',
            'label' => 'Baju Toga Mahasiswa',
            'alt' => 'Baju Toga Mahasiswa Poltekkes Kemenkes Banten',
        ],
        [
            'file' => 'Topi-Toga-Segi-Lima.jpeg',
            'label' => 'Topi Toga Segi Lima',
            'alt' => 'Topi Toga Segi Lima Poltekkes Kemenkes Banten',
        ],
        [
            'file' => 'sleber-kerah-wisuda.jpeg',
            'label' => 'Slebber / Kerah Wisuda',
            'alt' => 'Slebber Kerah Wisuda Poltekkes Kemenkes Banten',
        ],
        [
            'file' => 'kerah-dan-kalung-wisuda-keperawatan.jpeg',
            'label' => 'Kerah & Kalung Keperawatan',
            'alt' => 'Kerah dan Kalung Wisuda Keperawatan',
            'prodi' => 'keperawatan',
        ],
        [
            'file' => 'kerah-dan-kalung-wisuda-kebidanan.jpeg',
            'label' => 'Kerah & Kalung Kebidanan',
            'alt' => 'Kerah dan Kalung Wisuda Kebidanan',
            'prodi' => 'kebidanan',
        ],
        [
            'file' => 'kerah-dan-kalung-wisuda-tlm.jpeg',
            'label' => 'Kerah & Kalung TLM',
            'alt' => 'Kerah dan Kalung Wisuda TLM',
            'prodi' => 'tlm',
        ],
        [
            'file' => 'kalung-wisuda-keperawatan.jpeg',
            'label' => 'Kalung Keperawatan',
            'alt' => 'Kalung Wisuda Keperawatan',
            'prodi' => 'keperawatan',
        ],
        [
            'file' => 'kalung-wisuda-kebidanan.jpeg',
            'label' => 'Kalung Kebidanan',
            'alt' => 'Kalung Wisuda Kebidanan',
            'prodi' => 'kebidanan',
        ],
        [
            'file' => 'kalung-wisuda-tlm.jpeg',
            'label' => 'Kalung TLM',
            'alt' => 'Kalung Wisuda TLM',
            'prodi' => 'tlm',
        ],
    ],

    'prodi_variants' => [
        'keperawatan' => [
            'label' => 'Keperawatan',
            'note' => 'Atribut kerah dan kalung sesuai ketentuan Jurusan Keperawatan.',
            'primary' => 'kerah-dan-kalung-wisuda-keperawatan.jpeg',
            'secondary' => 'kalung-wisuda-keperawatan.jpeg',
        ],
        'kebidanan' => [
            'label' => 'Kebidanan',
            'note' => 'Atribut kerah dan kalung sesuai ketentuan Jurusan Kebidanan.',
            'primary' => 'kerah-dan-kalung-wisuda-kebidanan.jpeg',
            'secondary' => 'kalung-wisuda-kebidanan.jpeg',
        ],
        'tlm' => [
            'label' => 'TLM',
            'note' => 'Atribut kerah dan kalung sesuai ketentuan Jurusan Teknologi Laboratorium Medis.',
            'primary' => 'kerah-dan-kalung-wisuda-tlm.jpeg',
            'secondary' => 'kalung-wisuda-tlm.jpeg',
        ],
    ],
];
