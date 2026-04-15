<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PengajuanBarang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('PengajuanBarang_model');
        $this->load->library('form_validation');
        $this->load->library('session'); // Pastikan library session dimuat
        $this->load->library('pagination'); // Pastikan library pagination dimuat
        if (!$this->session->userdata('login_session')) {
            // Jika belum login, redirect ke halaman login
            redirect('auth');
        }
    }

    public function index($currentIndex = 0)
    {
        // Konfigurasi pagination
        $config['base_url'] = site_url('pengajuan_barang/index');
        $config['total_rows'] = $this->PengajuanBarang_model->get_total_items();
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;
        $config['num_links'] = 2;

        // Styling pagination (opsional)
        $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '</ul>';
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link">';
        $config['cur_tag_close'] = '</a></li>';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>';

        // Inisialisasi pagination
        $this->pagination->initialize($config);

        // Data untuk tampilan
        $data['title'] = "Pengajuan Barang";
        $data['requests'] = $this->PengajuanBarang_model->get_requests($currentIndex, $config['per_page']);

        // Tambahkan variabel untuk paginasi
        $data['currentIndex'] = $currentIndex;
        $data['itemsPerPage'] = $config['per_page'];
        $data['totalItems'] = $config['total_rows'];

        // Memuat tampilan
        $data['contents'] = $this->load->view('pengajuan_barang/index', $data, true);
        $this->load->view('templates/dashboard', $data);
    }



    

public function add()
{
    $data['title'] = "Tambah Pengajuan Barang";
    $data['generated_no'] = $this->PengajuanBarang_model->generate_no_pengajuan(); 

    $this->set_validation_rules();

    if ($this->form_validation->run() == false) {
        $data['contents'] = $this->load->view('pengajuan_barang/add', $data, true);
        $this->load->view('templates/dashboard', $data);
    } else {
        // Ubah ini agar menggunakan method process_request() untuk insert data
        $this->process_request();
    }
}

    public function edit($id)
    {
        $this->load->model('Pengajuanbarang_model');

        $pengajuan = $this->Pengajuanbarang_model->get_request_by_id($id);
        if (!$pengajuan) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger">Data tidak ditemukan.</div>');
            redirect('pengajuan_barang');
        }

        // Ambil semua barang terkait dengan no_pengajuan
        $items = $this->Pengajuanbarang_model->get_pengajuan_items_by_no($pengajuan['no_pengajuan']);

        $data = [
            'title'        => 'Edit Pengajuan Barang',
            'id'           => $id, 
            'no_pengajuan' => $pengajuan['no_pengajuan'],
            'tanggal'      => $pengajuan['tanggal'],
            'items'        => $items
        ];

        $data['contents'] = $this->load->view('pengajuan_barang/edit', $data, true);
        $this->load->view('templates/dashboard', $data);
    }

