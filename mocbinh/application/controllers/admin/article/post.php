<?php

class post extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
        $this->load->library('media_lib');
    }

    private function init_crud($group) {
        $this->set_table('post');
        $crud = $this->crud;
        $crud->where('post_type', $group)
                ->unset_read();

        $crud->field_type('post_type', 'hidden', $group);
        $this->fieldYesNo('is_public');

        if (!$this->is_admin()) {
            $crud->where('user_id', $this->account->id);
            $crud->field_type('user_id', 'hidden', $this->account->id);
            $crud->columns('title', 'slug', 'cover', 'category_id','is_hot', 'is_event', 'created_at');
        } else {
            $crud->columns('title', 'slug', 'cover', 'category_id', 'is_hot', 'is_event', 'created_at');
            $crud->set_relation('user_id', 'user', 'username', '`user`.deleted = 0');
        }

        return $crud;
    }

    function index() {
        $crud = $this->init_crud('post');
        $this->set_soft_delete();


        $crud->unset_texteditor('excerpt');
        $crud->set_field_upload('cover', 'upload/article/post/');
//        $this->resize_image(array(400, 200));
        $state = $crud->getState();

        if ($state == 'add') {
            $crud->field_type('slug', 'invisible');
            $crud->field_type('created_at', 'invisible');
        }
        
        $this->fieldYesNo('is_hot');
        $this->fieldYesNo('is_event');

        $crud->set_relation('category_id', 'category', 'title', array('group' => 'post'));
        $crud->unset_fields('deleted');
        $this->render();
    }

    function trash() {
        $crud = $this->init_crud('post');
        $crud->set_field_upload('cover', 'upload/article/post/');
        $crud->columns('title', 'slug', 'cover', 'created_at');
        $crud->fields('title', 'deleted');
        $crud->where('post.deleted = 1')
                ->unset_delete();

        $this->fieldYesNo('deleted');
        $this->render();
    }

}
