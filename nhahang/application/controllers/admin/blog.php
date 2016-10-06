<?php

class blog extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $_this = $this;
        $crud->set_table('nh_blog')
                ->where('type', 0)
                ->unset_columns('type')
                ->unset_fields('type')
        ;
        $crud->set_field_upload('img', 'images/blog/');
        
        $crud->callback_column('img', array($this, '_set_blog_thumb'));
//        
//        $crud->callback_add_field( 'content' , function(){
//            return $this->_text_editor('content');
//        });
        $crud->callback_before_insert(array($this, 'date_callback'));
        
        
        
        $crud->display_as('title', 'Tiêu đề')
                ->display_as('summary', 'Tóm tắt')
                ->display_as('content', 'Nội dung')
                ->display_as('time', 'Thời gian')
                ->display_as('img', 'Hình ảnh')
        ;
        $this->render();
    }

    public function notice() {
        $crud = $this->crud;
        $crud->set_table('nh_blog')
                ->where('type', 1);
        $crud->unset_columns('img', 'type', 'summary');
        $crud->unset_fields('img', 'summary');

        $crud->callback_before_insert(array($this, 'date_callback'));
        $crud->field_type('type', 'hidden', 1);

        $crud->display_as('title', 'Tiêu đề')
                ->display_as('content', 'Nội dung')
                ->display_as('time', 'Thời gian')
        ;
        $this->render();
    }

    function _set_blog_thumb($value, $row) {
        if (!empty($value))
            return '<img width="200" src="' . site_url() . 'images/blog/' . $value . '" >';
    }

    function date_callback($post_array) {
        if (empty($post_array['time'])) {
            $post_array['time'] = date("Y-m-d");
        }
        return $post_array;
    }

}
