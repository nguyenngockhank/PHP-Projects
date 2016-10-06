<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <?php foreach ($css_files as $file): ?>
            <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>

        <style type='text/css'>
            *{
                margin: 0; 
            }
            body
            {
                font-family: Arial;
                font-size: 14px;
            }
            a {
                color: blue;
                text-decoration: none;
                font-size: 14px;
            }
            a:hover
            {
                text-decoration: underline;
            }
            .navbar{
                overflow: hidden;
                border-bottom: 1px solid #ddd;
            }
            .nav{
                list-style: none;
            }
            .navbar-nav{
                float: left;
            }
            .navbar-right{
                float: right;
            }
            .navbar-nav li{
                float: left; 
                padding: 5px 8px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar" role="navigation">
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<?= base_url('admin/order') ?>">Đơn đặt hàng</a></li>
                    <li><a href="<?= base_url('admin/category') ?>">Danh mục</a></li>
                    <li><a href="<?= base_url('admin/product') ?>">Sản phẩm</a></li>
                    <li><a href="<?= base_url('admin/article') ?>">Bài viết</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<?= base_url('adminlogin/logout') ?>">Thoát</a></li>
                </ul>
            </div>
        </nav>


        <select id="select" name="cat_id" class="form-control">
            <option value="0">--- Chọn danh mục</option>
            <?php $categories = $this->categoryModel->getAll(); ?>
            <?php foreach ($categories as $cat) : ?>
                <option value="<?= $cat['id'] ?>">---<?= $cat['name'] ?></option>
                <?php if (!empty($cat['child'])) : ?>
                    <?php foreach ($cat['child'] as $child) : ?>
                        <option value="<?= $child['id'] ?>">------ <?= $child['name'] ?></option>
                    <?php endforeach; ?>
                <?php endif; ?>
            <?php endforeach; ?>
        </select>



        <div>
            <?php echo $output; ?>
        </div>


        <?php foreach ($js_files as $file): ?>
            <script src="<?php echo $file; ?>"></script>
        <?php endforeach; ?>
        <script>
            $(function() {
                $('#select').change(function() {
                    var val = $(this).val();
                    window.location.href = '<?= site_url() ?>' + 'admin/product/' + val;
                });
            });
        </script>
    </body>
</html>
