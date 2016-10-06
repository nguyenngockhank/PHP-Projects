<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap-responsive.min.css" />
        <style>
            body
            {
                font-family: Arial;
                font-size: 14px; margin-top: 30px;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>

        <div style="height: 20px;"></div>

        <div class="container">
            <a href="#" title="Thêm Record" class="add-anchor btn">
                <i class="icon-plus"></i>
                Thêm Record                  
            </a>
        </div>


        <div class="container">
            <?php
            $tmpl = array(
                'table_open' => '<table class="table table-bordered tablesorter table-striped">',
            );

            $this->table->set_template($tmpl);
            $this->table->set_heading(array('Tên file', 'Tác vụ',));
            foreach ($files as $file) {
                $view_link = site_url() . 'admin/editor/view?file=' . $file;
                $edit_link = site_url() . 'admin/editor/edit?file=' . $file;
                $del_link = site_url() . 'admin/editor/del?file=' . $file;
                $this->table->add_row(array($file, '<div class="btn-group">
                                        <button class="btn">Tác vụ</button>
                                        <button class="btn dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                               <li>
                                                    <a target="_blank" href="' . $view_link . '" title="View File">
                                                        <i class="icon-share"></i>
                                                        View File                                                    </a>
                                                </li>                
                                          </ul>
                                    </div>'));
            }
            echo $this->table->generate();
            ?>


        </div>
        <script>var site_url = '<?= site_url() ?>'</script>
        <script src="<?= site_url() ?>assets/grocery_crud/js/jquery-1.10.2.min.js"></script>
        <script src="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js"></script>

        <script src="<?= site_url() ?>js/admin.js"></script>

    </body>
</html>
