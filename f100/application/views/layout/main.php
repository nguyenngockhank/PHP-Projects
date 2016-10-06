<?php $this->load->view('layout/header'); ?> 

<div id="main-wrapper">
    <?php $this->load->view('layout/banner'); ?> 
    <div id="content">
        <div class="content-title"> <img class="nav-left" src="<?= base_url(); ?>assets/images/navleft.png"> Giới Thiệu</div>
        <div class="main-content">
            <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
            <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
            <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
            <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
            <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
        </div>
    </div>
    <?php $this->load->view('layout/side-bar'); ?> 

</div>
<div id="boxs">
    <?php foreach ($products as $product): ?>
        <div class="box">
            <?php
            $src = base_url() . 'images/product/' . $product['img'];
            ?>
            <div><?= $product['title'] ?></div>
            <img src="<?= $src ?>" style="width: 200px; height: 100px;">
            <a href="<?= site_url(), 'product/category/', $product['cat_id'] ?>" title="">XEM THÊM &raquo;</a>
        </div>
    <?php endforeach; ?>
</div>
<?php $this->load->view('layout/footer'); ?> 