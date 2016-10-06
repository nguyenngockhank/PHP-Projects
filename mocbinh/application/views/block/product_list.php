<div role="main" class="main">
    <a href="#nav" class="nav-toggle">Menu</a>
    <div class="clearfix"></div>
    <div class="col-sm-9">
        <h4 class="head-title">Sản Phẩm</h4>
        <hr>
        <div class="row">
            <nav id="filter" class="col-md-12 text-center">
                <ul>
                    <li><a href="#" class="current btn-theme btn-small"  id="all" data-filter="*" >Tất cả</a></li>
                    <?php foreach ($categories as $cat) : ?>  
                        <li><a href="#" class="btn-theme btn-small" data-filter="<?= class_cat_product($cat) ?>"><?= title_cat_product($cat) ?></a></li>
                    <?php endforeach; ?>
              </ul>
            </nav>
            <div class="col-md-12">
                <div class="row">
                    <div class="portfolio-items isotopeWrapper clearfix" id="3">
                        <ul style="list-style: none;">
                            <?php foreach ($products as $product): ?>
                                <li class="col-sm-4 isotopeItem <?= class_cat_product($product, 'pro') ?>">
                                    <div class="portfolio-item">
                                        <a href="<?= product_href($product) ?>">
                                            <img src=" <?= product_image_src($product) ?>" alt=""/>
                                        </a>
                                        <div class="info-product">
                                            <h4 class="head-title"><label class="label label-success">NEW</label><?= product_name($product) ?></h4>
                                            <p>
                                                Giá:<strong><?= product_price($product) ?></strong>
                                            </p> 
                                        </div>
                                    </div>

                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <?php $this->load->view('widget/hot_products') ?>
            
        <?php $this->load->view('widget/new_products') ?>
        
         <?php $this->load->view('widget/event_posts') ?>
    </div>
</div>