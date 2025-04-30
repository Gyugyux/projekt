<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cikk extends Model
{
    /** @use HasFactory<\Database\Factories\CikkFactory> */
    use HasFactory;
    public function kategoria() {
        return $this->belongsTo(Kategoria::class, 'kategoria_id');
    }
    public function szerzo() {
        return $this->belongsTo(Szerzo::class, 'szerzo_id');
    }
}
