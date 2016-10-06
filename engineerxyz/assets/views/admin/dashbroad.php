<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>/assets/css/admin.css" />
           <link rel="Shortcut Icon" type="image/ico" href="http://icons.iconarchive.com/icons/iconshock/real-vista-development/32/ruby-icon.png" />
       
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>

        <div id="output_wrapper" class="container">
            <?php echo $output; ?>
        </div>
        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
    </body>
</html>
