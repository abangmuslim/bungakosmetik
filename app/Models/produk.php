<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class produk extends Model
{
    
    use HasFactory;
    protected $fillable=['nama','jeniskategori','suplier_id', 'deskripsi','stock','harga'];

    public function detiltransaksi():HasMany
    {
        return $this->hasMany(Detiltransaksi::class);
    }

    public function suplier():BelongsTo
    {
        return $this->belongsTo(Suplier::class);
    }
}