// Fungsi bantu masukkan item ke session cart
    private function cart_add_session($item)
    {
        $cart = $this->session->userdata('cart') ?? [];
        $cart[] = $item;
        $this->session->set_userdata('cart', $cart);
    }




    public function delete($id)
    {
        $this->PengajuanBarang_model->delete_request($id);
        $this->session->set_flashdata('pesan', 'Data pengajuan barang berhasil dihapus.');
        redirect('pengajuan_barang');
    }

    public function approve($id)
    {
        // Mengambil data pengajuan berdasarkan ID
        $request = $this->PengajuanBarang_model->get_request_by_id($id);
        
        // Jika tidak ditemukan, tampilkan halaman 404
        if (!$request) show_404();

        // Menyusun data untuk tampilan
        $data['title'] = "Approve Pengajuan Barang";
        $data['request'] = $request;

        // Menyusun konten dengan tampilan approve
        $data['contents'] = $this->load->view('pengajuan_barang/approve', $data, true);
        $this->load->view('templates/dashboard', $data);
    }

    public function process_approval($id)
{
    // Mengambil data dari form
    $approval_status = $this->input->post('approval_status');
    $approved_qty = $this->input->post('approved_qty');
    
    // Mengambil status saat ini dari pengajuan
    $current_request = $this->PengajuanBarang_model->get_request_by_id($id);
    
    // Memastikan approved_qty tidak melebihi qty yang diajukan
    if ($approved_qty > $current_request['qty']) {
        $this->session->set_flashdata('pesan', 'Jumlah yang disetujui tidak boleh melebihi jumlah yang diajukan.');
        redirect('pengajuan_barang/approve/' . $id);
        return; // Menghentikan eksekusi jika ada kesalahan
    }

    // Menentukan nilai status berdasarkan pilihan
    if ($approval_status === 'approve') {
        $status = 2; // Diterima
    } elseif ($approval_status === 'tolak') {
        $status = 0; // Ditolak
    } elseif ($approval_status === 'pending') {
        $status = 1; // Pending
    } else {
        // Jika status tidak valid, kembalikan error atau atur default
        $this->session->set_flashdata('pesan', 'Status tidak valid.');
        redirect('pengajuan_barang');
        return; // Menghentikan eksekusi jika status tidak valid
    }

    // Menyiapkan data untuk update
    $data = [
        'approved' => $status, // Menyimpan status
        'approved_qty' => ($status === 2) ? $approved_qty : NULL // Hanya simpan qty jika diterima
    ];

    // Tambahkan logika untuk memastikan hanya status pending yang dapat diubah
    if ($current_request['approved'] == 1) { // Jika status saat ini adalah Pending
        // Panggil fungsi model untuk update pengajuan
        $this->PengajuanBarang_model->update_request($id, $data);
        
        // Set flash message dan redirect ke halaman pengajuan barang
        $this->session->set_flashdata('pesan', 'Status pengajuan berhasil diperbarui.');
        redirect('pengajuan_barang');
    } else {
        // Jika status bukan Pending, tidak bisa diubah lagi
        $this->session->set_flashdata('pesan', 'Pengajuan ini tidak dapat diubah lagi.');
        redirect('pengajuan_barang');
    }
}

    

    private function set_validation_rules()
    {
        $this->form_validation->set_rules('tanggal', 'Tanggal', 'required');
        $this->form_validation->set_rules('no_pengajuan', 'No Pengajuan', 'required');
        $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'required');
        $this->form_validation->set_rules('merk_kode', 'Merk/Kode', 'required');
        $this->form_validation->set_rules('qty', 'Qty', 'required|integer');
        $this->form_validation->set_rules('jenis', 'Jenis', 'required');
    }

   public function process_request()
    {
        $this->set_validation_rules();

        $nama_barang = $this->input->post('nama_barang');
        $merk_kode = $this->input->post('merk_kode');
        $qty = $this->input->post('qty');
        $jenis = $this->input->post('jenis');

        if (!is_array($nama_barang) || count($nama_barang) == 0) {
            $this->session->set_flashdata('pesan', 'Form barang tidak boleh kosong.');
            redirect('pengajuan_barang/add');
            return;
        }

        foreach ($qty as $q) {
            if (!is_numeric($q) || $q <= 0) {
                $this->session->set_flashdata('pesan', 'Qty harus berupa angka dan lebih dari 0.');
                redirect('pengajuan_barang/add');
                return;
            }
        }

        $tanggal_post = $this->input->post('tanggal');
        $tanggal_pengajuan = $tanggal_post ? date('Y-m-d', strtotime($tanggal_post)) : date('Y-m-d');
        $no_pengajuan = $this->PengajuanBarang_model->generate_no_pengajuan();

        for ($i = 0; $i < count($nama_barang); $i++) {
            // Pastikan semua isian tidak kosong
            if (empty($nama_barang[$i]) || empty($merk_kode[$i]) || empty($qty[$i]) || empty($jenis[$i])) {
                continue; // lewati jika ada yang kosong
            }

            $data = [
                'tanggal' => $tanggal_pengajuan,
                'no_pengajuan' => $no_pengajuan,
                'nama_barang' => $nama_barang[$i],
                'merk_kode' => $merk_kode[$i],
                'qty' => $qty[$i],
                'jenis' => $jenis[$i],
                'approved' => 1,
                'approved_qty' => null,
            ];

            $this->PengajuanBarang_model->add_request($data); // simpan langsung per item
        }

        $this->session->set_flashdata('pesan', 'Pengajuan barang berhasil disimpan.');
        redirect('pengajuan_barang');
}


    
    
    private function check_access()
    {
        if (!$this->session->userdata('login_session')) {
            redirect('login');
        }

        // Mengizinkan hanya admin untuk mengakses proses approval
        if ($this->session->userdata('login_session')['role'] !== 'admin' && $this->router->fetch_method() == 'approve') {
            $this->session->set_flashdata('pesan', 'Anda tidak memiliki akses untuk tindakan ini.');
            redirect('pengajuan_barang');
        }
    }
     public function update_request($id)
{
    $tanggal = $this->input->post('tanggal');
    $no_pengajuan = $this->input->post('no_pengajuan');
    $items = $this->input->post('items'); // array of items

    // Format tanggal jika perlu
    if ($tanggal && strtotime($tanggal)) {
        $tanggal = date('Y-m-d', strtotime($tanggal));
    } else {
        $tanggal = null;
    }

    // Update berdasarkan ID
    $this->PengajuanBarang_model->update_request($id, [
        'tanggal' => $tanggal,
    ]);

    // Hapus & tambah ulang item
    $this->PengajuanBarang_model->delete_items_by_no($no_pengajuan);

    if ($items && is_array($items)) {
        foreach ($items as $item) {
            $this->PengajuanBarang_model->insert_item([
                'no_pengajuan' => $no_pengajuan,
                'nama_barang'  => $item['nama_barang'],
                'merk_kode'    => $item['merk_kode'],
                'qty'          => $item['qty'],
                'jenis'        => $item['jenis']
            ]);
        }
    }

    $this->session->set_flashdata('pesan', '<div class="alert alert-success">Pengajuan berhasil diperbarui.</div>');
    redirect('pengajuan_barang');
}





