<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h2><span class="glyphicon glyphicon-search"></span> Kết quả từ khoá: "<?= $keyword ?>"</h2>
        <?php if (!empty($products)): ?>
            <?php $this->load->view('product/listproduct') ?>
            <!-- START PHAN TRANG -->
            <div class="btn-group">
                <a href="<?= site_url(),'product/search/?k=',$keyword ?>" class="btn btn-default">1</a>
                <?php  for ($i = 2; $i <= $page_num; ++$i) :?>
                    <a href="<?= site_url(),'product/search/', $i,'/?k=',$keyword ?>" class="btn btn-default"><?= $i ?></a>
                <?php endfor; ?>
            </div>
            <!-- END PHAN TRANG -->
        <?php else: ?>
            <em>Không tìm thấy kết quả phù hợp</em>
        <?php endif; ?>
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>

<?php $this->load->view('template/foot'); ?>