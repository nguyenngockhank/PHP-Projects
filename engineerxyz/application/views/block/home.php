<div id="main" class="container">
    <?php $num_slide = count($slider); ?>  
    <?php if ($num_slide > 0) : ?>
        <div id="slider">
            <div id="carousel-banner" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <?php for ($i = 0; $i < $num_slide; ++$i) : ?>
                        <li data-target="#carousel-banner" data-slide-to="<?= $i ?>"></li>
                    <?php endfor; ?>
                </ol>
                <div class="carousel-inner">
                    <?php for ($i = 0; $i < $num_slide; ++$i) : ?>
                        <div class="item">
                            <?= imgBanner($slider[$i]->value) ?>
                            <div class="carousel-caption">
                                <h3>
                                    <a style="color: white" href="<?= empty($slider[$i]->meta) ? '#' : hrefAriticle($slider[$i]->meta) ?>">
                                        <?= $slider[$i]->title ?>
                                    </a>
                                </h3>
                            </div>
                        </div>
                    <?php endfor;?>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <?php
    unset($num_slide);
    unset($slider);
    ?>

    <div class="clearfix"></div>
    <div id="main-wrapper" class="col-md-9 col-sm-9 col-xs-12">
        <?php $num_stories = count($top_stories); ?>  
        <?php if ($num_stories > 0): ?>
            <?php $article = $top_stories[0]; ?>
            <div id="top-stories" class="row">
                <h2 class="headline">Top Stories</h2>
                <div id="big-stories" class=" col-md-6 col-sm-6 col-xs-12 ">
                    <div class="media">
                        <a href="#">
                            <img height="265" width="397" src="<?= srcImgProblem($article) ?>"  class="media-object" alt="<?= cleanStr($article->title) ?>" >
                        </a>
                        <div class="content-big-stories">
                            <h4 class="media-heading "><?= linkHot($top_stories[0]) ?></h4>
                            <span class="time-news"><?= timeAricle($top_stories[0]) ?></span>
                            <p><?= word_limiter($top_stories[0]->summary, 30) ?></p>
                        </div>
                    </div>
                </div>
                <div class="clearfix visible-xs"></div>
                <?php if ($num_stories > 1): ?>
                    <div id="small-stories" class="col-md-6 col-sm-6 col-xs-12">
                        <?php for ($i = 1; $i < $num_stories; ++$i): $article = $top_stories[$i]; ?>
                            <div class="media sm-stories">
                                <a class="pull-left" href="<?= hrefProblem($article) ?>">
                                    <img class="media-object" src="<?= srcImgProblem($article) ?>" width="200" height="125" alt="<?= cleanStr($article->title) ?>">
                                </a>
                                <div class="media-body">
                                    <h5 class="media-heading"><a href="<?= hrefProblem($article) ?>" class="title"><?= word_limiter($article->title, 9) ?></a></h5>
                                    <span class="time-news"><?= timeAricle($article) ?></span>
                                    <p><?= word_limiter($article->summary, 10); ?></p>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                <?php endif; ?>
            </div>
        <?php endif; ?>
        <?php
        unset($num_stories);
        unset($top_stories);
        ?>
        <div class="clearfix"></div>
        <div class="clearfix"></div>
        <div id="about" class="row">
            <h2 class="headline">What is EngineerXYZ ? </h2>
            <p class="col-md-12"><?= $info->what_is ?></p>
        </div>
        <div class="clearfix"></div>
        <div class="clearfix"></div>
        <div id="steps" class="row">
            <h2 class="headline">Steps </h2>
            <?php foreach ($steps as $step): ?>
                <div class="each-step row">
                    <div class="a col-md-8">
                        <h3><?= $step->title ?></h3>
                        <p><?= $step->meta ?></p>
                    </div>
                    <div class="col-md-4 ">
                        <img alt="<?= $step->title ?> image" style="width: 222px" src="<?= base_url('upload/steps/' . $step->value) ?>" class="img-responsive pull-right">
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    <div class="col-xs-1 visible-xs"></div>

    <?php $this->load->view('layout/sidebar') ?>
    <div class="clearfix"></div>
    <!--APPLY

    <div class="container text-center">
        <button class="btn btn-success btn-lg">Apply</button>
    </div>

    -->
    <div class="clearfix"></div>

</div> <!--main-->