<div id="side-bar">
    <?php
    $class_name = $this->router->fetch_class();
    ?>
    <?php if ($class_name !== 'article'): ?>
        <?php if (isset($list_news)): ?>
            <div class="content-title"> Tin Tức <img class="nav-right" src="<?= base_url(); ?>assets/images/navright.png"></div>
            <ul class="list-unstyled quick-link">
                <?php foreach ($list_news as $news): ?>
                    <li><a href="<?= site_url() ?>article/detail/<?= $news['id'] ?>"><?= $news['title'] ?></a></li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    <?php endif; ?>
    <div class="clearfix"></div>
    <?php $sidebar_title = 'Tin liên quan'; ?>
    <?php if (isset($other_articles) && !empty($other_articles)) : ?>
        <?php
        switch ($class_name) {
            case 'welcome':
                $sidebar_title = 'Sự kiện';
                break;
        }
        ?>
        <div class="content-title"><?= $sidebar_title ?> <img class="nav-right" src="<?= base_url(); ?>assets/images/navright.png"></div>
        <div id="top-news">
            <ul class="list-unstyled">
                <?php foreach ($other_articles as $article): ?>
                    <?php
                    if (!empty($article['img'])) {
                        $src = base_url() . 'images/article/' . $article['img'];
                    } else {
                        $src = base_url() . 'images/noimg.jpg';
                    }
                    ?>
                    <li>
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="<?= $src ?>" style="width: 64px; height: 64px;">
                            </a>
                            <div class="media-body">
                                <a class="pull-left" href="<?= site_url(), 'article/detail/', $article['id'] ?>"> <h4 class="media-heading"><?= $article['title'] ?></h4>   </a>
                                <br> <p><i><small><?= $article['time'] ?></small></i></p>
                            </div>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>

        </div>
    <?php else: ?>


    <?php endif; ?>


</div>