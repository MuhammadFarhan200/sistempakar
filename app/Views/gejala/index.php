<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Data Gejala</h1>
    <?php if (session()->get('message')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data Berhasil <?= session()->get('message') ?></strong> Silahkan periksa kembali.
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

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalTambah">Tambah Data</button>
    <br><br>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Kode</th>
                        <th scope="col">Nama Gejala</th>
                        <th scope="col">Keterangan</th>
                        <th scope="col" class="text-nowrap">Nilai CF</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($gejala->getResultArray() as $row) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $row['kode']; ?></td>
                            <td><?= $row['nama_gejala']; ?></td>
                            <td><?= $row['keterangan']; ?></td>
                            <td><?= $row['nilai_cf']; ?></td>
                            <td class="text-nowrap">
                                <!-- <a href="#" class="btn btn-warning"> Edit </a> -->
                                <button class="btn btn-warning" type="button" data-toggle="modal" data-target="#modalUbah" id="btn-edit" data-id="<?= $row['id']; ?>" data-kode="<?= $row['kode']; ?>" data-nama_gejala="<?= $row['nama_gejala']; ?>" data-keterangan="<?= $row['keterangan']; ?>"> Edit </button>
                                <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#modalHapus"> Hapus </button>
                                <!-- <a href="#" class="btn btn-danger"> Hapus </a> -->
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
    <!-- modal edit -->
    <div class="modal" id="modalUbah" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Data Gejala</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('gejala/ubah'); ?>" method="post">
                        <input type="hidden" name="id" id="id-gejala">
                        <div class="form-group">
                            <label for="kode"></label>
                            <input type="text" name="kode" id="kode" class="form-control" placeholder="Masukan Kode Gejala" value="<?= $row['kode'] ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="nama_gejala"></label>
                            <input type="text" name="nama_gejala" id="nama_gejala" class="form-control" placeholder="Masukan Nama Gejala" value="<?= $row['nama_gejala'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="keterangan"></label>
                            <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Masukan Keterangan Gejala" value="<?= $row['keterangan'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="keterangan"></label>
                            <input type="text" class="form-control" value="<?= $row['nilai_cf'] ?>" readonly>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" name="ubah" class="btn btn-primary">Edit Data</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    <!-- modal tambah -->
    <div class="modal" id="modalTambah" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data Gejala</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('gejala/tambah'); ?>" method="post">
                        <div class="form-group">
                            <label for="kode"></label>
                            <input type="text" name="kode" id="kode" class="form-control" placeholder="Masukan Kode Gejala">
                        </div>
                        <div class="form-group">
                            <label for="nama_gejala"></label>
                            <input type="text" name="nama_gejala" id="nama_gejala" class="form-control" placeholder="Masukan Nama Gejala">
                        </div>
                        <div class="form-group">
                            <label for="keterangan"></label>
                            <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Masukan Keterangan Gejala">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" name="tambah" class="btn btn-primary">Tambah Data</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal" id="modalHapus">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    Apakah Anda yakin ingin menghapus data ini ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <a href="/gejala/hapus/<?= $row['id']; ?>" class="btn btn-primary">Yakin</a>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>