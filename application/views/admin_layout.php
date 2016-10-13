<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $title; ?></title>
    <link href="<?= base_url('css/foundation.css'); ?>" rel="stylesheet" />
    <link href="<?= base_url('css/foundation-icons/foundation-icons.css'); ?>" rel="stylesheet" />
    <link href="<?= base_url('css/app.css'); ?>" rel="stylesheet" />
</head>
<body>
    <div id="main-content">
        <div id="left-side" class="small-2 columns remove-padding">
            <div id="title-app">
                <h5><i class="fi-home"></i> Stocker</h5>
            </div>
            <div id="left-side-bar">
                <ul>
                    <?= left_side_bar_items(); ?>
                </ul>
            </div>
        </div>

        <div id="right-side" class="small-10 columns remove-padding">
            <div class="top-bar">
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
        </div>
    </div>

    <script src="<?= base_url('js/vendor/jquery.js'); ?>"></script>
    <script src="<?= base_url('js/vendor/what-input.js'); ?>"></script>
    <script src="<?= base_url('js/vendor/foundation.js'); ?>"></script>
    <script src="<?= base_url('js/app.js'); ?>"></script>
</body>
</html>