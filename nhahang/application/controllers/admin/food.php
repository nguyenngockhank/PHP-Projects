<?php

class food extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();

        $method = $this->router->fetch_method();
        if ($method !== 'category_dishes') {
            $this->loadGC();
        } else {
            $this->loadImgCRUD();
        }
    }

    public function root_category() {
        $crud = $this->crud;
        $crud->set_table('nh_category')
                ->where('parent_id', 0)
                ->unset_columns('parent_id')
                ->unset_fields('parent_id')
                ->unset_edit_fields('parent_id');

        $crud->add_action('<i class=\'icon-plus\'></i> Add dishes', '', 'admin/category_dishes');
        $crud->required_fields('name');
        $crud->display_as('name', 'English name')->display_as('viname', 'Tên Việt')->display_as('parent_id', 'Danh mục cha');
        $this->render();
    }

    public function category() {
        $crud = $this->crud;
        $crud->set_table('nh_category')->where(array('category.parent_id >' => 0));
        $crud->add_action('<i class=\'icon-plus\'></i> Add dishes', '', 'admin/category_dishes');
        $crud->set_relation('parent_id', 'category', 'viname', array('parent_id' => '0'));
        $crud->required_fields('name');
        $crud->display_as('name', 'English name')->display_as('viname', 'Tên Việt')->display_as('parent_id', 'Danh mục cha');
        $this->render();
    }

    public function category_dishes($cat_id) {
        $this->load->model('category_model');
        $cat = $this->category_model->getById($cat_id);

        $image_crud = $this->crud;
        $image_crud->width_size = 255;
        $image_crud->height_size = 255;
        $image_crud->set_primary_key_field('id');
        $image_crud->set_table('nh_dish')
                ->set_title_field('japname')
                ->set_relation_field('cat_id')
                ->set_url_field('img')
                ->set_image_path('images/dish/');

        $data = $image_crud->render();

        $data->categories = $this->category_model->getAll(false);
        $data->title = !empty($cat) ? 'Danh mục ' . $cat['name'] : 'Chọn danh mục';
        $this->load->view('admin/lightbox', $data);
    }

    public function menu() {
        $crud = $this->crud;
        $crud->set_table('nh_dish')->unset_add();
        $crud->set_relation('cat_id', 'category', 'viname');

//        /* Add this customisation for parent_relation */
        $primary_id_field = 'id';
        $table_name = 'category';
        $relation_field_name = 'cat_id';
        $parent_field = 'parent_id';
        $title_field = 'name';
        $title_display_as = 'Chọn danh mục';
        $this->set_parent_relation($primary_id_field, $table_name, $parent_field, $title_field, $crud, $title_display_as, $relation_field_name);
//       
        $crud->required_fields('img');
        $crud->set_field_upload('img', 'images/dish/');

        $crud->field_type('price', 'integer')->field_type('describe', 'text');
        $crud->display_as('enname', 'Tên Anh')->display_as('viname', 'Tên Việt')->display_as('japname', 'Tên Nhật')
                ->display_as('is_special', 'Món đặc biệt')
                ->display_as('cat_id', 'Danh mục')->display_as('price', 'Giá')->display_as('img', 'Hình ảnh');

        $crud->callback_column('price', array($this, '_price_vnd'));
        $crud->callback_column('img', array($this, '_set_dish_thumb'));
        $this->render();
    }

    // callback

    function _price_vnd($value, $row) {
        return number_format($value) . ' VNĐ';
    }

    function _set_dish_thumb($value, $row) {
        return '<img width="200" src="' . site_url() . 'images/dish/thumb__' . $value . '">';
    }

}
