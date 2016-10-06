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
class category extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index($id) {
        $id = (int) $id;

        $crud = $this->crud;
        $crud->set_table('category')
                ->where('parent_id', $id)
                ->unset_columns('parent_id');


        $crud->field_type('parent_id', 'hidden', $id);
        $crud->display_as('title', 'Tên danh mục')
                ->display_as('order', 'Thứ tự')
        ;
        $this->render();
    }

}
