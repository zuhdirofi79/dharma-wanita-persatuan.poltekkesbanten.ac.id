<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class GraduationTogaOrderNimLock extends Model
{
    protected $fillable = [
        'nim_normalized',
        'first_order_id',
    ];

    protected function casts(): array
    {
        return [
            'first_order_id' => 'integer',
        ];
    }

    public function firstOrder(): BelongsTo
    {
        return $this->belongsTo(GraduationTogaOrder::class, 'first_order_id');
    }
}
