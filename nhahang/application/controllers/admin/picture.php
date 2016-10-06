<?php

class picture extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
        $method = $this->router->fetch_method();
        if ($method === 'landscape') {
            $this->loadImgCRUD();
        } else {
            $this->loadGC();
        }
    }

    public function cat_picture() {
        $crud = $this->crud;
        $this->render($crud->render());
    }

    public function landscape($id = 0) {
        $this->load->model('picture_model');
        $cat = $this->picture_model->getById($id);

        $image_crud = $this->crud;
        $image_crud->width_size = 90;
        $image_crud->height_size = 60;
        $image_crud->set_primary_key_field('id');

        $image_crud->set_table('landscape')
                ->set_title_field('caption')
                ->set_relation_field('cat_id')
                ->set_url_field('img')
                ->set_image_path('images/landscape/');

        $data = $image_crud->render();
        $data->title = !empty($cat) ? 'Danh mục ' . $cat['name'] : 'Chọn danh mục';
        $data->categories = $this->picture_model->getAllCat();

        $this->load->view('admin/lightbox', $data);
    }

    public function slider() {
        $crud = $this->crud;
        $crud->set_table('slider');
        $crud->set_field_upload('img', 'images/slider/');
        $crud->required_fields('img');
        $this->render($crud->render());
    }

}
