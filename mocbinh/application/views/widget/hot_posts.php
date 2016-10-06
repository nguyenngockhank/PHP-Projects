<?php if (isset($hot_posts) && $hot_posts) : ?>
    <h4 class="head-title">Tin nổi bật</h4>
    <hr>
    <?php foreach ($hot_posts as $p): ?>
        <div class="row">
            <div class="latest col-sm-12">
                <a href="<?= post_href($p) ?>">
                    <img src="<?= post_cover($p) ?>" alt="" height="50" width="50" style="float: left;"> 
                </a>
                <a href="<?= post_href($p) ?>" class="title"><?= post_title($p) ?></a> 
                <br>
                <span class="fa fa-calendar time-post"> <?= post_time($p) ?></span> 
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>