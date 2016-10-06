<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h1><span class="glyphicon glyphicon-book"></span> Các thủ thuật </h1>
        <?php $this->load->view('article/listarticle'); ?>
        <!-- START PHAN TRANG -->
        <div class="btn-group">
            <a href="<?= site_url() , 'thu-thuat'  ?>" class="btn btn-default">1</a>
            <?php for ($i = 2; $i <= $page_num; ++$i) : ?>
                <a href="<?= site_url() , 'thu-thuat/' , $i ?>" class="btn btn-default"><?= $i ?></a>
            <?php endfor; ?>
        </div>
        <!-- END PHAN TRANG -->
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>

<?php $this->load->view('template/foot'); ?>