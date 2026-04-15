<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm border-bottom-primary">
                <div class="card-header bg-white py-3">
                    <div class="row">
                        <div class="col">
                            <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                                <?= $title; ?>
                            </h4>
                        </div>
                        <div class="col-auto">
                            <a href="<?= base_url('pengajuan_barang'); ?>" class="btn btn-sm btn-secondary btn-icon-split">
                                <span class="icon">
                                    <i class="fa fa-arrow-left"></i>
                                </span>
                                <span class="text">Kembali</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <!-- Flash Message -->
                    <?= $this->session->flashdata('pesan'); ?>

                    <!-- Form Utama -->
                    <?= form_open('pengajuan_barang/process_request'); ?>
                    <div class="form-group">
                        <label>Tanggal</label>
                        <input type="date" name="tanggal" class="form-control" required>
                    </div>
                   <div class="form-group">
                        <label>No Pengajuan</label>
                        <input type="text" name="no_pengajuan" class="form-control" value="<?= isset($generated_no) ? $generated_no : '' ?>" readonly>
                    </div>


                    <hr>
                    <h5 class="font-weight-bold text-primary">Tambah Barang</h5>
                    <div id="form-barang">
                        <div class="barang-item mb-3 border p-3 rounded">
                            <div class="form-group">
                                <label>Nama Barang</label>
                                <input type="text" name="nama_barang[]" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Merk/Kode</label>
                                <input type="text" name="merk_kode[]" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Qty</label>
                                <input type="number" name="qty[]" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Jenis</label>
                                <input type="text" name="jenis[]" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <!-- Tombol Tambah Barang -->
                    <button type="button" class="btn btn-sm btn-success mb-3" id="tambah-barang">
                        <i class="fa fa-plus"></i> Tambah Barang
                    </button>

                    <!-- Tombol Submit -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Kirim Pengajuan</button>
                    </div>
                    <?= form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Script tambah form barang -->
<script>
document.getElementById('tambah-barang').addEventListener('click', function () {
    let formBarang = document.getElementById('form-barang');
    let item = document.querySelector('.barang-item');
    let clone = item.cloneNode(true);

    // Bersihkan input
    clone.querySelectorAll('input').forEach(input => input.value = '');
    formBarang.appendChild(clone);
});
</script>
