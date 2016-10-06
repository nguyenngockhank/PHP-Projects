<div class="list-product row">
    <?php $i = 0; ?>
    <?php foreach ($products as $product) : ?>
        <?php ++$i; ?>
        <?php if ($i % 2 == 1): ?> 
            <div class="row">
            <?php endif; ?>
            <!-- START PRODUCT -->
            <div class="col-sm-6">
                <div class="product">
                    <div class="col-xs-5 product-img">
                        <img  onmouseover="showtip(pro<?php echo $i ?>);" onmouseout="hidetip();"  class="img-responsive" src="<?= site_url() ?>assets/uploads/product/<?= $product['img'] ?>" alt="Hình sản phẩm <?= $product['name'] ?>"/>	
                    </div>
                    <div class="col-xs-7">
                        <a href="<?= site_url(),'san-pham/', $product['slug'] ?>.html" title="<?= $product['name'] ?>" class="product-name"><?= $product['name'] ?></a>
                        <!-- TEN SP -->
                        <div class="product-price">
                            <strong><span class="glyphicon glyphicon-tag"></span> Giá : </strong> <?= number_format($product['price']) ?> VND
                        </div>
                        <div>
                            <strong>Bảo hành: </strong> <?= $product['warranty'] ?> tháng
                        </div>
                        <div class="product-link">
                            <button class="btn-link product-cart" data-slug="<?= $product['slug']?>"><span class="glyphicon glyphicon-shopping-cart"></span>Đặt mua</button>
                            <a class="product-detail" href="<?= site_url(),'san-pham/', $product['slug'] ?>.html"><span class="glyphicon glyphicon-play"></span>Chi tiết</a>
                        </div>
                        <?php if (isset($product['describe']) && !empty($product['describe'])) : ?>
                            <div id="pro-<?= $i ?>" class="product-describe" style="display: none">
                                <?= ($product['describe']) ?>
                            </div>
                            <script>
                                var pro<?php echo $i ?> = document.getElementById('pro-<?php echo $i ?>').innerHTML;
                            </script>
                        <?php endif; ?>
                    </div> 
                </div> 
            </div><!-- END PRODUCT -->
            <?php if ($i % 2 == 0): ?> 
            </div>
        <?php endif; ?>
    <?php endforeach; ?>
</div> 
<?php if ($i % 2 == 1): ?> 
    </div>
<?php endif; ?>