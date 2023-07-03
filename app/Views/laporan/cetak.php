<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cetak Hasil Diagnosa</title>
  <style>
    .table {
      width: 100%;
      border-collapse: collapse;
    }

    .table,
    th,
    td {
      padding: 0.75rem;
      border: 1px solid #2a2a2b;
      color: #212529;
    }

    .text-center {
      text-align: center;
    }

    ul {
      margin: 0;
      padding-left: 15px;
    }
  </style>
</head>


<style>
  .tengah {
    border-bottom: 3px solid #000;
    width: 100%;
    text-align: center;
    padding: 10px;
  }
</style>
<!-- <img src="..." width="90" height="90" alt=""> -->

<body>

  <div style="margin-right: 0" class="tengah">
    <div class="text-center" style="font-size: 23px"> SURYANI INSTITUTE for MENTAL HEALTH</div>
    <div class="text-center" style="font-size: 23px"> FOUNDATION</div>
    <div class="text-center" style="font-size: 13px"> Jl. Gandapura No.30 Denpasar-Bali. Telp. (0361) 467553 Fax # (0361) 462878</div>
    <div class="text-center" style="font-size: 13px"> Email: info@suryani-institute.com Website: www.suryani-institute.com</div>

  </div>
  <br>
  <h3 class="text-center">HASIL PEMERIKSAAN</h3>
  <b class="text-left" style="margin-left: 15px">IDENTITAS PASIEN</b>
  <table class="table">
    <tr>
      <td>Nama Lengkap</td>
      <td><?= $laporan['nama_pasien'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><?= $laporan['email'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Tanggal Lahir</td>
      <td><?= date('d F Y', strtotime($laporan['tgl_lahir'])) ?? '-' ?></td>
    </tr>
    <tr>
      <td>No Telepon</td>
      <td><?= $laporan['no_telp'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Alamat</td>
      <td><?= $laporan['alamat'] ?? '-' ?></td>
    </tr>
  </table><br>
  <b class="text-left" style="margin-left: 15px">HASIL DIAGNOSA PASIEN</b>
  <table class="table">
    <tr>
      <td>Gejala yang dialami</td>
      <td>
        <ul>
          <?php foreach ($gejala as $key => $value) : ?>
            <li><?= $value['nama_gejala'] ?? '-' ?> (<?= $value['kode'] ?? '' ?>)</li>
          <?php endforeach; ?>
        </ul>
      </td>
    </tr>
    <tr>
      <td>Penyakit yang dialami</td>
      <td><b><?= $penyakit['nama_penyakit'] ?? 'Tidak sedang mengalami masalah kesehatan umum' ?></b></td>
    </tr>
    <tr>
      <td>Persentase keyakinan</td>
      <td><b>
          <font color='red'><?= $laporan['hasil_cf'] ?? '-' ?>%</td>
      </font>
      </b>
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
  <div style="margin-left: 15px">
    <div style="font-size: 15px"> Catatan : </div>
    <div style="font-size: 15px"> Hasil Diagnosa digunakan sebagai pedoman pemeriksaan lebih lanjut dengan Dokter Spesialis Kesehatan Jiwa.</div>
    <div style="font-size: 13px"> *dapat digunakan sebagai rujukan pemeriksaan Psikoterapi.</div>
  </div>
  <br>
  <br>
  <div style="margin-left: 15px">
    <div style="font-size: 15px"> </div>
    <div style="font-size: 15px"> Dicetak tanggal : <b><?= date('d-m-y') ?></b></div>
    <div style="font-size: 13px"> Hasil Diagnosa dapat berlaku 30 Hari sejak tanggal cetak.</div>

  </div>
</body>

</html>