<?php

class Media extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->load_lang('main');
    }

    function articles() {
        $this->load_lang('news');
        $this->load->model('blog_model');
        $data['articles'] = $this->blog_model->getRecents();
        $data['randoms'] = $this->blog_model->getRandoms();
        $data['block'] = 'news';
        return $this->load->view('layout', $data);
    }

    function article($id) {
        $this->load_lang('news');
        if (!isset($id)) {
            return show_404();
        }
        $id = (int) $id;
        $this->load->model('blog_model');
        $data['article'] = $this->blog_model->getDetail($id);
        $data['randoms'] = $this->blog_model->getRandoms();
        $data['block'] = 'article';
        return $this->load->view('layout', $data);
    }

    function pictures() {
        $this->load_lang('landscape');
        $this->load->model('picture_model');
        $data['categories'] = $this->picture_model->getAllCat(1);
        $data['block'] = 'landscape';
        return $this->load->view('layout', $data);
    }

}
