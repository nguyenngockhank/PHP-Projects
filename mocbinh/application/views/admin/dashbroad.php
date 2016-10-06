<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/yamm.css" /> 
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/metisMenu.css" />
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/font-awesome.min.css" />

        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/adminlib.css" />
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/admin.css" />
        <link rel="Shortcut Icon" type="image/ico" href="http://icons.iconarchive.com/icons/iconshock/real-vista-development/32/ruby-icon.png" />
        <script>
            var app_router = {
                controller: '<?= $this->router->fetch_class() ?>',
                directory: '<?= $this->router->fetch_directory() ?>',
                method: '<?= $this->router->fetch_method() ?>',
            };
            var site_url = '<?= site_url() ?>'
        </script>
    </head>
    <body>

        <?php $this->load->view('admin/comp/navbar'); ?>

        <div class="row">
            <div class="col-lg-2 col-md-2 col-sm-3">
                <?php $this->load->view('admin/comp/sidebar'); ?>
            </div>
            <div id="output_wrapper" class="col-lg-9 col-md-9 col-sm-8">
                <?php echo $output; ?>
            </div>
        </div>
        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
        <script>
            $(function() {
                $('#sidebar_menu').metisMenu();
            });
        </script>
        <script src="<?= base_url(), 'assets/js/metisMenu.js' ?>"></script>
        <script src="<?= base_url(), 'assets/js/jquery.cookie.js' ?>"></script>
        <script src="<?= base_url(), 'assets/js/admin.js' ?>"></script>
    </body>
</html>
