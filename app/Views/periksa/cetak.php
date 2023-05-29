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
    .table, th, td {
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

<body>
  <h3 class="text-center">Hasil Diagnosa</h3>
  <table class="table">
    <tr>
      <td>Nama Lengkap</td>
      <td><?= $pasien['nama'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><?= $pasien['email'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Tanggal Lahir</td>
      <td><?= date('d F Y', strtotime($pasien['tgl_lahir'])) ?? '-' ?></td>
    </tr>
    <tr>
      <td>No Telepon</td>
      <td><?= $pasien['no_telp'] ?? '-' ?></td>
    </tr>
    <tr>
      <td>Alamat</td>
      <td><?= $pasien['alamat'] ?? '-' ?></td>
    </tr>
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
      <td><?= $penyakit['nama_penyakit'] ?? $penyakit ?></td>
    </tr>
    <tr>
      <td>Persentase keyakinan</td>
      <td><?= $cf ?? '-' ?>%</td>
    </tr>
    <tr>
      <td>Solusi</td>
      <td><?= $penyakit['keterangan'] ?? '-' ?></td>
    </tr>
  </table>
</body>

</html>