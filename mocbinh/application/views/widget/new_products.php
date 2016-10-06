 <?php if(isset($new_products) && $new_products): ?>    
<h4 class="head-title">Sản Phẩm Mới</h4>
<hr>
<div id="later-product1" class="owl-carousel">
    <?php foreach ($new_products as $product): ?>
        <div class="item">
            <a href="<?= product_href($product) ?>">
                <?= product_image($product) ?>
            </a>
            <div class="info-product">
                <h4><strong><label class="label label-success">NEW</label><?= $product->title ?></strong></h4>
               
                <?php // if(product_has_old_price($product)): ?>
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