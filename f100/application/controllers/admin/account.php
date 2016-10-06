<?php

class account extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('user')
                ->where('username !="khank"');
        $crud->field_type('password', 'password');
        $this->render();
    }

}
