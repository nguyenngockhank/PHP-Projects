<div id="main-wrapper">
    <div id="main-menu-wrapper">
        <?php $nums = count($items); ?>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
            <?php for ($i = 0; $i < $nums; ++$i) : ?>
                <li><a href="#item-<?= $i ?>" data-toggle="tab">Cơ Sở <?= ($i + 1) ?></a></li>
            <?php endfor; ?>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <?php for ($i = 0; $i < $nums; ++$i) : ?>
                <?php $item = $items[$i] ?>
                <div class="tab-pane" id="item-<?= $i ?>">
                    <div class="main-menu-content">
                        <div class="main-menu-each">
                            <ul class="list-unstyled">
                                <li>CƠ SỞ <?= ($i + 1) ?></li>
                                <li><img src="<?= site_url() ?>images/distribution/<?= $item['img'] ?>" title="F100SeaFood" height="320px" width="574px"></li>
                                <li><?= $item['title'] ?></li>
                                <li><span class="glyphicon glyphicon-home"></span>Địa Chỉ: <?= $item['address'] ?></li>
                                <li><span class="glyphicon glyphicon-phone"></span>Điện Thoại: <?= $item['phone'] ?></li>
                                <li><span class="glyphicon glyphicon-envelope"></span>Email: <?= $item['email'] ?></li>
                                <li><?= $item['maps'] ?></li>

                            </ul>
                        </div>
                    </div>
                </div>
            <?php endfor; ?>


        </div>
    </div>
</div>