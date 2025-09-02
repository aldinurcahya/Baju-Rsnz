<?= $this->extend('layouts/home_layout') ?>

<?= $this->section('head') ?>
<title>Sistem Peminjaman Kostum</title>
<style>
  .full-height {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 70vh; /* Mengatur tinggi penuh viewport */
  }
</style>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<div class="full-height px-4 pt-8 my-5 text-center">
  <h1 class="display-5 fw-bold text-body-emphasis">PEMINJAMAN BAJU KOSTUM</h1>
  <div class="overflow-hidden" style="max-height: 45vh;">
    <div class="container px-5">
      <img src="<?= base_url('assets/images/logo.png'); ?>" alt="Example image" width="362" height="146" loading="lazy">
    </div>
  </div>
  <div class="col-lg-6 mx-auto">
    <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
      <a href="<?= base_url('login'); ?>" class="btn btn-dark btn-lg px-4 me-sm-3">Login</a>
    </div>
  </div>
</div>
<?= $this->endSection() ?>