public function add_to_cart()
{
    // Ambil data dari form
    $data = array(
        'nama_barang' => $this->input->post('nama_barang'),
        'merk_kode' => $this->input->post('merk_kode'),
        'qty' => $this->input->post('qty'),
        'jenis' => $this->input->post('jenis'),
    );

    // Validasi input, pastikan tidak ada yang kosong
    if (empty($data['nama_barang']) || empty($data['merk_kode']) || empty($data['qty']) || empty($data['jenis'])) {
        $this->session->set_flashdata('pesan', 'Semua kolom harus diisi.');
        redirect('pengajuan_barang/add');  // Pastikan rute ini sesuai
        return;
    }

    // Ambil cart dari session
    $cart = $this->session->userdata('cart');

    // Jika cart tidak ada, buat array baru
    if (!$cart) {
        $cart = array();
    }

    // Cek apakah item yang sama sudah ada di cart (berdasarkan nama_barang atau merk_kode)
    $item_exists = false;
    foreach ($cart as $item) {
        if ($item['nama_barang'] === $data['nama_barang'] && $item['merk_kode'] === $data['merk_kode']) {
            $item_exists = true;
            break;
        }
    }

    if ($item_exists) {
        $this->session->set_flashdata('pesan', 'Item sudah ada dalam keranjang.');
    } else {
        // Tambahkan item ke cart
        $cart[] = $data;
        // Simpan kembali ke session
        $this->session->set_userdata('cart', $cart);
        $this->session->set_flashdata('pesan', 'Item berhasil ditambahkan ke keranjang.');
    }

    // Redirect kembali ke halaman form pengajuan barang
    redirect('pengajuan_barang/add');  // Pastikan ini adalah halaman yang benar
}


public function remove($index)
{
    // Ambil cart dari session
    $cart = $this->session->userdata('cart');

    // Hapus item dari cart
    if (isset($cart[$index])) {
        unset($cart[$index]);

        // Reindex array
        $cart = array_values($cart);

        // Simpan kembali ke session
        $this->session->set_userdata('cart', $cart);
    }

    // Redirect kembali ke form
    redirect('pengajuan_barang/add');
}
}