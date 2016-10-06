<?php

class Ajax extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function product_random() {
        $this->load->model('productModel');
        $data['products'] = $this->productModel->getRandom();
        $this->load->view('template/product_random', $data);
    }

}
