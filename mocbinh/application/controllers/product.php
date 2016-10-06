<?php

class product extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('product_model', 'product');
        $this->load->model('category_model', 'cat');
        $this->load->model('post_model', 'post');
    }

    function index() {
        $data = array();
        $data['categories'] = $this->cat->all_cat_products();
        
        $data['event_posts'] = $this->post->get_event();
        $data['products'] = $this->product->get_all();
        $data['new_products'] = $this->product->get_new();
        $data['hot_products'] = $this->product->get_hot();
        
        $this->render('product_list', $data);
    }

    function detail($product_id) {
        $product = $this->product->get($product_id, true);
        if (empty($product)) {
            show_404();
        }

	$data = array();
        $data['product'] = $product;
        
        $data['event_posts'] = $this->post->get_event();
        $data['hot_products'] = $this->product->get_hot();
        $data['new_products'] = $this->product->get_new();

        if ($product->category_id != 0) {
            $cat = $this->cat->get($product->category_id);
            $data['cat'] = $cat;
            $cat_products = $this->product->get_cat($product->category_id);
            $data['cat_products'] = $cat_products;
        }
        $this->render('product_detail', $data);
    }

    function category($cat_id) {
        $this->load->model('category_model', 'category');

        $products = $this->category->get_products($cat_id);
        var_dump($products);
    }

}
