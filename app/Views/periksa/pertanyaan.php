<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid">
  <div class="row">
    <div class="col-lg-10 mx-auto">

      <?php if (session()->get('message')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Data Berhasil </strong> Silahkan periksa kembali.
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

      <form action="<?= route_to('periksa/konsultasi/olah') ?>" method="post">
        <div class="card text-center">
          <div class="card-header">
            <h5>Jawablah Pertanyaan dibawah ini sesuai dengan kondisi Anda sebenarnya!</h5>
          </div>
          <div class="card-body">
            <p class="card-text">
              <?= $pertanyaan['id'] ?>. <?= $pertanyaan['nama_gejala'] ?> ?
            </p>
            <table class="mx-auto">
                <tr class="text-center">
                    <input type="text" class="d-none" name="jawaban" id="jawaban" value="">
                    <td class="px-3"><input id="ya-<?= $pertanyaan['id'] ?>" name="next" type="radio" value="<?= $pertanyaan['ya'] ?>" required> Benar</td>
                    <td class="px-3"><input id="tidak-<?= $pertanyaan['id'] ?>" name="next" type="radio" value="<?= $pertanyaan['tidak'] ?>" require> Tidak</td>
                </tr>
            </table>
            <button type="submit" id="lanjut" class="btn btn-primary mt-4">Lanjut</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?= $this->endSection(); ?>

<?= $this->section('personal-script'); ?>
<script>
  $(document).ready(function() {
    $('#ya-<?= $pertanyaan['id'] ?>').click(function() {
      if (<?= $pertanyaan['id'] ?> == 1) {
        $('#jawaban').val('G1')
      }
      $('#jawaban').val('<?= $pertanyaan['kode'] ?>')
    });
  });
</script>
<?= $this->endSection(); ?>

