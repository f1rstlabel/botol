<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PengajuanBarang_model extends CI_Model
{
    public function get_all_requests()
    {
        $this->db->select('*'); // Ambil semua kolom
        $query = $this->db->get('pengajuan_barang');
        return $query->result_array(); // Kembalikan sebagai array
    }

    public function delete_items_by_no($no_pengajuan)
    {
        return $this->db->delete('pengajuan_barang', ['no_pengajuan' => $no_pengajuan]);
    }
    public function insert_item($data)
    {
        return $this->db->insert('pengajuan_barang', $data); // atau 'pengajuan_barang_items' jika kamu pakai tabel detail terpisah
    }



    // Ambil daftar barang yang diajukan berdasarkan no_pengajuan
    public function get_pengajuan_items_by_no($no_pengajuan)
    {
        return $this->db->get_where('pengajuan_barang', ['no_pengajuan' => $no_pengajuan])->result_array();
    }

    public function add_request($data)
    {
        return $this->db->insert('pengajuan_barang', $data);
    }

    public function update_request($id, $data) {
        $this->db->where('id', $id);
        return $this->db->update('pengajuan_barang', $data);
    }
    

    public function delete_request($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('pengajuan_barang');
    }

    public function approve_request($id, $approved_qty)
    {
        // Update status approved dan approved_qty
        $data = [
            'approved' => 1, // Set approved menjadi 1
            'approved_qty' => $approved_qty // Set approved_qty sesuai input
        ];

        // Lakukan update ke tabel pengajuan_barang
        $this->db->where('id', $id);
        return $this->db->update('pengajuan_barang', $data);
    }
    // Di model PengajuanBarang_model

    public function count_all() {
        return $this->db->count_all('pengajuan_barang');
    }
    
    public function get_requests($currentIndex = 0, $perPage = 10)
    {
        $this->db->limit($perPage, $currentIndex);
        return $this->db->get('pengajuan_barang')->result_array(); // Ganti 'pengajuan_barang' dengan nama tabel yang sesuai
    }
    public function get_request_by_id($id)
    {
        return $this->db->get_where('pengajuan_barang', ['id' => $id])->row_array();
    }


    // Metode untuk menghitung total item
    public function get_total_items()
    {
        return $this->db->count_all('pengajuan_barang'); // Ganti 'pengajuan_barang' dengan nama tabel yang sesuai
    }

    public function generate_no_pengajuan()
    {
        $tanggal = date('dmY'); // misalnya: 12062025
        $bulan = date('n');     // angka 1-12
        $bulan_romawi = [
            1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV',
            5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
            9 => 'IX', 10 => 'X', 11 => 'XI', 12 => 'XII'
        ];

        $romawi = $bulan_romawi[$bulan];
        $tahun = date('Y');

        $format = "$tanggal/$romawi/PAMBMD/$tahun";

        // Pastikan tidak duplikat
        $cek = $this->db->get_where('pengajuan_barang', ['no_pengajuan' => $format])->num_rows();

        if ($cek > 0) {
            // Kalau sama, tambahkan angka random di awal
            $rand = rand(100, 999);
            $format = "$rand$tanggal/$romawi/PAMBMD/$tahun";
        }

        return $format;
    }

    

}
