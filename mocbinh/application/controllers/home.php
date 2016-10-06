<?php

class Home extends MY_Controller {

    function index() {
        $this->render('home');
    }

    function contact() {
        $this->render('contact');
    }

    function service() {
        $this->render('service');
    }

    function about() {
        $data = array();
        $this->load->model('product_model', 'product');
        $this->load->model('category_model', 'cat');
        
        $data['new_products'] = $this->product->get_new();
        $data['hot_products'] = $this->product->get_hot();
        
        $this->render('about', $data);
    }

}
