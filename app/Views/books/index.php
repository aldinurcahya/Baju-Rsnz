<?= $this->extend('layouts/admin_layout') ?>

<?= $this->section('head') ?>
<title>Daftar Baju</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<?php if (session()->getFlashdata('msg')) : ?>
  <div class="pb-2">
    <div class="alert <?= (session()->getFlashdata('error') ?? false) ? 'alert-danger' : 'alert-success'; ?> alert-dismissible fade show" role="alert">
      <?= session()->getFlashdata('msg') ?>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
  </div>
<?php endif; ?>

<div class="card">
  <div class="card-body">
    <div class="row mb-2">
      <div class="col-12 col-lg-5">
        <h5 class="card-title fw-semibold mb-4">
          <?php if (isset($category)) : ?>
            <?= 'Data Kategori ' . $category; ?>
          <?php elseif (isset($rack)) : ?>
            <?= 'Data Rak ' . $rack; ?>
          <?php else : ?>
            Data Baju
          <?php endif; ?> 
        </h5>
      </div>
      <div class="col-12 col-lg-7">
        <div class="d-flex gap-2 justify-content-md-end">
          <div>
            <form action="" method="get" class="d-flex flex-wrap gap-2">
              <!-- Search Input -->
              <div class="input-group" style="min-width: 200px;">
                <input type="text" class="form-control" name="search" value="<?= $search ?? ''; ?>" placeholder="Cari baju" aria-label="Cari baju">
                <button class="btn btn-outline-secondary" type="submit">
                  <i class="ti ti-search"></i>
                </button>
              </div>
            </form>
          </div>
          <div>
            <a href="<?= base_url('admin/books/new'); ?>" class="btn btn-primary py-2">
              <i class="ti ti-plus"></i>
              Tambah Data Baju
            </a>
          </div>
        </div>
      </div>

      <div class="col-12 col-lg-6">
        <div class="d-flex gap-2 justify-content-md-end">
          <div>
            <form action="" method="get" class="d-flex flex-wrap gap-2">
              <!-- Category Filter -->
              <div class="input-group" style="width: 150px;">
                <select class="form-select" name="category" onchange="this.form.submit()">
                  <option value="all" <?= empty($categoryId) || $categoryId == 'all' ? 'selected' : ''; ?>>Cari Kategori</option>
                  <?php foreach ($categories as $category) : ?>
                    <option value="<?= $category['id']; ?>" <?= $categoryId == $category['id'] ? 'selected' : ''; ?>>
                      <?= $category['name']; ?>
                    </option>
                  <?php endforeach; ?>
                </select>
              </div>
            
              <!-- Rack Filter -->
              <div class="input-group" style="width: 300px;">
                <select class="form-select" name="rack" onchange="this.form.submit()">
                  <option value="all" <?= empty($rackId) || $rackId == 'all' ? 'selected' : ''; ?>>Cari Rak & Kontainer</option>
                  <?php foreach ($racks as $rack) : ?>
                    <option value="<?= $rack['id']; ?>" <?= $rackId == $rack['id'] ? 'selected' : ''; ?>>
                      <?= $rack['name'] . ' - ' . $rack['floor']; ?>
                    </option>
                  <?php endforeach; ?>
                </select>
              </div>
                  
              <!-- Clear Filters Button -->
              <div style="width: 300px;">
              <?php if (!empty($search) || (!empty($categoryId) && $categoryId != 'all') || (!empty($rackId) && $rackId != 'all')) : ?>
                <a href="<?= base_url('admin/books'); ?>" class="btn btn-outline-danger">
                  <i class="ti ti-x"></i> Hapus Filter </a>
              <?php endif; ?>
              </div>

                  </form>
            </div>
          </div>
              
    </div>
    <div class="overflow-x-scroll">
      <table class="table table-hover table-striped">
        <thead class="table-light">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Foto</th>
            <th scope="col">Jenis</th>
            <th scope="col">Kategori</th>
            <th scope="col">Rak & Kontainer</th>
            <th scope="col">Jumlah</th>
            <th scope="col">Sisa Stock</th>
            <th scope="col" class="text-center">Aksi</th>
          </tr>
        </thead> 
        <tbody class="table-group-divider">
          <?php $i = 1 + ($itemPerPage * ($currentPage - 1)) ?>
          <?php if (empty($books)) : ?>
            <tr>
              <td class="text-center" colspan="7"><b>Tidak ada data</b></td>
            </tr>
          <?php endif; ?>
          <?php foreach ($books as $book) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td>
                <a href="<?= base_url("admin/books/{$book['slug']}"); ?>">
                  <div class="d-flex justify-content-center" style="max-width: 150px; height: 120px;">
                    <?php
                    $coverImageFilePath = BOOK_COVER_URI . $book['book_cover'];
                    ?>
                    <img class="mx-auto mh-100" src="<?= base_url((!empty($book['book_cover']) && file_exists($coverImageFilePath)) ? $coverImageFilePath : BOOK_COVER_URI . DEFAULT_BOOK_COVER); ?>" alt="<?= $book['title']; ?>">
                  </div>
                </a>
              </td>
              <td>
                <a href="<?= base_url("admin/books/{$book['slug']}"); ?>">
                  <p class="text-primary-emphasis text-decoration-underline"><b><?= $book['title']; ?></b></p>
                  <p class="text-body"><?= "Ukuran: {$book['author']}"; ?></p>
                </a>
              </td>
              <td><?= $book['category']; ?></td>
              <td><?= $book['rack']; ?> - <?= $book['floor']; ?></td>
              <td><?= $book['quantity']; ?></td>
              <td>
                <span class="badge <?= $book['remaining_stock'] > 0 ? 'bg-success' : 'bg-danger' ?>">
                  <?= $book['remaining_stock']; ?>
                </span>
              </td>
              <td>
                <a href="<?= base_url("admin/books/{$book['slug']}/edit"); ?>" class="d-block btn btn-primary w-100 mb-2">
                  <i class="ti ti-edit"></i>
                  Edit
                </a>
                <form action="<?= base_url("admin/books/{$book['slug']}"); ?>" method="post">
                  <?= csrf_field(); ?>
                  <input type="hidden" name="_method" value="DELETE">
                  <button type="submit" class="btn btn-danger w-100" onclick="return confirm('Apa anda yakin ingin menghapus data ini?');">
                    <i class="ti ti-trash"></i>
                    Delete
                  </button>
                </form>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
    <?= $pager->links('books', 'my_pager'); ?>
  </div>
</div>
<?= $this->endSection() ?>