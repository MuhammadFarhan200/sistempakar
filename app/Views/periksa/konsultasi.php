<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="main-wrapper">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div class="col-lg-6 bg-white mx-auto">
        <div class="p-3">
            <h2 class="mt-3 text-center">Selamat Datang!</h2>
            <p class="text-center"><i>Sistem Pakar Diagnosa Gangguan Jiwa</i></p>
            <form action="<?= route_to('periksa/konsultasi/add') ?>" method="post">
                <input type="hidden" name="user_id" value="<?= user()->id ?>">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="text-dark" for="uname">Nama Lengkap</label>
                            <input class="form-control" id="nama" name="nama" type="text" required>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="text-dark" for="pwd">Email</label>
                            <input class="form-control" id="email" name="email" type="text" required>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="text-dark" for="pwd">Tanggal Lahir</label>
                            <input class="form-control" id="tgl_lahir" name="tgl_lahir" type="date" required">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="text-dark" for="pwd">No Telepon</label>
                            <input class="form-control" id="no_telp" name="no_telp" type="text" required">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label class="text-dark" for="pwd">Alamat</label>
                            <textarea name="alamat" id="alamat" rows="6" class="form-control" required></textarea>
                        </div>
                    </div>
                    <div class="col-lg-12 text-center">
                        <button type="submit" name="konsultasi" class="btn btn-block btn-dark">Mulai Konsultasi</button>
                        <hr>
                        Presented by <a href="https://suryani-institute.com" target="_blank" rel="noopener noreferrer">Suryani Institute for Mental Health</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>