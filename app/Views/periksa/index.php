<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">
    <div class="card text-center">
        <div class="card-header">
            Pemeriksaan
        </div>
        <div class="card-body">
            <h5 class="card-title">Konsultasi kesehatan mental</h5>
            <p class="card-text">Digunakan untuk pasien yang kesehatan mental nya terganggu </p>
            <a href="<?= base_url('periksa/konsultasi'); ?>" class="btn btn-primary">Kunjungi Konsultasi</a>
        </div>
        <div class="card-footer text-body-secondary">
            2 days ago
        </div>
    </div>
    <br>
    <br>
    <div class="card text-center">
        <div class="card-header">
            Laporan
        </div>
        <div class="card-body">
            <h5 class="card-title">Laporan Pemeriksaan</h5>
            <p class="card-text">Laporan hasil konsultasi pasien</p>
            <a href="<?= base_url('periksa/laporan') ?>" class="btn btn-primary">Kunjungi Laporan</a>
        </div>
        <div class="card-footer text-body-secondary">
            2 days ago
        </div>
    </div>
</div>
<?= $this->endSection(); ?>