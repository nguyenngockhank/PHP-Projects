<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of category
 *
 * @author doanv_000
 */
class category extends MY_Controller {

    public function __construct() {
        parent::__construct();
//        $this->load->model('category_model');
    }

    public function products() {
        $data['cates'] = $this->category_model->getType(1);
        $this->load->view('layout/products',$data); 
    }

}
