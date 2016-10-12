<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $title; ?></title>
    <link href="<?= base_url('css/foundation.css'); ?>" rel="stylesheet" />
    <link href="<?= base_url('css/app.css'); ?>" rel="stylesheet" />
</head>
<body>
    <div class="top-bar">
      <div class="top-bar-title">
        <span data-responsive-toggle="responsive-menu" data-hide-for="medium">
          <button class="menu-icon dark" type="button" data-toggle></button>
        </span>
        <strong>Stock App</strong>
      </div>
      <div id="responsive-menu">
        <div class="top-bar-right">
          <ul class="dropdown menu" data-dropdown-menu>
            <?= top_bar_right_items(); ?>
          </ul>
        </div>
      </div>
    </div>

    <div id="content">
        <?php $this->load->view($content); ?>
    </div>

    <script src="<?= base_url('js/vendor/jquery.js'); ?>"></script>
    <script src="<?= base_url('js/vendor/what-input.js'); ?>"></script>
    <script src="<?= base_url('js/vendor/foundation.js'); ?>"></script>
    <script src="<?= base_url('js/app.js'); ?>"></script>
</body>
</html>