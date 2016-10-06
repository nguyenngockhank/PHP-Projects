<div class="container">
    <div class="col-lg-8 col-md-8 col-sm-8"> 
        <h3 class="h2"><?= $article['title'] ?></h3>
        <div>
            <?= $article['content'] ?>
        </div>
    </div>
    <div class="col-sm-4">
        <?php $this->load->view('widget/fb') ?>
        <?php $this->load->view('widget/random-post') ?>
    </div>
</div>