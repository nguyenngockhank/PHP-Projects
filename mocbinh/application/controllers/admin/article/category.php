<?php

class category extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
        $this->load->library('media_lib');
    }

    private function init_crud() {
        $this->set_table('category');
        $crud = $this->crud;
        $crud->where('group', 'post');
        return $crud;
    }

    public function index() {
        $crud = $this->init_crud();
        $crud->field_type('group', 'hidden', 'post');
        $crud->unset_fields('parent_id');
        $crud->unset_columns('parent_id', 'group');

        switch ($crud->getState()) {
            case 'add':
            case 'list':
                $crud->field_type('slug', 'invisible');
                break;
        }

//        $crud->beforeShowList(array($this, '_cb_order_list'));
//        $state = $crud->getState();
//        if (in_array($state, array('add', 'edit'))) {
//            $cb = $this->category->get_cb_list('post');
//            $crud->field_type('parent_id', 'dropdown', $cb);
//        }
        $this->render();
    }

    private $new_list = array();

    public function _cb_order_list($list) {
//        $list[0] = $list[1];
        $this->category->order_list($list);
        $this->crud->unset_columns('parent_id', 'group');
        return $this->category->new_list;
    }

}
