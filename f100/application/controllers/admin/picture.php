<?php

class picture extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
        $method = $this->router->fetch_method();
        if ($method === 'slider') {
            $this->loadImgCRUD();
        } else {
            $this->loadGC();
        }
    }


    public function slider($id = 0) {

        $image_crud = $this->crud;
        $image_crud->width_size = 940;
        $image_crud->height_size = 300;
        $image_crud->set_primary_key_field('id');

        $image_crud->set_table('slider')
                ->set_title_field('title')
                ->set_url_field('img')
                ->set_image_path('images/slider/');

        $data = $image_crud->render();

        $this->load->view('admin/lightbox', $data);
    }

}
