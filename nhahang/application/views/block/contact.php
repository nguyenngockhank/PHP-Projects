<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="map">
                <h2 class="h2"><?= $this->lang->line('h2.contact_us') ?></h2>
                <iframe src="https://mapsengine.google.com/map/u/0/embed?mid=zgdi6rapi0fY.k1fP4PP_NEng"></iframe>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <h2 class="h2"><?= $this->lang->line('h2.address') ?></h2>
            <address>
                <div class="info">
                    <h3 class="h3"><?= $this->lang->line('address_info') ?></h3>
                    <p><strong>Phone:</strong> <span class="pull-right"><?= $this->config->item('foot.phone') ?></span></p>
                    <p><strong>E-mail:</strong> <span class="pull-right"><?= $this->config->item('foot.email') ?></span></p>
                </div>
            </address>
        </div>
        <div class="col-md-offset-1 col-md-8">
            <h2 class="h2"><?= $this->lang->line('h2.get_in_touch') ?></h2>
            <?php if (isset($success) && $success) : ?>
                <div class="alert alert-success">Thanks for your comments !!!</div>
            <?php endif; ?>
            <form action="<?= site_url() ?>main/contact" id="contact-form" method="POST" class="form-horizontal" role="form">
                <div class="form-group">
                    <div class="col-sm-4">
                        <input name="name"  type="text"required class="form-control" placeholder="<?= $this->lang->line('form.name') ?>" maxlength="100">
                    </div>
                    <div class="col-sm-4">
                        <input name="email" type="email" required class="form-control" placeholder="<?= $this->lang->line('form.email') ?>" maxlength="100">
                    </div>
                    <div class="col-sm-4">
                        <input name="phone" type="text" required class="form-control" placeholder="<?= $this->lang->line('form.phone') ?>" maxlength="15">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <textarea name="comments" class="form-control" required placeholder="<?= $this->lang->line('form.comments') ?>" rows="5"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10">
                        <input type="submit" class="btn submit-btn" value="<?= $this->lang->line('form.submit') ?>">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>