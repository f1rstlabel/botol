<?php

namespace App\Http\Controllers;

use App\Models\BarangKeluar;
use Illuminate\Http\Request;

class BarangKeluarController extends Controller
{
    // Ambil semua data
    public function index()
    {
        return response()->json(BarangKeluar::all());
    }

    // Tambah data baru
    public function store(Request $request)
    {
        $validated = $request->validate([
            'no_transaksi'   => 'required|string|max:50',
            'tanggal_keluar' => 'required|date',
            'nama_barang'    => 'required|string|max:255',
            'nama_penerima'  => 'required|string|max:255',
            'bagian'         => 'required|string|max:255',
            'total_keluar'   => 'required|integer',
            'pengurus'       => 'required|string|max:255',
        ]);

        $barang = BarangKeluar::create($validated);

        return response()->json($barang, 201);
    }

    // Ambil data berdasarkan ID
    public function show($id)
    {
        $barang = BarangKeluar::findOrFail($id);
        return response()->json($barang);
    }

    // Update data
   public function update(Request $request, $id)
{
    $barangKeluar = BarangKeluar::find($id);

    if (!$barangKeluar) {
        return response()->json(['message' => 'Data tidak ditemukan'], 404);
    }

    // validasi (sesuai kebutuhan kamu)
    $request->validate([
        'jumlah' => 'required|integer|min:1',
        'tanggal_keluar' => 'required|date',
        'keterangan' => 'nullable|string'
    ]);

    // update data
    $barangKeluar->update([
        'jumlah' => $request->jumlah,
        'tanggal_keluar' => $request->tanggal_keluar,
        'keterangan' => $request->keterangan
    ]);

    return response()->json([
        'message' => 'Data berhasil diupdate',
        'data' => $barangKeluar
    ]);
}


    // Hapus data
    public function destroy($id)
    {
        $barang = BarangKeluar::findOrFail($id);
        $barang->delete();

        return response()->json(['message' => 'Data berhasil dihapus']);
    }

    // Search by nama_barang
    public function search(Request $request)
    {
        $keyword = $request->query('q');
        $results = BarangKeluar::where('nama_barang', 'like', "%{$keyword}%")->get();
        return response()->json($results);
    }

}
