<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">

        </div>
        <div class="sidebar-brand-text mx-3">SIPAGAWA</div>
    </a>

    <?php if (in_groups('admin')) : ?>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            User Management
        </div>

        <!-- Nav Item - User List -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin'); ?>">
                <i class="fas fa-users"></i>
                <span>User List</span></a>
        </li>
    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        User Profile
    </div>

    <!-- Nav Item - My Profile -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('user'); ?>">
            <i class="fas fa-user"></i>
            <span>My Profile</span></a>
    </li>

    <!-- Nav Item - Edit -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-user-edit"></i>
            <span>Edit Profile</span></a>
    </li>

    <?php if (in_groups('admin')) : ?>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Data Kesehatan
        </div>

        <!-- Nav Item - Gejala -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('gejala'); ?>">
                <i class="fas fa-notes-medical"></i>
                <span>Data Gejala</span></a>
        </li>
        <!-- Nav Item - Penyakit -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('penyakit'); ?>">
                <i class="fas fa-syringe"></i>
                <span>Data Penyakit</span></a>
        </li>

    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">
        Data Pemeriksaan
    </div>

    <!-- Nav Item - Rekam Medis -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('periksa'); ?>">
            <i class="fas fa-hospital-user"></i>
            <span>Periksa Rekam Medis</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt"></i>
            <span>Keluar</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>