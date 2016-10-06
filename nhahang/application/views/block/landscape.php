<div class="container">
    <h2 class="text-center h2"><?= $this->lang->line('h2.our_landscape') ?></h2>
    <div id="landscape-area" class="list-images">
        <?php foreach ($categories as $cat): ?>
            <?php $images = $this->picture_model->getPictures($cat['id']); ?>
            <?php if (!empty($images)) : ?>
                <div class="row">
                    <h3 class="h3 text-center"><?= $cat['name'] ?></h3>
                    <?php foreach ($images as $img) : ?>
                        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 text-center">  
                            <a href="<?= base_url() ?>images/landscape/<?= $img['img'] ?>" rel="prettyPhoto[gallery_<?= $cat['id'] ?>]">
                                <img class="img-responsive img-thumbnail" src="<?= base_url() ?>images/landscape/thumb__<?= $img['img'] ?>" alt="<?= $img['caption'] ?>" >
                                <?= $img['caption'] ?>
                            </a>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
</div>