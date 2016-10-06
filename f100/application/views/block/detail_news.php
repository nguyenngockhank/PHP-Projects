
<div id="main-wrapper">
    <div id="content">
        <script>
            var cat_id = '<?= $category['id'] ?>';
        </script>
        <div class="content-title"><img class="nav-left" src="<?= base_url(); ?>assets/images/navleft.png">
            <?= $category['title'] ?>
        </div>
        <div class="main-content">
            <div class="media">
                <?php
                if (!empty($news['img'])) {
                    $src = base_url() . 'images/article/' . $news['img'];
                } else {
                    $src = base_url() . 'images/noimg.jpg';
                }
                ?>
                <a class="pull-left" href="#">
                    <img src="<?= $src ?>" style="width: 300px; height: 200px;"> 
                </a>
                <div class="media-body">
                    <time class="news_time">Đăng Ngày  <?= date('G:i d/m/Y', strtotime($news['time'])) ?></time>
                    <h3 class="media-heading product-title"><?= $news['title'] ?></h3>
                    <span class="note">
                        <?= $news['summary'] ?>
                    </span>
                </div>
            </div>
            <div class="media">
                <?= $news['content'] ?>
            </div>
        </div>

    </div>

    <?php $this->load->view('layout/side-bar'); ?> 

</div>