<div id="menu-content" class="container">
    <div class="col-lg-9 col-md-9 col-sm-7"> 
        <div class="row">
            <header>
                <div class="col-lg-4"><h2 class="h2"><?= $this->lang->line('h2.our_menu') ?></h2></div>
                <div class="col-lg-8 col-xs-0"> 
                    <ul id="menu-cat" class="nav nav-tabs">	
                        <?php foreach ($category as $cat): ?>
                            <?php if (isset($cat['child'])): ?>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?= $cat['name'] ?><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <?php foreach ($cat['child'] as $child): ?>
                                            <li><a href="#dishes-<?= $child['id'] ?>" tabindex="-1" data-toggle="tab"><?= $child['name'] ?></a></li>
                                        <?php endforeach; ?>
                                    </ul>
                                </li>
                            <?php else: ?>
                                <li><a data-toggle="tab" href="#dishes-<?= $cat['id'] ?>"><?= $cat['name'] ?></a></li>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="xs-only">
                    <select class="form-control" id="menu-cat-2">
                        <?php foreach ($category as $cat): ?>
                            <?php if (isset($cat['child'])): ?>
                                <optgroup label="<?= $cat['name'] ?>">
                                    <?php foreach ($cat['child'] as $child): ?>
                                        <option value="#dishes-<?= $child['id'] ?>"><?= $child['name'] ?></option> 
                                    <?php endforeach; ?>
                                </optgroup>
                            <?php else: ?>
                                <option value="#dishes-<?= $cat['id'] ?>"><?= $cat['name'] ?></option>
                            <?php endif; ?>
                        <?php endforeach; ?>

                    </select>
                </div>
            </header>
        </div>
        <div id="dishes-wrapper" class="row tab-content">
            <?php foreach ($category as $cat): ?>
                <?php if (isset($cat['child'])): ?>
                    <?php foreach ($cat['child'] as $child): ?>
                        <?php $dishes = $this->menu_model->getInCat($child['id']); ?>
                        <div id="dishes-<?= $child['id'] ?>" class="list-dishes tab-pane">
                            <?php foreach ($dishes as $dish): ?>
                                <?php $this->load->view('layout/dish', array('dish' => $dish)) ?>
                            <?php endforeach; ?>
                        </div>
                    <?php endforeach; ?>
                <?php else : ?>
                    <?php $dishes = $this->menu_model->getInCat($cat['id']); ?>
                    <div id="dishes-<?= $cat['id'] ?>" class="list-dishes tab-pane">
                        <?php foreach ($dishes as $dish): ?>
                            <?php $this->load->view('layout/dish', array('dish' => $dish)) ?>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            <?php endforeach; ?>
        </div>
    </div>

    <div class="col-lg-3 col-md-3 col-sm-5">
        <div id="order-widget">
            <h2 class="h2"><?= $this->lang->line('h2.orders') ?></h2>
            <div><em><?= $this->lang->line('comment') ?><a href="#"><?= $this->lang->line('here') ?></a> </em></div>
            <div id="order-panel">
                <table id="order-table" class="table table-hover">
                    <tr class="table-header">
                        <th><?= $this->lang->line('table.name') ?> </th> <th><?= $this->lang->line('table.price') ?></th>
                    </tr>
                    <tr>
                        <td colspan="2"><strong><?= $this->lang->line('table.total') ?> : </strong><span class="price" id="total-price">0</span></td>
                    </tr>
                </table>
                <div id="order-label"><?= $this->lang->line('order_label') ?></div>
            </div>
            <div class="text-left"><button id="order-btn" data-toggle="modal" data-target="#order-modal" class="btn submit-btn"><?= $this->lang->line('table.order_btn') ?></button></div>
        </div>
    </div>   
</div>
<div class=" clearfix"></div>
