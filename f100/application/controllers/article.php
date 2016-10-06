<?php

class article extends MY_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function category($cat_id, $offset = 0) {
        $cat_id = (int) $cat_id;
        if ($cat_id <= 0) {
            show_404();
        }
        $this->load->library('pagination');
        $this->load->model('article_model');
        $config = $this->article_model->getConfig($cat_id);

        $this->pagination->initialize($config);
        $data['cat_id'] = $cat_id;
        $data['articles'] = $this->article_model->getArticles($cat_id, $offset);
        $data['block'] = 'list_news';
        $this->render($data);
    }

    public function detail($id) {
        $this->load->model('article_model');
        $id = (int) $id;
        $data['news'] = $this->article_model->getById($id);
        $data['category'] = $this->category_model->getById($data['news']['cat_id']);
        $data['other_articles'] = $this->article_model->getOthers($id, $data['news']['cat_id']);
        $data['block'] = 'detail_news';
        $this->render($data);
    }

}
