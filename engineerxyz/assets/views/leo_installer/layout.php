<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <title>Le0's Installer</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<?= base_url($this->folder . '/css/bootstrap.min.css'); ?>" />
        <script>
            var method_name = '<?= $method_name ?>';
        </script>
    </head>
    <body>
        <?php $this->load->view($this->folder . '/component/navbar'); ?>
        <?php
        if (!isset($page)) {
            $page = $method_name;
        }
        $this->load->view($this->folder . '/page/' . $page);
        ?> 
        <script src="<?= base_url($this->folder . '/js/jquery.js') ?>"></script>
        <script src="<?= base_url($this->folder . '/js/bootstrap.min.js') ?>"></script>
        <script src="<?= base_url($this->folder . '/js/main.js') ?>"></script>
    </body>
</html>