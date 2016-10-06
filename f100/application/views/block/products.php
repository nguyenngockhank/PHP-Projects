<div id="main-wrapper">
    <div id="list-product">
        <ul class="list-inline list-unstyled">
            <li><h1>Sản Phẩm</h1></li>
            <li><a href="<?= site_url(), 'product' ?>"> Tất cả </a></li>
            <?php foreach ($cates as $cate): ?> 
                | <li><a href="<?= site_url(), 'product/category/', $cate['id'] ?>"> <?= $cate['title'] ?>  </a></li>
            <?php endforeach; ?> 
        </ul>
    </div>

    <div id="products">
        <?php if (!empty($products)): ?>
            <?php foreach ($products as $product): ?>
                <div class="box1">
                    <?php if ($product['is_hot']): ?>
                        <div class="label-new">NEW</div>
                    <?php endif; ?>

                    <a href="<?= base_url(); ?>images/product/<?= $product['img'] ?>" data-lightbox="image-1" data-title="<?= $product['title'] ?>">
                        <img src="<?= base_url(); ?>images/product/thumb__<?= $product['img'] ?>" title="<?= $product['title'] ?>" height="200px" width="260px" >
                        <nav class="cl-effect-21"><span><?= $product['title'] ?></span></nav>
                    </a>
                    <div class="cost">Giá: <a href="<?= base_url(); ?>welcome/about"><span>Liên Hệ</span></a></div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p style="padding-bottom: 10px">
                <em>Đang cập nhật sản phẩm cho danh mục !!!</em>
            </p>
        <?php endif; ?>
    </div>
    <div style="clear: both;"></div>
</div> 
