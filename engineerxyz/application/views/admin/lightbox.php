<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap-responsive.min.css" />


        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
        <style type='text/css'>
            body
            {
                font-family: Arial;
                font-size: 14px; margin-top: 30px;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>

        <div style='height:20px;'></div>  
        <div class="container">
            <?php if (isset($title)) : ?>
                <div class="row">
                    <h1><?= $title ?>
                        <?php if (isset($categories)): ?>
                        <select id="selection" style="margin-top: 10px">
                                <?php foreach ($categories as $cat): ?>
                                    <?php if (isset($cat['child'])): ?>
                                        <optgroup label="<?= $cat['name'] ?>">
                                            <?php foreach ($cat['child'] as $child): ?>
                                                <option value="<?= $child['id'] ?>"><?= $child['name'] ?></option> 
                                            <?php endforeach; ?>
                                        </optgroup>
                                    <?php else: ?>
                                        <option value="<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        <?php endif; ?>
                    </h1>
                    <div>

                    </div>
                </div>
            <?php endif; ?>

        </div>
        <div class="container">
            <?php echo $output; ?>
        </div>

        <script src="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js"></script>
        <script src="<?= site_url() ?>js/admin-lightbox.js"></script>
    </body>
</html>
