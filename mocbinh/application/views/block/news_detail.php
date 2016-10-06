<div class="main">
    <a href="#nav" class="nav-toggle">Menu</a>

    <div class="clearfix"></div>
    <div class="col-sm-9 post-content">
        <article>
            <h1 style="color: green;"><?= post_title($post) ?></h1>
            <span class="fa fa-calendar"> </span>  <?= post_time($post) ?> | <span class="fa fa-comment"></span> 0 |
            <div class="fb-like" data-href="<?= post_href($post) ?>" data-layout="button" data-action="like"
                 data-show-faces="false" data-share="true"></div>
            <hr>
            <div style="background: url(<?= post_cover($post) ?>) center; background-size: cover; height: 300px">
            </div>
            <p>
                <br>
                <strong><?= post_excerpt($post) ?></strong>
            </p>
            <hr>
            <p>
                <?= post_content($post) ?>
            </p>
        </article>
<!--        <div class="link-follow">-->
<!--            <div class="panel panel-default">-->
<!--                <div class="panel-heading">-->
<!--                    <h3 class="panel-title">Tin liên quan</h3>-->
<!--                </div>-->
<!--                <div class="panel-body">-->
<!--                    <ul>-->
<!--                        <li><a href="http://coffeemocbinh.com/inpost/detail/10" class="title">Cách nhận ra một ly cà phê-->
<!--                                ngon</a></li>-->
<!--                        <li><a href="http://coffeemocbinh.com/post/detail/10" class="title">Cách nhận ra một ly cà phê-->
<!--                                ngon</a></li>-->
<!--                        <li><a href="http://coffeemocbinh.com/post/detail/10" class="title">Cách nhận ra một ly cà phê-->
<!--                                ngon</a></li>-->
<!--                    </ul>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
        <div class="fb-comments" data-href="<?= post_href($post) ?>" data-numposts="5"
             data-colorscheme="light"  data-width="100%"></div>



    </div>
    <div class="col-sm-3">
        <?php $this->load->view('widget/hot_posts') ?>
        <?php $this->load->view('widget/event_posts') ?>
    </div>
</div>