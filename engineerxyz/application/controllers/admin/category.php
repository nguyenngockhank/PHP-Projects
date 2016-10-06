<?php

class Category extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('category')
                ->order_by('order')
                ->unset_columns('parent_id')
                ->unset_add_fields('parent_id')
                ->unset_edit_fields('parent_id')
        ;

        if ($crud->getState() == 'add') {
            $crud->field_type('slug', 'hidden', '');
        }
        $crud->callback_field('order', array($this, 'order_field'));
        $crud->callback_field('num_post', array($this, 'num_post_field'));

        $crud->callback_before_insert(array($this, 'call_insert'));
        $this->render();
    }

    function call_insert($post_array) {
        $this->load->library('media_lib');
        $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        return $post_array;
    }

    
    function num_post_field($value = '', $primary_key = null) {
        if ($primary_key == null)
            return '<input type="number" class="" value="4" name="num_post">';
        return '<input type="number" class="" value="' . $value . '" name="num_post">';
    }

}
