<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentRoster extends Model
{
    protected $table = 'student_roster';

    protected $fillable = [
        'nim_normalized',
        'full_name',
        'source',
    ];
}
