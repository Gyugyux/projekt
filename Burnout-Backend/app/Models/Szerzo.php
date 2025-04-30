<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Szerzo extends Model
{
    /** @use HasFactory<\Database\Factories\SzerzoFactory> */
    use HasFactory;

    public function cikkek() {
        return $this->hasMany(Cikk::class, 'szerzo_id');
    }
}
