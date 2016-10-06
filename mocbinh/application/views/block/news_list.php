<div class="main row">
    <a href="#nav" class="nav-toggle">Menu</a>

    <div class="clearfix"></div>
    <div class="col-sm-9">
        <h4 class="head-title">Tin tức</h4>
        <hr>
        <div class="row">
            <?php $i = 0 ?>
            <?php foreach ($posts as $p): ++$i; ?>
                <div class="col-md-6 col-sm-6 col-xs-12 ">
                    <article class="post">
                        <span class="tag">Tin tức</span>
                        <span class="tag comment fa fa-comment"> 0</span>
                        <a href="<?= post_href($p) ?>">
                            <div class="post-img"
                                 style="background: url('<?= post_cover($p) ?>') center; background-size: cover;">
                                <!--                            <img src="-->
                                <? //= post_cover($p) ?><!--" alt="" class="img-responsive thumbnail"> -->
                                <span class="view">Xem Thêm</span>
                            </div>
                        </a>

                        <div class="post-info">
                            <h4>
                                <a href="<?= post_href($p) ?>" class="title"><?= post_title($p) ?></a>
                            </h4>
                            <span class="fa fa-calendar " style="font-size: 12px"> <?= post_time($p) ?></span>
                            <hr>
                            <p class="excerpt"><?= post_excerpt($p) ?></p>
                        </div>
                    </article>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-sm-3">
        <?php $this->load->view('widget/hot_posts') ?>
        <?php $this->load->view('widget/hot_products') ?>
        <?php $this->load->view('widget/new_products') ?>
        <?php $this->load->view('widget/event_posts') ?>
    </div>
</div>