<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
        <style type='text/css'>
            body {
                margin-top: 30px;
                font-family: Arial;
                font-size: 14px;
            }
            .crud-form input[type="text"], input[type="password"] {
                width: 500px;
            }
            .span12{
                margin-left: -10px;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>
        
        <div class="container">
            <?php echo $output; ?>
        </div>
        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
    </body>
</html>
