<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <div class="row" id="article-detail">
            <header class="row">         
                <div class="col-md-3">
                    <img src="<?= site_url() . 'assets/uploads/article/' . $article['img'] ?>" alt="Ảnh bài viết" class="img-thumbnail img-responsive" />
                </div>
                <div class="col-md-9">
                    <h1> <?= $article['title'] ?> </h1>
                    <p class="article-describe"> <?= $article['describe'] ?></p>
                </div>
            </header>  
            <div><?= $article['content'] ?></div>
        </div>
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>


<?php $this->load->view('template/foot'); ?>

