<?php if (isset($hot_products) && $hot_products): ?>
    <h4 class="head-title">Sản Phẩm nổi bật</h4>
    <hr>
    <div id="later-product" class="owl-carousel">
        <?php foreach ($hot_products as $product): ?>
            <div class="item">
                <a href="<?= product_href($product) ?>">
                    <?= product_image($product) ?>
                </a>
                <div class="info-product">
                    <h4><strong><label class="label label-danger">HOT</label><?= $product->title ?></strong></h4>
                    <?php //if (product_has_old_price($product)): ?>
                       <!-- <p>Giá: <span style="text-decoration: line-through"><?= product_old_price($product) ?></span>
                            <br>Khuyến mãi: <span><?= product_price($product) ?></span></p> -->
                    <?php //else: ?>
                        <p>Giá: <span><?= product_price($product) ?></span></p>
                    <?php //endif; ?>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
<?php endif; ?>