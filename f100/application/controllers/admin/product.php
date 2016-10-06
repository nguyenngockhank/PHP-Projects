<?php

class product extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $method = $this->router->fetch_method();
        if ($method !== 'category') {
            $this->loadGC();
        } else {
            $this->loadImgCRUD();
        }
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('product')
                ->unset_add()
                ->unset_fields('time')
        ;
        $crud->set_field_upload('img', 'images/product');
        $crud->set_relation('cat_id', 'category', 'title');

        $crud->callback_column('img', array($this, '_set_product_thumb'));
        $crud->display_as('img', 'Hình ảnh')
                ->display_as('title', 'Tiêu đề')
                ->display_as('describe', 'Mô tả')
                ->display_as('time', 'Ngày đăng')
                ->display_as('cat_id', 'Danh mục')
        ;
        $this->render();
    }

    function _set_product_thumb($value, $row) {
        return '<img width="200" src="' . base_url() . 'images/product/thumb__' . $value . '">';
    }

    function category($cat_id = 0) {
        $image_crud = $this->crud;
        $image_crud->width_size = 260;
        $image_crud->height_size = 180;
        $image_crud->set_primary_key_field('id');
        $image_crud->set_table('product')
                ->set_title_field('title')
                ->set_relation_field('cat_id')
                ->set_url_field('img')
                ->set_image_path('images/product');

        $data = $image_crud->render();

        $this->load->model('category_model');
        $data->categories = $this->category_model->getProductCats();
        $cat = $this->category_model->getById($cat_id);
        $data->title = !empty($cat) ? 'Danh mục ' . $cat['title'] : 'Chọn danh mục';


        $this->load->view('admin/lightbox', $data);
    }

}
