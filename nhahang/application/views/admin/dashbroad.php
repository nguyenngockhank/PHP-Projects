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
            input[type="text"] {
                width: 500px;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>
        
        <div>
            <?php echo $output; ?>
        </div>
        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
    </body>
</html>
