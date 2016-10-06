<div class="container">
    <div class="col-lg-8 col-md-8 col-sm-8"> 
        <h2 class="h2"><?= $this->lang->line('h2.recents_post') ?></h2>
        <div class="list-article">
            <?php foreach ($articles as $article): ?>
                <?php $t = strtotime($article['time']); ?>
                <article>
                    <div class="clearfix">                         
                        <div class="news_date pull-left">
                            <span class="date"><?= date('d', $t) ?> </span><span class="month"><?= date('M', $t) ?> </span>
                        </div>
                        <div class="pull-left">
                            <h3 class="h3"><?= linkNews($article) ?></h3>
                            <p class="pull-left">Đăng ngày: <?= date('d/m/Y', $t) ?></a></p>
                        </div>
                    </div>
                    <div class="clearfix">
                        <div class="row">
                            <div class="col-sm-5">
                                <img class="img-responsive" src="<?= site_url() ?>images/blog/<?= $article['img'] ?>" alt="<?= $article['title'] ?> image">
                            </div>
                            <div class="col-sm-7">
                                <p><?= $article['summary'] ?></p>
                                <a href="<?= hrefNews($article) ?>" class="btn submit-btn"><?= $this->lang->line('read_more') ?></a>
                            </div>
                        </div>
                    </div>
                </article>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-sm-4">
        <?php $this->load->view('widget/fb') ?>
        <?php $this->load->view('widget/random-post') ?>
    </div>
</div>