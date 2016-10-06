<div data-id="<?= $dish['id'] ?>" class="dish text-center col-lg-4 col-md-4 col-sm-6">
    <a href="#" class="thumb">
        <img draggable="true" class="img-circle img-responsive" src="<?= site_url() ?>images/dish/thumb__<?= $dish['thumb'] ?>" alt="">
        <span><i></i></span>
    </a>
    <strong class="dish-name"><?= $dish['japname'] ?> <span title="Thêm vào đơn hàng" class="order glyphicon glyphicon-cutlery"></span></strong>
    <?= empty($dish['name']) ? '' : '<em>' . $dish['name'] . '</em>' ?>
    <span data-price="<?= $dish['price'] ?>" class="price text-center"><?= number_format($dish['price']) ?></span>
</div>