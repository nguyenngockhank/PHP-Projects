<?php

class product extends MY_Controller {

    function index() {
        $this->load->model('product_model');
        $data['cates'] = $this->category_model->getProductCats();
        $data['products'] = $this->product_model->getAll();
        $data['block'] = 'products';
        $this->render($data);
    }

    function category($cat_id) {
        $cat_id = (int) $cat_id;
        if ($cat_id <= 0) {
            show_404();
        }
        $this->load->model('product_model');
        $data['cates'] = $this->category_model->getProductCats();
        $data['products'] = $this->product_model->getOfCat($cat_id);
        $data['block'] = 'products';
        $this->render($data);
    }

}
