<div class="clearfix"></div>
<div class="clearfix"></div>
<div class="container">
    <div class="col-lg-9" id="main-wrapper"> 
        <article class="row">
            <header class="row news-header">
                <div class="col-md-12">
                    <img style="max-width: 400px;" class="img-responsive thumbnail pull-left news-cover" src="<?= isset($article->star) ? srcImgProblem($article) : srcImgArticle($article) ?>" />

                    <h3 class=""><?= $article->title ?></h3>
                    <div><strong>Posted on: </strong><time><?= timeAricle($article) ?></time></div>
                    <p>  <strong>Summary: </strong> <?= $article->summary ?></p>
                    <?php if (isset($article->star)): ?>
                        <p class="rated pull-left">
                            <?php for ($j = 1; $j <= 5; ++$j): ?>
                                <?php if ($article->star == (6-$j)): ?>
                                    <span class="score">&#9734;</span>
                                <?php else: ?>
                                    <span>&#9734;</span>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </p>  
                    <?php endif; ?>  &nbsp; 
                    <div class="fb-like" data-href="<?= isset($article->star) ? hrefProblem($article) : hrefAriticle($article) ?>" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>

                </div>
            </header>
            <div class="news-wrapper">
                <?= $article->content ?>
            </div>


        </article>

        <?php if (isset($article->star)): ?>
            <div id="review-problem">
                <h3>Review This Problem</h3>
                <p id="rate" class="rating pull-left">
                    <span data-score="5">&#9734;</span>
                    <span data-score="4">&#9734;</span>
                    <span data-score="3">&#9734;</span>
                    <span data-score="2">&#9734;</span>
                    <span data-score="1">&#9734;</span>
                </p>
                <div class="clearfix"></div>
            </div>
            <input type="hidden" id="problem_id" value="<?= $article->id ?>" >
        <?php endif; ?>

        <?php if ($article->allow_cm): ?>
            <h3>Comments</h3>
            <hr>
            <div class="col-lg-offset-1">
                <div class="fb-comments" data-href="<?= isset($article->star) ? hrefProblem($article) : hrefAriticle($article) ?>"  data-width="680" data-numposts="5" data-colorscheme="light"></div>
            </div>
        <?php endif; ?>
    </div>

    <?php $this->load->view('layout/sidebar') ?>

</div>
<div class="clearfix"></div>
<div class="clearfix"></div>
