<form class="form-horizontal" role="form" id="order-form">
    <div class="modal fade" id="order-modal" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel"><?= $this->lang->line('form.title') ?></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="customerName" class="col-sm-3 control-label"><?= $this->lang->line('form.name') ?></label>
                        <div class="col-sm-9">
                            <input type="text" required class="form-control" id="customerName" placeholder="<?= $this->lang->line('form.name') ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="customerAddress" class="col-sm-3 control-label"><?= $this->lang->line('form.addr') ?></label>
                        <div class="col-sm-9">
                            <input type="text"  required class="form-control" id="customerAddress" placeholder="<?= $this->lang->line('form.addr') ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="customerPhone"  class="col-sm-3 control-label"><?= $this->lang->line('form.phone') ?></label>
                        <div class="col-sm-9">
                            <input type="text" pattern="[0-9]{8,15}" required class="form-control" id="customerPhone" placeholder="<?= $this->lang->line('form.phone') ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-9 control-label"> <?= $this->lang->line('form.item_price') ?></label> <span class="price col-sm-3 control-label" id="dishes-price-submit"></span> 

                        <label class="col-sm-9 control-label"> + 5% <?= $this->lang->line('form.shipping_fee') ?></label> <span class="price col-sm-3 control-label" id="ship-price-submit"></span> 

                        <label class="col-sm-9 control-label"> <?= $this->lang->line('form.total') ?> </label><span class="price col-sm-3 control-label" id="total-price-submit"></span> 
                    </div>
                    <div id="alert-submit"></div>
                </div>
                <div class="modal-footer">
                    <em>Sorry! This feature is blocked!</em>
<!--                    <input type="submit" class="btn submit-btn" value="<?= $this->lang->line('form.submit') ?>">
                    -->
                </div>
            </div>
        </div>
    </div>
</form>