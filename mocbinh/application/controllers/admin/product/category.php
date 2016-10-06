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

        $crud->where('group', 'product');

        return $crud;
    }

    public function index() {
        $crud = $this->init_crud();

        if ($this->is_en()) {
            
        } else if ($this->is_fr()) {
            
        } else {
            
        }

        $crud->unset_fields('parent_id');
        $crud->unset_columns('parent_id', 'group');
        $crud->field_type('group', 'hidden', 'product');

        switch ($crud->getState()) {
            case 'add':
            case 'list':
                $crud->field_type('slug', 'invisible');
                $crud->field_type('en_slug', 'invisible');
                $crud->field_type('fr_slug', 'invisible');
                break;
        }

        $crud->display_as('title', 'Tiêu đề')
                ->display_as('en_title', 'Title')
                ->display_as('fr_title', 'Fr Title')
        ;
        $this->render();
    }

}
