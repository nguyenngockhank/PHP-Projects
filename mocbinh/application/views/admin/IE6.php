<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <!--<link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />-->


        <?php if (isset($css_files)): ?>
            <?php foreach ($css_files as $file): ?>
                <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
            <?php endforeach; ?>
        <?php endif; ?>

        <link rel="Shortcut Icon" type="image/ico" href="http://icons.iconarchive.com/icons/iconshock/real-vista-development/32/ruby-icon.png" />
        <script type="text/javascript">var site_url = '<?= site_url() ?>'</script>

        <style>
            #navbar{
                background-color: black;
                color: white;
            }
            #navbar a{
                display: inline-block;
                color: white;
                padding: 5px 7px 5px 10px;
                font-weight: bold;
            }
            #exit{
                float: right;
            }
            .clear{
                clear: both;
            }
            #output_wrapper{     
                background-color: white;
                color: black;
            }
            h2{
                padding-left: 10px;
                margin: 7px 0;
            }
            .success{
                color: green;
            }
            .error{
                color: red;
            }
        </style>

    </head>
    <body>
        <?php $this->load->view('admin/IE6/navbar') ?>
        <!--<div style="height: 1px; background-color: white;"></div>-->
        <div id="output_wrapper">
            <?php $this->load->view('admin/IE6/' . $block) ?>
        </div>

         <script type="text/javascript" src="<?php echo base_url(), 'assets/grocery_crud/js/jquery-1.10.2.min.js' ?>"></script>
           
        
        <?php if (isset($js_files)): ?>
            <?php foreach ($js_files as $file): ?>
                <script type="text/javascript" src="<?php echo base_url(), 'assets/js/', $file, '.js'; ?>"></script>
            <?php endforeach; ?>
        <?php endif; ?>
    </body>
</html>
