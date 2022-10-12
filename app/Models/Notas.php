<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notas extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_nota',
        'titulo',
        'mensaje',
        'id_user',
        'estado',
        'fecha_creacion'
    ];
}
