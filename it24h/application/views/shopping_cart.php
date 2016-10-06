<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h1><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng</h1>
        <?php if ($this->cart->total_items() > 0) : ?>
            <?php $i = $totals = 0; ?>
            <table class="table table-striped">
                <tr>
                    <th>STT</th> 
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Cập nhật</th>
                    <th>Xoá</th>
                </tr>
                <?php foreach ($this->cart->contents() as $items): ?>
                    <?php $options = $this->cart->product_options($items['rowid']); ?>
                    <tr>
                        <td> <?= ++$i ?> </td>
                        <td class="center">
                            <a href="<?= site_url() ?>product/detail/<?= $items['id']?>">
                                <img width="100" src="<?= site_url() ?>assets/uploads/product/<?= $options['img'] ?>" alt="" />
                                <?= $items['name'] ?>
                            </a>
                        </td>
                        <td><input class="form-control" min="0" max="10" type="number" value="<?= $items['qty'] ?>" /></td>
                        <td><?= number_format($items['price']) ?></td>
                        <td><button data-rowid="<?= $items['rowid'] ?>" class="update-cart btn-xs btn-success"><span class="glyphicon glyphicon-edit"></span></button></td>
                        <td><a href="<?= site_url() ?>cart/del/<?= $items['rowid'] ?>"><button  class="btn-xs btn-danger"><span class="glyphicon glyphicon-remove"></span></button></a></td>
                        <?php $totals+= $items['price'] * $items['qty'] ?>
                    </tr>
                <?php endforeach; ?>

            </table>   
            <div>
                <strong>Tổng tiền : </strong> <strong class="product-price"><?=number_format($totals)?> VND</strong>
                <a href="#orderPanel" data-toggle="modal" class="pull-right btn-lg btn-primary"><span class="glyphicon glyphicon-transfer"></span> Đặt hàng</a> 
            </div>

            <div id="orderPanel"  class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="<?= site_url() ?>cart/order" method="post" role="form">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">Đơn đặt hàng</h4>
                            </div>
                            <div class="modal-body">
                                <!--TEN KHACH HANG-->
                                <div class="form-group">
                                    <label>Họ tên</label> 
                                    <input name="name" required="required" pattern="[A-Za-z0-9].{2,50}" class="form-control" />
                                </div>
                                <!-- SDT -->
                                <div class="form-group">
                                    <label>Điện thoại</label> 
                                    <input name="phone" required="required" pattern="[0-9].{7,11}" type="text" class="form-control" />
                                </div>
                                <!-- NGAY GIAO HANG -->
                                <div class="form-group">
                                    <label>Ngày giao hàng</label> 
                                    <input name="date" required="required" type="date" class="form-control" />
                                </div>
                                <!-- DIA CHI -->
                                <div class="form-group">
                                    <label>Địa chỉ giao hàng</label> 
                                    <input name="address" required="required" type="text" class="form-control" />
                                </div>
                                <!-- GHI CHU -->
                                <div class="form-group">
                                    <label>Ghi chú</label> 
                                    <textarea name="note" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" name="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> Xác nhận</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Huỷ bỏ</button>
                            </div>
                        </form><!-- FORM -->
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        <?php else: ?>
            <p><em>Chưa có sản phẩm nào trong giỏ hàng</em></p>
        <?php endif; ?>


    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>

<?php $this->load->view('template/foot'); ?>