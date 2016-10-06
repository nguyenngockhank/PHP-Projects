<div class="clearfix"></div> 
<div id="main" class="container">
    <div id="main-wrapper" class="col-md-9">
        <?php $num_hot_list = count($news_hot_list); ?>
        <?php $num_list = count($news_list); ?>
        
        <a href="#" class="title-cate-news"><?= $cate->title ?></a>
        <?php if ($num_hot_list > 0): ?>
            <div class="top-news">
                <?php for ($i = 0; $i < $num_hot_list; ++$i): $article = $news_hot_list[$i]; ?>
                    <article class="news col-lg-6">
                        <div class="hot"></div>
                        <div class="">
                            <img src="<?= srcImgArticle($article) ?>" class="img-responsive hot-news thumbnail">
                        </div>
                        <aside>
                            <a href="<?= hrefAriticle($article) ?>" class="title"><?= $article->title ?></a>
                            <span class="time-news"><?= timeAricle($article) ?></span>
                            <p class="summary"><?= word_limiter($article->summary, 30) ?></p>
                            <a href="<?= hrefAriticle($article) ?>" class="btn btn-warning btn-xs">Read more</a>
                        </aside>
                    </article>
                    <?php if ($i % 2 == 1) : ?>
                        <div class="clearfix"></div>
                    <?php endif; ?>
                <?php endfor; ?>
                <?php if ($num_hot_list % 2 == 1): ?>     
                    <?php for ($i = 0; $i < 2 && $i < $num_list; ++$i): $article = $news_list[$i]; ?>
                        <div class="news col-md-3"  style="padding-right: 0">
                            <img src="<?= srcImgArticle($article) ?>" class="thumbnail img-responsive">
                            <a href="<?= hrefAriticle($article) ?>" class="title"><?= $article->title ?></a>
                            <span class="time-news"><?= timeAricle($article) ?></span>
                            <p class="summary"><?= word_limiter($article->summary, 30) ?></p>    
                            <a href="<?= hrefAriticle($article) ?>" class="btn btn-warning btn-xs">Read more</a>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
        <?php endif; ?>


        <div class="clearfix"></div>
        <?php if (!isset($i)) $i = 0; ?>
        <?php if ($i < $num_list): ?>
            <div class="list-news ">
                <?php for (; $i < $num_list; ++$i): $article = $news_list[$i]; ?>
                    <div class="news col-md-4">
                        <img src="<?= srcImgArticle($article) ?>" class="thumbnail img-responsive">
                        <a href="<?= hrefAriticle($article) ?>" class="title"><?= $article->title ?></a>
                        <span class="time-news"><?= timeAricle($article) ?></span>
                        <p class="summary"><?= word_limiter($article->summary, 30) ?></p>
                        <a href="<?= hrefAriticle($article) ?>" class="btn btn-warning btn-xs">Read more</a>
                    </div>
                    <?php if ($i % 3 == 1) : ?>
                        <div class="clearfix"></div>
                    <?php endif; ?>
                <?php endfor; ?>
            </div>
            <div class="clearfix"></div>
        <?php endif; ?>
    </div>
    <?php $this->load->view('layout/sidebar'); ?>

</div>
<div class="clearfix"></div>
<div class="clearfix"></div>