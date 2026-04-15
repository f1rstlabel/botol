<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
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
                                <span class="icon"><i class="fa fa-arrow-left"></i></span>
                                <span class="text">Kembali</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <?= $this->session->flashdata('pesan'); ?>

                    <?= form_open('pengajuan_barang/update_request/' . $id); ?>
                    <input type="hidden" name="no_pengajuan" value="<?= $no_pengajuan ?>">

                    <div class="form-group">
                        <label>Tanggal</label>
			<input type="date" name="tanggal" class="form-control" value="<?= date('Y-m-d', strtotime($tanggal)) ?>" readonly>
                    </div>
                    <div class="form-group">
                        <label>No Pengajuan</label>
                        <input type="text" class="form-control" value="<?= $no_pengajuan ?>" readonly>
                    </div>

                    <h5 class="font-weight-bold mt-4">Daftar Barang</h5>
                    <table class="table table-bordered table-sm">
                        <thead class="text-center">
                            <tr>
                                <th>Nama Barang</th>
                                <th>Merk/Kode</th>
                                <th>Qty</th>
                                <th>Jenis</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($items)): ?>
                                <?php foreach ($items as $index => $item): ?>
                                    <tr>
                                        <td>
                                            <input type="text" name="items[<?= $index ?>][nama_barang]" value="<?= $item['nama_barang'] ?>" class="form-control" required>
                                        </td>
                                        <td>
                                            <input type="text" name="items[<?= $index ?>][merk_kode]" value="<?= $item['merk_kode'] ?>" class="form-control" required>
                                        </td>
                                        <td>
                                            <input type="number" name="items[<?= $index ?>][qty]" value="<?= $item['qty'] ?>" class="form-control" required>
                                        </td>
                                        <td>
                                            <input type="text" name="items[<?= $index ?>][jenis]" value="<?= $item['jenis'] ?>" class="form-control" required>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <tr>
                                    <td colspan="4" class="text-center">Tidak ada data barang.</td>
                                </tr>
                            <?php endif; ?>
                        </tbody>
                    </table>

                    <div class="form-group text-right mt-3">
                        <button type="submit" class="btn btn-primary">Update Pengajuan</button>
                    </div>
                    <?= form_close(); ?>

                </div>
            </div>
        </div>
    </div>
</div>
