<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>F100</title>
        <link rel="shortcut icon" href="<?= base_url(); ?>assets/images/seafood.ico">
        <!-- Bootstrap -->
        <link href="<?= base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?= base_url(); ?>assets/css/style.css" rel="stylesheet" type="text/css"/>   
        <link href="<?= base_url(); ?>assets/css/lightbox.css" rel="stylesheet" type="text/css"/>
        <script type='text/javascript'>
            var txt = "F100 Giữ Tươi Xanh - Lưu Dinh Dưỡng - ";
            var espera = 200;
            var refresco = null;
            function rotulo_title()
            {
                document.title = txt;
                txt = txt.substring(1, txt.length) + txt.charAt(0);
                refresco = setTimeout("rotulo_title()", espera);
            }
            rotulo_title();
            var site_url = '<?= site_url() ?>';
            var class_name = '<?= $this->router->fetch_class() ?>';
            var method_name = '<?= $this->router->fetch_method() ?>';
        </script>
    </head>
    <body>
        <div id="main">
            <header>
                <div id="info">
                    <a href="<?= site_url(); ?>" title="F100">
                        <div class="logo">

                        </div>
                    </a>
                    <div id="info-header">
                        <div id="info-menu">
                            <ul class="list-inline list-unstyled">
                                <li><a href="<?= site_url(),'article/category/15' ?>" title="menu">Tin Tức & Quảng Cáo</a></li>|
                                <li><a href="#" title="menu">Đào Tạo</a></li>|
                                <li><a href="#" title="menu">Chiến Lược</a></li>|
                                <li><a href="<?= site_url(), 'welcome/about' ?>" title="menu">Liên Hệ</a></li>
                                
                            </ul>
                        </div>
                        <div id="info-number">
                            (08) 3841 2763 
                        </div>
                    </div>
                </div>
                <div id="main-menu">
                    <ul id="menu-main-menu" class="list-inline list-unstyled">
                        <li><a href="<?= base_url(); ?>"  title="menu"><div>Trang Chủ</div></a></li>
                        <li><a href="<?= base_url(); ?>product" title="menu"><div>Sản Phẩm</div></a></li>
                        <li><a href="<?= base_url(); ?>welcome/phanphoi" title="menu"><div>Kênh Phân Phối</div></a></li>
                        <?php foreach ($this->news_cat as $key => $cat) : ?>
                            <li><a href="<?= site_url(), 'article/category/', $cat['id'] ?>" title="menu"><div><?= $cat['title'] ?></div></a></li>
                        <?php endforeach; ?>
					
                        <li><a href="<?= base_url(); ?>welcome/about" title="menu"><div>Liên Hệ</div></a></li>
                    </ul>
                </div>
            </header>