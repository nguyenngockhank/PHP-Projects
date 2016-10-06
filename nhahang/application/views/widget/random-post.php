<?php if (isset($randoms)) : ?>
    <div class="widget">
        <h3 class="h3"><?= $this->lang->line('h3.random_post') ?></h3>
        <div class="list-article">
            <?php foreach ($randoms as $article): ?>
                <article class="clearfix">
                    <div>
                        <h4 class="media-heading"><a href="<?= getLink('media/article/'.$article['id'])?>"><?= $article['title'] ?></a></h4>
                        <a class="pull-left" href="#">
                            <img class="img-responsive" src="<?= site_url() ?>images/blog/<?= $article['img'] ?>" alt="">
                        </a>
                        <div>
                            <?= $article['summary'] ?>
                        </div>
                    </div>
                </article>
            <?php endforeach; ?>
        </div>
    </div>
<?php endif; ?>