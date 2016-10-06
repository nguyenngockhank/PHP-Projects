<?php

class Article extends MY_Admin_Controller {

    const IMG_WIDTH = 400;
    const IMG_HEIGHT = 270;
    const IMG_HOT_WIDTH = 400;
    const IMG_HOT_HEIGHT = 270;

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('article')
                ->order_by('time', 'desc')
                ->unset_columns('content')
                ->unset_add_fields('time')
        ;
        if ($this->role != Admin_model::ROLE_ADMIN) {
            $crud->where('username', $this->account);
            $crud->field_type('username', 'hidden', $this->account);
        } else {
            $crud->set_relation('username', 'user', 'username');
        }

        if ($crud->getState() == 'add') {
            $crud->field_type('slug', 'hidden', '');
        }

        $crud->required_fields('title', 'content');

        $crud->set_field_upload('img', 'upload/article/');
        $crud->field_type('summary', 'text');
        $crud->unset_texteditor('summary');

        $crud->set_relation('cat_id', 'category', 'title');

        $crud->callback_column('img', array($this, '_img_thumb'));
      //  $crud->callback_after_upload(array($this, '_make_img_thumb'));
        $crud->callback_before_insert(array($this, 'call_insert'));
        $crud->callback_before_update(array($this, 'call_update'));
        $crud->callback_before_delete(array($this, 'call_delete'));

        $crud->display_as('username', 'Đăng bởi')
                ->display_as('title', 'Tiêu đề')
                ->display_as('cat_id', 'Danh mục')
                ->display_as('summary', 'Tóm tắt')
                ->display_as('img', 'Hình ảnh(400x270)')
                ->display_as('time', 'Thời gian')
                ->display_as('allow_cm', 'Đăng comment')
                ->display_as('is_show', 'Public')
        ;

        $this->render();
    }

    function _make_img_thumb($uploader_response, $field_info, $files_to_upload) {
        $this->load->library('image_moo');
        $file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
        $this->image_moo->load($file_uploaded)
                ->resize_crop(Article::IMG_WIDTH, Article::IMG_HEIGHT)
                ->save($file_uploaded, true);
        return true;
    }

    function _img_thumb($value, $row) {
        if (empty($value))
            return 'No image';
        return '<a href="' . base_url() . 'upload/article/' . $value . '" class="image-thumbnail">'
                . '<img src="' . base_url() . 'upload/article/' . $value . '" width="100">'
                . '</a>'
        ;
    }

    function call_update($post_array) {
        $this->load->library('media_lib');
        if (empty($post_array['slug']))
            $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        else {
            $string = str_replace(' ', '-', $post_array['slug']); // Replaces all spaces with hyphens.
            $post_array['slug'] = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars
        }
        return $post_array;
    }

    function call_insert($post_array) {
        $this->load->library('media_lib');
        $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        return $post_array;
    }

    function call_delete($primary_key) {
        $news = $this->db->where('id', $primary_key)->get('article')->row();
        if ($news->img) {
            $path = FCPATH . 'upload/article/';
            unlink($path . $news->img);
        }
    }

}