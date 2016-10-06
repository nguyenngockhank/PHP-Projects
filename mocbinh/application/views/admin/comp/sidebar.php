<aside class="sidebar">
    <nav class="sidebar-nav">
        <ul id="sidebar_menu">
            <li>
                <a href="<?= site_url('admin') ?>">
                    <span class="sidebar-nav-item-icon fa fa-lg fa-dashboard"></span> 
                    <?= $this->lang->line('sidebar.control.dashboard') ?>
                </a> 
            </li>
            <li data-control="user">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-user fa-lg"></span>
                    <span class="sidebar-nav-item"><?= $this->lang->line('sidebar.control.user') ?></span>
                    <span class="fa arrow"></span>
                </a>
                <ul>
                    <li data-method="list">
                        <a href="<?= site_url('admin/account/user') ?>">
                            <span class="sidebar-nav-item-icon fa fa-list-alt"></span> <?= $this->lang->line('sidebar.method.list') ?>
                        </a>
                    </li>
                    <li data-method="add">
                        <a  href="<?= site_url('admin/account/user/index/add') ?>">
                            <span class="sidebar-nav-item-icon fa fa-plus"></span> <?= $this->lang->line('sidebar.method.add') ?>
                        </a>
                    </li>
                    <li data-method="trash">
                        <a href="<?= site_url('admin/account/user/trash') ?>">
                            <span class="sidebar-nav-item-icon fa fa-trash-o"></span> <?= $this->lang->line('sidebar.method.trash') ?>
                        </a>
                    </li>
                </ul>
            </li>
            <li data-control="post">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-pencil fa-lg"></span> 
                    <?= $this->lang->line('sidebar.control.post') ?> <span class="fa arrow"></span>
                </a>
                <ul>
                    <li data-method="list">
                        <a href="<?= site_url('admin/article/post') ?>">
                            <span class="sidebar-nav-item-icon fa fa-list-alt"></span> <?= $this->lang->line('sidebar.method.list') ?>
                        </a>
                    </li>
                    <li data-method="add">
                        <a href="<?= site_url('admin/article/post/index/add') ?>">
                            <span class="sidebar-nav-item-icon fa fa-plus"></span> <?= $this->lang->line('sidebar.method.add') ?>
                        </a>
                    </li>
                    <li data-method="cat">
                        <a href="<?= site_url('admin/article/category') ?>">
                            <span class="sidebar-nav-item-icon fa fa-folder"></span> <?= $this->lang->line('sidebar.method.cat') ?>
                        </a>
                    </li>
                    <li  data-method="trash">
                        <a href="<?= site_url('admin/article/post/trash') ?>">
                            <span class="sidebar-nav-item-icon fa fa-trash-o"></span> <?= $this->lang->line('sidebar.method.trash') ?>
                        </a>
                    </li>
                </ul>
            </li>
            <li data-control="product">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-shopping-cart fa-lg"></span> 
                    <?= $this->lang->line('sidebar.control.product') ?> <span class="fa arrow"></span>
                </a>
                <ul>
                    <li data-method="list">
                        <a href="<?= site_url('admin/product/product') ?>">
                            <span class="sidebar-nav-item-icon fa fa-list-alt"></span> <?= $this->lang->line('sidebar.method.list') ?>
                        </a>
                    </li>
                    <li data-method="add">
                        <a href="<?= site_url('admin/product/product/index/add') ?>">
                            <span class="sidebar-nav-item-icon fa fa-plus"></span> <?= $this->lang->line('sidebar.method.add') ?>
                        </a>
                    </li>
                    <li data-method="cat">
                        <a href="<?= site_url('admin/product/category') ?>">
                            <span class="sidebar-nav-item-icon fa fa-folder"></span> <?= $this->lang->line('sidebar.method.cat') ?>
                        </a>
                    </li>
                    <li data-method="trash">
                        <a href="<?= site_url('admin/product/product/trash') ?>">
                            <span class="sidebar-nav-item-icon fa fa-trash-o"></span> <?= $this->lang->line('sidebar.method.trash') ?>
                        </a>
                    </li>
                </ul>
            </li>
            <li data-control="order">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-bank fa-lg"></span> 
                    <?= $this->lang->line('sidebar.control.order') ?> <span class="fa arrow"></span>
                </a>
                <ul>
                    <li data-method="list">
                        <a href="<?= site_url('admin/product/order') ?>">
                            <span class="sidebar-nav-item-icon fa fa-list-alt"></span> <?= $this->lang->line('sidebar.method.list') ?>
                        </a>
                    </li>
                    <li data-method="trash">
                        <a href="<?= site_url('admin/product/order/trash') ?>">
                            <span class="sidebar-nav-item-icon fa fa-trash-o"></span> <?= $this->lang->line('sidebar.method.trash') ?>
                        </a>
                    </li>
                </ul>
            </li>
            <li data-control="gui">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-desktop fa-lg"></span>
                    <?= $this->lang->line('sidebar.control.gui') ?>
                    <span class="fa arrow"></span>
                </a>
                <ul>
                    <li data-method="slider">
                        <a href="<?= site_url('admin/option/slider') ?>">
                            Slider
                        </a>
                    </li>
                    <li data-method="info">
                        <a href="<?= site_url('admin/option/info') ?>">
                            Info
                        </a>
                    </li>
                    <li>
                        <a href="<?= site_url('admin/option/layout') ?>">
                            Layout
                        </a>
                    </li>
                </ul>
            </li>
            <li data-control="config">
                <a href="#">
                    <span class="sidebar-nav-item-icon fa fa-cogs fa-lg"></span>
                    <?= $this->lang->line('sidebar.control.config') ?>
                </a>
            </li>
        </ul>
    </nav>
</aside>