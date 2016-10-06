<div class="widget">
    <div class="widget-heading">
        <h2>Sản phẩm ngẫu nhiên</h2>
    </div>
    <div class="widget-body">
        <marquee direction="up" scrollamount="2" height="220" onmouseover="this.stop()" onmouseout="this.start()" >
            <div class="list-hot-product">
                <?php foreach ($products as $product): ?>
                    <div class="media">
                        <a class="pull-left" href="<?= site_url() , 'san-pham/' , $product['slug']  ?>.html">
                            <img class="media-object" src="<?= site_url() ?>assets/uploads/product/<?= $product['img'] ?>" alt="<?= $product['name'] ?>">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="<?= site_url() , 'san-pham/' , $product['slug']  ?>.html"><?= $product['name'] ?></a></h4>
                            <div class="product-price">
                                <strong><span class="glyphicon glyphicon-tag"></span> Giá: </strong> <?= number_format($product['price']) ?> VND
                            </div>
                            <div class="product-link">
                                <button class="btn-link product-cart" data-slug="<?= $product['slug'] ?>"><span class="glyphicon glyphicon-shopping-cart"></span>Đặt mua</button>
                                <a class="product-detail" href="<?= site_url() , 'san-pham/' , $product['slug'] ?>.html"><span class="glyphicon glyphicon-play"></span>Chi tiết</a>
                            </div>    
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </marquee>
    </div>
</div>
