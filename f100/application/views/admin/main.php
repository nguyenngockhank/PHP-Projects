<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap-responsive.min.css" />
        <style>
            body
            {
                font-family: Arial;
                font-size: 14px; margin-top: 30px;
            }
            .box{
                height: 130px;
                color: white;
                transition: all 1s;
                margin-bottom: 20px;
            }
            .box:hover{
                box-shadow:  10px 10px 5px #888888;
                cursor: pointer;
            }
            .box h2{
                padding: 5px 30px;
            }
            .message{
                font-size: 20px;
                text-align: center;
            }
            .box.active{
                border: 2px solid #0092ef;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>

        <div style='height:40px;'></div>  

        <div class="container">
            <div class="row">
                <div id="orders" data-link="order" class="span3 box" style='background: #f0a30a'>
                    <h2> ĐƠN HÀNG </h2>
                    <div class="message">
                        <span class="alert-num" id="new_order"> 0 </span> đơn hàng mới
                    </div>
                </div>
                <div class="span3 box" data-link="message" style='background: #60a'>
                    <h2> TIN NHẮN MỚI </h2>
                    <div class="message">
                        <span class="alert-num" id="new_message"> 0 </span> tin nhắn mới
                    </div>
                </div>
                <div class="span3 box" data-link="blog" style='background: #e51400'>
                    <h2> BÀI VIẾT </h2>
                    <div class="message">

                    </div>
                </div>

                <div class="span3 box" data-link="menu" style='background: #11528f'>
                    <h2> THỰC ĐƠN </h2>
                    <div class="message">

                    </div>
                </div>
            </div>

        </div>
        <script>var site_url = '<?= site_url() ?>'</script>
        <script src="<?= site_url() ?>assets/grocery_crud/js/jquery-1.10.2.min.js"></script>
        <script src="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js"></script>
    </body>
</html>
