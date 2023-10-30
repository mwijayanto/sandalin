<div class="container-fluid">

  <div class="row text-center mt-4">

    <?php foreach ($sandalpria as $spria) : ?>
      <div class="card ml-2 mb-2" style="width: 16rem;">
        <img src="<?php echo base_url() . '/uploads/' . $spria->gambar; ?>" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title mb-1"><?php echo $spria->nama_brg; ?></h5>
          <small><?php echo $spria->keterangan; ?></small><br />
          <span class="badge badge-pill badge-info mb-3">Rp. <?php echo number_format($spria->harga, 0, ',', '.'); ?></span>
          <?php echo anchor('dashboard/tambah_keranjang/' . $spria->id_brg, '<div class="btn btn-success btn-sm">Tambah ke Keranjang</div>'); ?>
          <?php echo anchor('dashboard/detail_produk/' . $spria->id_brg, '<div class="btn btn-primary btn-sm">Detail</div>'); ?>

        </div>
      </div>
    <?php endforeach; ?>

  </div>
</div>