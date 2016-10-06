<?php $this->load->view('layout/head') ?> 
<?php if ($this->router->fetch_method() != 'menuz'): ?> 
    <header id="main-header">
        <div id="logo-wrapper" class="text-center">
			<div id="logo-bg">
				<a href="#"><img class="img-responsive" src="<?= site_url() ?>images/store_logo.png" alt="Logo Fresh Sushi"></a>
				<h2 class="caption">We bring best things to life !</h2>
			</div>
        </div>
        <?php if(1 == 0): ?>
        <div id="main-menu" class="menu"> 
            <div class="wrapper">
                <ul>    
                    <li><a href="#">Home</a></li>  
                    <li><a href="#">What's New?</a></li>  
                    <li><a href="#">Special</a></li>  
                    <li><a href="#">Top sellers</a></li>  
                </ul>
            </div>
        </div>
        <?php endif;?>
        <?php if ($this->router->fetch_method() === 'index'): ?> 
            <div class="row" id="slider-wrapper">
                <div class="col-sm-9">
                    <div id="main-carousel" class="carousel slide" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <?php $img = array_shift($slider) ?>
                            <div class="item active">
                                <img src="<?= site_url() ?>images/slider/<?= $img['img'] ?>" alt="<?= $img['caption'] ?>">
                                <?php if (!empty($img['caption'])) : ?>
                                    <div class="carousel-caption">
                                        <?= $img['caption'] ?>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <?php foreach ($slider as $img) : ?>
                                <div class="item">
                                    <img src="<?= site_url() ?>images/slider/<?= $img['img'] ?>" alt="<?= $img['caption'] ?>">
                                    <?php if (!empty($img['caption'])) : ?>
                                        <div class="carousel-caption">
                                            <?= $img['caption'] ?>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            <?php endforeach; ?>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#main-carousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#main-carousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <img class="img-responsive" src="<?= base_url() ?>images/layout/pro-1.jpg" alt="Vietnamese" />
                </div>
            </div>
            <div class="clearfix" />
        <?php endif; ?>
    </header>
<?php endif; ?>