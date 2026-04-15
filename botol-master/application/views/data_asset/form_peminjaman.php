<div class="container-fluid">
 
    <form action="<?= base_url('peminjaman/proses_pinjam') ?>" method="post">
        <div class="card shadow mb-4">
            <div class="card-body">

                <div class="form-group">
                    <label for="peminjam">Nama Peminjam</label>
                    <input type="text" class="form-control" name="peminjam" required>
                </div>

                <div class="form-group">
                    <label for="departemen">Departemen</label>
                    <input type="text" class="form-control" name="departemen" required>
                </div>

                <div class="form-group">
                    <label for="tanggal_pinjam">Tanggal Pinjam</label>
                    <input type="date" class="form-control" name="tanggal_pinjam" required>
                </div>

                <div class="form-group">
                    <label for="tanggal_kembali">Tanggal Kembali</label>
                    <input type="date" class="form-control" name="tanggal_kembali" required>
                </div>

                <div class="form-group">
                    <label for="kategori">Pilih Kategori</label>
                    <select class="form-control" id="kategoriSelect">
                        <option value="">-- Pilih Kategori --</option>
                        <?php
                        $kategoriList = array_unique(array_column($dataasset, 'kategori'));
                        foreach ($kategoriList as $kategori) :
                        ?>
                            <option value="<?= $kategori ?>"><?= $kategori ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="table-responsive" style="max-height: 500px; overflow-y:auto;">
                    <table class="table table-bordered table-hover" id="tablePinjam">
                        <thead>
                            <tr>
                                <th width="5%">Pilih</th>
                                <th>Nama Asset</th>
                                <th>Merk/Kode</th>
                                <th>Kategori</th>
                                <th>Status</th>
                                <th>Update Terakhir</th>
                            </tr>
                        </thead>
                       <tbody>
                    <?php foreach ($dataasset as $asset) : ?>
                        <tr data-kategori="<?= $asset['kategori'] ?>">
                            <td><input type="checkbox" name="barang_ids[]" value="<?= $asset['id'] ?>"></td>
                            <td><?= $asset['nama_asset'] ?></td>
                            <td><?= $asset['merk_kode'] ?></td>
                            <td><?= $asset['kategori'] ?></td>
                            <td>OK</td>
                            <td><?= date('d-m-Y H:i:s', strtotime($asset['updated_at'])); ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>

                    </table>
                </div>

            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary">Proses Peminjaman</button>
                <a href="<?= base_url('dataasset') ?>" class="btn btn-secondary">Kembali</a>
            </div>
        </div>
    </form>
</div>

<!-- Tambahkan jQuery sebelum kode JavaScript lainnya -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Script Filtering & Validasi -->
<script>
$(document).ready(function () {
    // Sembunyikan semua data saat pertama load
    $('#tablePinjam tbody tr').hide();

    // Filter berdasarkan kategori
    $('#kategoriSelect').on('change', function () {
        var selectedKategori = $(this).val().toLowerCase().trim();

        $('#tablePinjam tbody tr').each(function () {
            var rowKategori = $(this).data('kategori').toLowerCase().trim();

            if (selectedKategori === "" || rowKategori === selectedKategori) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

    // Validasi saat submit
    $('form').on('submit', function () {
        if ($('input[name="barang_ids[]"]:checked').length === 0) {
            alert('Pilih minimal satu barang untuk dipinjam.');
            return false;
        }
    });
});
</script>
