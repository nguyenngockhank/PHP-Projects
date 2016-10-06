<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of info
 *
 * @author Khank
 */
class info extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->init_option_crud('info', true);
        if (!$this->is_admin())
            $crud->unset_delete()->unset_add();

        $crud->required_fields('title', 'meta');

        $crud->unset_fields('order', 'value', 'is_show');
        $crud->unset_columns('group_key', 'order', 'value', 'is_show');
        $crud->field_type('meta', 'text');

        // $crud->unset_texteditor('meta');
        $crud->display_as('title', 'Tiêu đề')
                ->display_as('meta', 'Nội dung');
        $this->render();
    }

}
