<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title text-center">Hasil Diagnosa</h5>
      <table class="table table-bordered">
        <tr>
          <td>Nama Lengkap</td>
          <td><?= $pasien['nama'] ?? '' ?></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><?= $pasien['email'] ?? '' ?></td>
        </tr>
        <tr>
          <td>Tanggal Lahir</td>
          <td><?= date('d F Y', strtotime($pasien['tgl_lahir'])) ?? '' ?></td>
        </tr>
        <tr>
          <td>No Telepon</td>
          <td><?= $pasien['no_telp'] ?? '' ?></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td><?= $pasien['alamat'] ?? '' ?></td>
        </tr>
        <tr>
          <td>Gejala yang dialami</td>
          <td>
            <ul class="m-0 pl-3">
              <?php foreach ($gejala as $key => $value) : ?>
                <li><?= $value['nama_gejala'] ?? '' ?> (<?= $value['kode'] ?? '' ?>)</li>
              <?php endforeach; ?>
            </ul>
          </td>
        </tr>
        <tr>
          <td>Penyakit yang dialami</td>
          <td><?= $penyakit['nama_penyakit'] ?? $penyakit ?></td>
        </tr>
        <tr>
          <td>Persentase Keyakinan</td>
          <td><?= $cf ?? '-' ?>%</td>
        </tr>
        <tr>
          <td>Solusi</td>
          <td><?= $penyakit['keterangan'] ?? '-' ?></td>
        </tr>
        <tr>
          <td>Anjuran Obat</td>
          <td><?= $penyakit['anjuran'] ?? '-' ?></td>
        </tr>
      </table>
      <div class="d-flex justify-content-end">
        <a href="<?= base_url('periksa/konsultasi/cetak') ?>" target="_blank" class="btn btn-success">Cetak</a>
        <a href="<?= base_url('periksa/konsultasi/hasil/simpan') ?>" class="btn btn-primary ml-3">Simpan</a>
      </div>
    </div>
  </div>
</div>

<?= $this->endSection(); ?>