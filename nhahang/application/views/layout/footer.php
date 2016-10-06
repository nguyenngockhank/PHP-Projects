<footer id="main-footer">
    <div class="container">
        <div class="col-md-4">
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="<?= base_url() ?>images/layout/footericon1.png" alt="Address">
                </a>
                <div class="media-body">
                    <h4 class="media-heading"><?= $this->lang->line('foot.address') ?></h4>
                    <div><?= $this->config->item('foot.addr') ?></div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="<?= base_url() ?>images/layout/footericon2.png" alt="Address">
                </a>
                <div class="media-body">
                    <h4 class="media-heading"><?= $this->lang->line('nav.contact') ?></h4>
                    <div>
                        Phone : <?= $this->config->item('foot.phone') ?> <br>
                        Email : <?= $this->config->item('foot.email') ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading"><?= $this->lang->line('foot.socials') ?></h4>
                    <div>		
                        <a class="social_links facebook_link" href="<?= $this->config->item('foot.fb') ?>" target="_blank">Facebook</a>	
                        <a class="social_links youtube_link" href="<?= $this->config->item('foot.utube') ?>" target="_blank">Youtube</a>
                        <a class="social_links rss_link" href="#" target="_blank">RSS</a>	
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="col-xs-12 text-center copyright">
    &copy; Copyright FreshSushi.info - Designed by Khánk
</div>
<script src="<?= site_url() ?>js/jquery.js"></script>
<script src="<?= site_url() ?>js/bootstrap.min.js"></script>
<script src="<?= site_url() ?>js/bootstrap-tabdrop.js"></script>

<script src="<?= site_url() ?>js/jquery-ui.custom.min.js"></script>
<script src="<?= site_url() ?>js/jquery.prettyPhoto.js"></script>
<script src="<?= site_url() ?>js/main.js"></script>
</body>
</html>