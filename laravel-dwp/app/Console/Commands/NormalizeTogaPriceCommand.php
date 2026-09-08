<?php

namespace App\Console\Commands;

use App\Models\DwpCatalogProduct;
use Illuminate\Console\Command;

class NormalizeTogaPriceCommand extends Command
{
    protected $signature = 'dwp:normalize-toga-price';

    protected $description = 'Bersihkan price_text bank pada produk dan isi harga default toga 200000 jika masih kosong';

    public function handle(): int
    {
        $updated = DwpCatalogProduct::normalizeStoredTogaPrices();
        $toga = DwpCatalogProduct::canonicalToga();

        $this->info("Produk yang dinormalisasi: {$updated}");
        $this->info('Harga toga yang tampil: '.$toga->displayPrice());

        return self::SUCCESS;
    }
}
