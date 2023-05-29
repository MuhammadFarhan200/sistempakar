<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Laporan Pemeriksaan</h1>
    <?php if (session()->get('message')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data Berhasil <?= session()->get('message') ?> </strong> Silahkan periksa kembali.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php endif; ?>

    <div class="row">
        <div class="col-md-6">
            <?php
            if (session()->get('err')) {
                echo "<div class='alert alert-danger p-0 pt-2' role='alert'>" . session()->get('err') . "</div>";
                session()->remove('err');
            }
            ?>
        </div>
    </div>

    <br><br>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Tanggal Pemeriksaan</th>
                        <th class="text-nowrap" scope="col">Nama Pasien</th>
                        <th scope="col">Hasil Diagnosa</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php if (count($laporan) < 1) : ?>
                        <tr>
                            <td colspan="5" class="text-center">Tidak ada data</td>
                        </tr>
                    <?php else : ?>
                        <?php foreach ($laporan as $row) : ?>
                            <tr class="text-nowrap">
                                <th scope="row"><?= $i++; ?></th>
                                <td><?= date('d F Y', strtotime($row['created_at'])); ?></td>
                                <td><?= $row['nama_pasien']; ?></td>
                                <td><?= $row['nama_penyakit'] ?? 'Tidak sedang mengalami gangguan kesehatan'; ?></td>
                                <td>
                                    <a href="<?= base_url('periksa/laporan/cetak/' . $row['id']) ?>" target="_blank" class="btn btn-success"> Cetak </a>
                                    <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#modalHapus-<?= $row['id'] ?>"> Hapus </button>
                                </td>
                            </tr>
                            <div class="modal" id="modalHapus-<?= $row['id'] ?>">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            Apakah Anda yakin ingin menghapus data ini ?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <a href="<?= base_url('periksa/laporan/hapus/' . ($row['id'] ?? '')) ?>" class="btn btn-primary">Yakin</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>