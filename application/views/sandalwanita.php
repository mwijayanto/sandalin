<div class="container-fluid">

  <div class="row text-center mt-4">

    <?php foreach ($sandalwanita as $swanita) : ?>
      <div class="card ml-2 mb-2" style="width: 16rem;">
        <img src="<?php echo base_url() . '/uploads/' . $swanita->gambar; ?>" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title mb-1"><?php echo $swanita->nama_brg; ?></h5>
          <small><?php echo $swanita->keterangan; ?></small><br />
          <span class="badge badge-pill badge-info mb-3">Rp. <?php echo number_format($swanita->harga, 0, ',', '.'); ?></span>
          <?php echo anchor('dashboard/tambah_keranjang/' . $swanita->id_brg, '<div class="btn btn-success btn-sm">Tambah ke Keranjang</div>'); ?>
          <?php echo anchor('dashboard/detail_produk/' . $swanita->id_brg, '<div class="btn btn-primary btn-sm">Detail</div>'); ?>

        </div>
      </div>
    <?php endforeach; ?>

  </div>
</div>