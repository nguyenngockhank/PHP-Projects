<?php

class post extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('post_model', 'post');
        $this->load->model('product_model', 'product');
    }

    function index() {
        $data = array();
        $data['posts'] = $this->post->get_all();

        $data['new_products'] = $this->product->get_new();
        $data['hot_products'] = $this->product->get_hot();

        $data['hot_posts'] = $this->post->get_hot();
        $data['event_posts'] = $this->post->get_event();
        $this->render('news_list', $data);
    }

    function detail($id) {
        $id = (int) $id;
        if (!$id) {
            show_404();
        }
        $data = array();
        $data['post'] = $this->post->get($id, true);
        if (!$data['post']) {
            show_404();
        }

        $data['new_products'] = $this->product->get_new();
        $data['hot_products'] = $this->product->get_hot();
        $data['event_posts'] = $this->post->get_event();

        $data['hot_posts'] = $this->post->get_hot();

        $this->render('news_detail', $data);
    }

    function category($cat_id) {
        $this->load->model('category_model', 'category');

        $products = $this->category->get_products($cat_id);
        var_dump($products);
    }

}
