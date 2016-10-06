<?php $this->load->view('layout/head') ?>
<img src="http://coffeemocbinh.com/asset/img/logo.png" style="
    position: absolute;
    height: 50px;
    left: 65px;
    top: 25px;
" class="visible-xs">
<p class="visible-xs" style="
    position: absolute;
    top: 58px;
    left: 161px;
    font-weight: bold;
    font-size: 10px;
">Đậm đà như cà phê Việt</p>

<div role="navigation" id="foo" class="nav-collapse">
    <div class="row hidden-xs">
        <div class="col-sm-8 col-sm-offset-2 col-xs-8 col-xs-offset-2">
            <a href="<?= site_url() ?>"><img src="<?= base_url("asset/img/logo.png") ?>" class="img-responsive"></a>
            <p style="color: white; font-weight: bold; font-size: 12px;" class="text-center">Đậm đà như cà phê Việt</p>
        </div>
    </div>
    <p class="visible-xs"><br><br><br><br></p>
    <ul class="list-inline list-unstyled text-center lang">
        <li class="actived"><a href="#"><img src="<?= base_url('asset/icons/vietnam.png') ?>"></a></li>
        <li><a href="#"><img src="<?= base_url('asset/icons/eng.png') ?>"></a></li>
        <li><a href="#"><img src="<?= base_url('asset/icons/france.png') ?>"></a></li>
    </ul>
    <div class="clearfix"></div>
    <ul id="menu">
        <li><a href="<?= base_url() ?>">Trang chủ</a></li>
        <li><a href="<?= about_href() ?>">Giới thiệu</a></li>
        <li><a href="<?= product_list_href() ?>">Sản phẩm cà phê</a></li>
		 <li><a href="http://mocbinhgroup.com" target="_blank">Sản phẩm bánh ngọt</a></li>
        <li><a href="<?= service_href() ?>">Dịch vụ</a></li>
        <li><a href="<?= news_href() ?>">Tin tức & sự kiện</a></li>
        <li><a href="<?= contact_href() ?>">Liên hệ</a></li>
    </ul>
    
</div>