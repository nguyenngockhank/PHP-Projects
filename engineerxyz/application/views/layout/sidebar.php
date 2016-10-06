<div id="sidebar" class="pull-right col-md-3 col-sm-12 col-xs-12">
    <h2 class="title-side">Videos</h2>
    <?php foreach ($vids as $vid): ?>
        <div class="each-video">
            <iframe width="100%" height="200" src="//www.youtube-nocookie.com/embed/<?= $vid->value ?>" frameborder="0" allowfullscreen></iframe>
        </div>
    <?php endforeach; ?>


    <h2 class="title-side">Facebook</h2>

    <div class="fb-like-box" data-href="https://www.facebook.com/globalengineers"  data-width="262" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="true" data-show-border="true"></div>
    <!--TOOLS-->
    <h2 class="title-side">Tools</h2>
    <ul  class=" list-link list-unstyled ">
        <?php foreach ($tools as $tool): ?>
            <li><a href="<?= $tool->value ?>"><?= $tool->title ?></a></li>
        <?php endforeach; ?>
    </ul>

    <!--NEWS-->
    <?php if (isset($top_news)): ?>
        <div class="clearfix"></div>
        <h2 class="title-side">News</h2>

        <?php foreach ($top_news as $news): ?>
            <div class="each-side">
                <div class="media">
                    <a class="pull-left" href="<?= hrefAriticle($news) ?>">
                        <img class="media-object" src="<?= srcImgArticle($news) ?>" width="100" height="100" alt="...">
                    </a>
                    <div class="media-body">
                        <a href="<?= hrefAriticle($news) ?>" class="media-heading title"><?= $news->title ?></a>
                        <span class="time-news"><?= timeAricle($news) ?></span>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        <?php endforeach; ?>
        <div class="text-center">  <a  href="<?= site_url('news') ?>">More...</a></div>
    <?php endif; ?>
</div>