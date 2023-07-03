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

      <form action="<?= route_to('periksa/konsultasi/olah') ?>" method="post" id="pertanyaan-form">
        <div class="card text-center">
          <div class="card-header">
            <h5>Jawablah Pertanyaan dibawah ini sesuai dengan kondisi Anda sebenarnya!</h5>
          </div>
          <div class="card-body">
            <p class="card-text">
              <?= $pertanyaan['gejala_id'] ?>. <?= $pertanyaan['nama_gejala'] ?> ?
            </p>
            <table class="mx-auto">
                <tr class="text-center">
                    <input type="text" class="d-none" name="jawaban" id="jawaban" value="">
                    <td class="px-3"><label><input id="ya-<?= $pertanyaan['rule_id'] ?>" name="next" type="radio" value="<?= $pertanyaan['ya'] ?>" required> Benar</label></td>
                    <td class="px-3"><label><input id="tidak-<?= $pertanyaan['rule_id'] ?>" name="next" type="radio" value="<?= $pertanyaan['tidak'] ?>" required> Tidak</label></td>
                </tr>
            </table>
            <button type="button" id="lanjut" class="btn btn-primary mt-4">Lanjut</button>
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
    $('#lanjut').click(function(e) {
      e.preventDefault();
      if ($('input[name=next]:checked').length == 0) {
        alert('Pilih salah satu jawaban terlebih dahulu!');
        return false;
      }
      if ($('#ya-<?= $pertanyaan['rule_id'] ?>').is(':checked')) {
        if (<?= $pertanyaan['rule_id'] ?> == 1) {
          $('#jawaban').val('1')
        }
        $('#jawaban').val('<?= $pertanyaan['rule_id'] ?>')
      }
      $('#pertanyaan-form').submit();
    });
    // $('#ya-rule_id').click(function() {
    //   if (rule_id == 1) {
    //     $('#jawaban').val('1')
    //   }
    //   $('#jawaban').val(rule_id')
    // });
  });
</script>
<?= $this->endSection(); ?>

