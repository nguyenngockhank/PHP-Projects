<?php

class product extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
        $this->load->library('media_lib');
    }

    private function init_crud() {
        $this->set_table('product');
        $crud = $this->crud;
        $crud->unset_read();


        $this->fieldYesNo('is_public');

        if (!$this->is_admin()) {
            $crud->where('user_id', $this->account->id);
            $crud->field_type('user_id', 'hidden', $this->account->id);
            $crud->columns('title', 'en_title', 'fr_title', 'cover', 'category_id', 'created_at');
        } else {
            $crud->columns('title', 'en_title', 'fr_title', 'cover', 'category_id', 'user_id', 'created_at');
            $crud->set_relation('user_id', 'user', 'username', 'user.deleted = 0');
        }

        return $crud;
    }

    function index() {
        $crud = $this->init_crud();
        $crud->unset_fields('deleted');
        $this->set_soft_delete();
        $crud->unset_texteditor('excerpt');
        $crud->set_field_upload('cover', 'upload/product/');
        $this->resize_image(array(700, 500));
        
        $this->fieldYesNo('is_new');
        $this->fieldYesNo('is_hot');

        $state = $crud->getState();
        if ($state == 'add') {
            $crud->field_type('slug', 'invisible');
            $crud->field_type('created_at', 'invisible');
        }
        $crud->set_relation('category_id', 'category', 'title', array('group' => 'product'));


        if ($this->is_en()) {
            $crud->display_as('category_id', 'Category')
                    ->display_as('user_id', 'Username')
            ;
        } else if ($this->is_fr()) {
            
        } else {
            $crud->display_as('title', 'Tiêu đề')
                    ->display_as('category_id', 'Danh mục')
                    ->display_as('user_id', 'Tài khoản')
                    ->display_as('created_at', 'Tạo lúc')
            ;
        }
        $this->render();
    }

    function trash() {
        $crud = $this->init_crud('post');
        $crud->set_field_upload('cover', 'upload/product/');
        $crud->columns('title', 'slug', 'cover', 'created_at');
        $crud->fields('title', 'deleted');
        $crud->where('product.deleted = 1')
                ->unset_delete();

        $this->fieldYesNo('deleted');
        $this->render();
    }

}
