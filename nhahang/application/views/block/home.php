<div class="container">
    <?php if (!empty($list_news)): ?>
        <h2 class="text-center h2"><?= $this->lang->line('h2.hotnews') ?></h2>
        <div class="list-hot-news">
            <?php foreach ($list_news as $news): ?>
            <h3 class="h3 text-center"><span class="glyphicon glyphicon-star"></span><?= linkNews($news) ?></h3>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>
    <h2 class="text-center h2"><?= $this->lang->line('h2.special') ?></h2>
    <div class="list-dishes">
        <?php foreach ($dishes as $dish): ?>
            <div class="dish col-lg-3 col-md-4 col-sm-6 text-center">
                <a href="<?= site_url() ?>images/dish/<?= $dish['thumb'] ?>" rel="prettyPhoto[gallery_name]" class="thumb">
                    <img class="img-circle img-responsive" src="<?= site_url() ?>images/dish/thumb__<?= $dish['thumb'] ?>" alt="<?= $dish['name'] ?>">
                    <span><i></i></span>
                </a>
                <strong class="dish-name"><?= $dish['japname'] ?></strong>
                <em><?= $dish['name'] ?></em>
                <span data-price="<?= $dish['price'] ?>" class="price text-center"><?= number_format($dish['price']) ?></span>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="clearfix"></div>
</div>