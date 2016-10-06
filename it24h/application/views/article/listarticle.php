<div class="list-article row">
    <?php  foreach ($articles as $article): ?>
	<?php if (empty($article['img']))  $article['img'] = 'nophoto.jpg'; ?>
        <article class="media">
            <a class="pull-left" href="<?= site_url(),(isset($ser) ? 'dich-vu/' : 'thu-thuat/'), $article['slug'] ?>.html">
                <img class="media-object" src="<?= site_url() ?>assets/uploads/article/<?= $article['img'] ?>" alt="<?= $article['title'] ?>">
            </a>
            <div class="media-body">
                <h4 class="media-heading"><a href="<?= site_url(),(isset($ser) ? 'dich-vu/' : 'thu-thuat/'), $article['slug'] ?>.html"><?= $article['title'] ?></a></h4>
                <p><?= $article['describe'] ?></p>
            </div>  
        </article>
    <?php  endforeach;   ?>
</div>