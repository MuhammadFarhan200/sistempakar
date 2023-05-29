<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Data Penyakit</h1>
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

    <button class="btn btn-primary" data-toggle="modal" data-target="#modalTambah">Tambah Data</button>
    <br><br>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Kode</th>
                        <th scope="col">Nama Penyakit</th>
                        <th scope="col">Solusi</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($penyakit->getResultArray() as $sakit) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $sakit['kode']; ?></td>
                            <td><?= $sakit['nama_penyakit']; ?></td>
                            <td><?= $sakit['keterangan']; ?></td>
                            <td class="text-nowrap">
                                <!-- <a href="" class="btn btn-warning"> Edit </a> -->
                                <button class="btn btn-warning" type="button" data-toggle="modal" data-target="#modalUbah" id="btn-edit" data-id="<?= $sakit['id']; ?>" data-kode="<?= $sakit['kode']; ?>" data-nama_penyakit="<?= $sakit['nama_penyakit']; ?>" data-keterangan="<?= $sakit['keterangan']; ?>"> Edit </button>
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
                    <h5 class="modal-title">Edit Data Penyakit</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('penyakit/ubah'); ?>" method="post">
                        <input type="hidden" name="id" id="id-penyakit">
                        <div class="form-group">
                            <label for="kode"></label>
                            <input type="text" name="kode" id="kode" class="form-control" placeholder="Masukan Kode Penyakit" value="<?= $sakit['kode'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="nama_penyakit"></label>
                            <input type="text" name="nama_penyakit" id="nama_penyakit" class="form-control" placeholder="Masukan Nama Penyakit" value="<?= $sakit['nama_penyakit'] ?>">
                        </div>
                        <div class="form-group">
                            <label for="keterangan"></label>
                            <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Masukan Solusi Penyakit" value="<?= $sakit['keterangan'] ?>">
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
                    <h5 class="modal-title">Tambah Data Penyakit</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('penyakit/tambah'); ?>" method="post">
                        <div class="form-group">
                            <label for="kode"></label>
                            <input type="text" name="kode" id="kode" class="form-control" placeholder="Masukan Kode Penyakit">
                        </div>
                        <div class="form-group">
                            <label for="nama_penyakit"></label>
                            <input type="text" name="nama_penyakit" id="nama_penyakti" class="form-control" placeholder="Masukan Nama Penyakit">
                        </div>
                        <div class="form-group">
                            <label for="keterangan"></label>
                            <input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Masukan Keterangan Penyakit">
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
                    <a href="/penyakit/hapus/<?= $sakit['id']; ?>" class="btn btn-primary">Yakin</a>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>