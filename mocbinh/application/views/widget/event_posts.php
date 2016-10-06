<?php if (isset($event_posts) && $event_posts) : ?>
    <div class="ads">
        <h4 class="head-title">Sự kiện</h4>
        <?php foreach ($event_posts as $p): ?>
            <hr>
            <a href="<?= post_href($p) ?>">
                <h4><?= post_title($p) ?></h4>
            </a>
            <p class="info-adsevent hidden">
                <span class="fa fa-calendar"></span>  <?= post_time($p) ?> | <span class="fa fa-map-marker"></span> 24 Mê Linh, Bình Thạnh, HCM  
            </p>
            <a href="<?= post_href($p) ?>">
                <img src="<?= post_cover($p) ?>" class="img-responsive">
            </a>
        <?php endforeach; ?>
    </div>
<?php endif; ?>