<?= $this->extend('layouts/home_layout') ?>

<?= $this->section('head') ?>
<title><?= lang('Auth.login') ?></title>
<style>
  .password-toggle {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    background: none;
    border: none;
    cursor: pointer;
    color: #6c757d;
    z-index: 5;
  }
  .password-toggle:hover {
    color: #495057;
  }
  .password-input-group {
    position: relative;
  }
</style>
<?= $this->endSection() ?>

<?= $this->section('back'); ?>
<a href="<?= base_url(); ?>" class="btn btn-outline-primary m-3 position-absolute">
  <i class="ti ti-arrow-left"></i>
  Kembali
</a>
<?= $this->endSection(); ?>

<?= $this->section('content') ?>
<div class="full-height px-4 pt-8 my-5 text-center">
  <h1 class="display-5 fw-bold text-body-emphasis">PEMINJAMAN BAJU KOSTUM</h1>
  <div class="overflow-hidden" style="max-height: 45vh;">
    <div class="container px-5">
      <img src="<?= base_url('assets/images/logo.png'); ?>" alt="Example image" width="362" height="146" loading="lazy">
    </div>
  </div>
</div>

<div class="container d-flex justify-content-center p-5">
  <div class="card col-12 col-md-5 shadow-sm">
    <div class="card-body">
      <h5 class="card-title mb-5"><?= lang('Auth.login') ?></h5>

      <?php if (session('error') !== null) : ?>
        <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
      <?php elseif (session('errors') !== null) : ?>
        <div class="alert alert-danger" role="alert">
          <?php if (is_array(session('errors'))) : ?>
            <?php foreach (session('errors') as $error) : ?>
              <?= $error ?>
              <br>
            <?php endforeach ?>
          <?php else : ?>
            <?= session('errors') ?>
          <?php endif ?>
        </div>
      <?php endif ?>

      <?php if (session('message') !== null) : ?>
        <div class="alert alert-success" role="alert"><?= session('message') ?></div>
      <?php endif ?>

      <form action="<?= url_to('login') ?>" method="post">
        <?= csrf_field() ?>

        <!-- Email -->
        <div class="mb-2">
          <input type="email" class="form-control" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required />
        </div>

        <!-- Password -->
        <div class="mb-2 password-input-group">
          <input type="password" class="form-control" name="password" id="password" inputmode="text" autocomplete="current-password" placeholder="<?= lang('Auth.password') ?>" required />
          <button type="button" class="password-toggle" id="togglePassword">
            <i class="ti ti-eye"></i>
          </button>
        </div>

        <!-- Remember me -->
        <!-- <?php if (setting('Auth.sessionConfig')['allowRemembering']) : ?>
          <div class="form-check">
            <label class="form-check-label">
              <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked<?php endif ?>>
              <?= lang('Auth.rememberMe') ?>
            </label>
          </div>
        <?php endif; ?> -->

        <div class="d-grid col-12 mx-auto m-3">
          <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.login') ?></button>
        </div>

        <?php if (setting('Auth.allowMagicLinkLogins')) : ?>
          <p class="text-center"><?= lang('Auth.forgotPassword') ?> <a href="<?= url_to('magic-link') ?>"><?= lang('Auth.useMagicLink') ?></a></p>
        <?php endif ?>

        <!-- <?php if (setting('Auth.allowRegistration')) : ?>
          <p class="text-center"><?= lang('Auth.needAccount') ?> <a href="<?= url_to('register') ?>"><?= lang('Auth.register') ?></a></p>
        <?php endif ?> -->

      </form>
      <script>
        const togglePassword = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');

        togglePassword.addEventListener('click', function () {
          const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
          passwordInput.setAttribute('type', type);
          
          // Toggle eye icon
          const eyeIcon = this.querySelector('i');
          if (type === 'text') {
            eyeIcon.classList.remove('ti-eye');
            eyeIcon.classList.add('ti-eye-off');
          } else {
            eyeIcon.classList.remove('ti-eye-off');
            eyeIcon.classList.add('ti-eye');
          }
        });
      </script>
    </div>
  </div>
</div>

<?= $this->endSection() ?>