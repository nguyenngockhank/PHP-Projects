<?php if (isset($cat_products) && $cat_products): ?>
    <h4 class="head-title">Sản Phẩm Cùng loại</h4>
    <hr>
    <?php foreach ($cat_products as $product): ?>
        <div>
            <a href="<?= product_href($product) ?>" style="margin-right: 10px;" class="pull-left">
                <div class="img-product">
                    <img class="img-responsive" src="<?= product_image_src($product) ?>">
                </div>
            </a>
            <h5 class="head-title"><a href="<?= product_href($product) ?>"><?= product_name($product) ?></a></h5>
            <?php if (product_has_old_price($product)): ?>
                <span class="text-muted" style="text-decoration: line-through" ><?= product_old_price($product) ?></span> - 
                <span class="text-danger"><?= product_price($product) ?></span>
            <?php else: ?>
                <span class="text-danger"><?= product_price($product) ?></span>
            <?php endif; ?>
        </div>
    <?php endforeach; ?>

<?php endif; ?>