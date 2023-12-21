<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php echo base_url('welcome'); ?>">
        <div class="sidebar-brand-icon">
          <i class="fas fa-shopping-bag"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SANDALIN</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        KATEGORI PRODUK
      </div>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/aksesoris'); ?>">
          <i class="fas fa-fw fa-shoe-prints"></i>
          <span>Aksesoris Sandal</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/sandal_pria'); ?>">
          <i class="fas fa-fw fa-running"></i>
          <span>Sandal Pria</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/sandal_wanita'); ?>">
          <i class="fas fa-fw fa-female"></i>
          <span>Sandal Wanita</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('kategori/sandal_anak'); ?>">
          <i class="fas fa-fw fa-baby"></i>
          <span>Sandal Anak-Anak</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
    </ul>
    
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <?php echo form_close(); ?>
          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            <div class="navbar">
              <ul class="nav navbar-nav navbar-right ">
                <li>

                  <?php
                  $keranjang = '<i class="fas fa-shopping-cart text-success"></i> : ' . $this->cart->total_items() . ' Items';
                  echo anchor('dashboard/detail_keranjang', $keranjang);
                  ?>

                </li>
              </ul>
              <div class="topbar-divider d-none d-sm-block"></div>

              <ul class="nav navbar-nav navbar-right">
                <?php if ($this->session->userdata('username')) {; ?>
                  <li>
                    <div>Selamat Datang : <?php echo $this->session->userdata('username'); ?></div>
                  </li>

                  <li>
                    <?php echo anchor('auth/logout_user', '<i class="fa fa-sign-out-alt ml-2"></i> Logout'); ?>
                  </li>
                <?php } else {; ?>
                  <li>
                    <?php echo anchor('auth/login', '<i class="fa fa-user text-secondary mr-2"></i>Login'); ?>
                  </li>
                <?php }; ?>
              </ul>
            </div>

          </ul>

        </nav>
        <!-- End of Topbar -->