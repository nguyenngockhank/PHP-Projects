<div id="main-wrapper" style="overflow: auto; padding-bottom: 30px;">
    <script>
         var cat_id = '<?= $cat_id ?>';
    </script>
    <div id="content_news">
        <?php foreach ($articles as $article) : ?>
            <div class="each_news">
                <?php
                if (!empty($article['img'])) {
                    $src = base_url() . 'images/article/' . $article['img'];
                } else {
                    $src = base_url() . 'images/noimg.jpg';
                }
                ?>
                <div class="news_img"><img src="<?= $src ?>" width="300px" height="200px"></div>
                <div class="news_info">
                    <div class="news_title"><a href="<?= site_url(), 'article/detail/', $article['id'] ?>"><h3><?= $article['title'] ?></h3></a></div>
                    <time class="news_time">10:20 20/11/2014</time>
                    <div class="news_summary">
                        <?= $article['summary'] ?>
                    </div>
                    <a href="<?= site_url(), 'article/detail/', $article['id'] ?>" class="read-more btn ">
                        Xem Thêm
                    </a>

                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="text-center">
        <?= $this->pagination->create_links(); ?>
    </div>
</div>
