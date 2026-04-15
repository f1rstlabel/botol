<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangKeluar extends Model
{
    use HasFactory;

    protected $table = 'barang_keluar';
    
    protected $fillable = [
        'no_transaksi',
        'tanggal_keluar',
        'nama_barang',
        'nama_penerima',
        'bagian',
        'total_keluar',
        'pengurus'
    ];
}