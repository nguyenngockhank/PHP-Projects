<?php

class article extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $method = $this->router->fetch_method();
        $this->loadGC();
    }

    function category($cat_id) {
        $cat_id = (int) $cat_id;

        $crud = $this->crud;
        $crud->set_table('article')
                ->unset_columns('cat_id')
                ->unset_add_fields('time')
                ->where('cat_id', $cat_id);

        $crud->set_field_upload('img', 'images/article');
        $crud->field_type('cat_id', 'hidden', $cat_id);

        $crud->display_as('img', 'Hình ảnh')
                ->display_as('title', 'Tiêu đề')
                ->display_as('summary', 'Tóm tắt')
                ->display_as('content', 'Nội dung')
                ->display_as('time', 'Ngày đăng')
                ->display_as('cat_id', 'Danh mục');
        $this->render();
    }

}
