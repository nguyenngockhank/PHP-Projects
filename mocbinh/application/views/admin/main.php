<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap-responsive.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/admin.css" />
        <link rel="Shortcut Icon" type="image/ico" href="http://icons.iconarchive.com/icons/iconshock/real-vista-development/32/ruby-icon.png" />

    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>
        <div style='height:10px;'></div>  
        <div class="container">
            <?php $this->load->view('admin/block/' . $block) ?>
        </div>
        <script>var site_url = '<?= site_url() ?>'</script>
        <script src="<?= site_url() ?>assets/grocery_crud/js/jquery-1.10.2.min.js"></script>
        <script src="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js"></script>
<!--        <script src="<?= site_url() ?>js/jquery.cookie.js"></script>
        <script src="<?= site_url() ?>js/ion.sound.js"></script>-->

        <?php if (isset($js_files)):?>
            <?php foreach ($js_files as $file): ?>
                <script src="<?php echo base_url(), 'assets/js/', $file, '.js'; ?>"></script>
            <?php endforeach; ?>
        <?php endif; ?>
    </body>
</html>
