<?php

class problem extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('problem')
                ->order_by('time', 'desc')
                ->unset_columns('content')
                ->unset_add_fields('time')
        ;

        $crud->field_type('status', 'dropdown', array(0 => 'Waiting', 1 => 'Solved'));

        if ($crud->getState() == 'add') {
            $crud->field_type('slug', 'hidden', '');
        }
        
        $crud->required_fields('title', 'content');

        $crud->set_field_upload('img', 'upload/problem/');
        $crud->field_type('summary', 'text');
        $crud->unset_texteditor('summary');

	 $crud->callback_field('star', array($this, '_star_field'));

        $crud->callback_before_insert(array($this, 'call_insert'));
        $crud->callback_before_update(array($this, 'call_update'));
        $crud->callback_before_delete(array($this, 'call_delete'));

        $crud->display_as('title', 'Tiêu đề')
                ->display_as('status', 'Tình trạng')
                ->display_as('summary', 'Tóm tắt')
                ->display_as('img', 'Hình ảnh')
                ->display_as('time', 'Thời gian')
                ->display_as('allow_cm', 'Đăng comment')
                ->display_as('is_show', 'Public')
        ;

        $this->render();
    }

    function call_update($post_array) {
        $this->load->library('media_lib');
        if (empty($post_array['slug']))
            $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        else {
            $string = str_replace(' ', '-', $post_array['slug']); // Replaces all spaces with hyphens.
            $post_array['slug'] = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars
        }
        
         if($post_array['star'] > 5) {
             $post_array['star'] = 5; 	
        } else if($post_array['star'] < 0){
             $post_array['star'] = 0; 	
        }
        
        return $post_array;
    }

    function call_insert($post_array) {
        $this->load->library('media_lib');
        $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        
        if($post_array['star'] > 5) {
             $post_array['star'] = 5; 	
        } else if($post_array['star'] < 0){
             $post_array['star'] = 0; 	
        }
        
        return $post_array;
    }

    function call_delete($primary_key) {
        $news = $this->db->where('id', $primary_key)->get('article')->row();
        if ($news->img) {
            $path = FCPATH . 'upload/problem/';
            unlink($path . $news->img);
        }
    }
    
    function _star_field($value = '', $primary_key = null) {
        if ($primary_key == null)
            return '<input type="number" min="0" max="5" value="0" name="star">';
        return '<input type="number" min="0" max="5" value="' . $value . '" name="star">';
    }

}