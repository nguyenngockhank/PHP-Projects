<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Article extends CI_Controller {

    function __construct() {
        parent::__construct();
//        $this->output->cache(60 * 3);
    }

    function index($page = 1) {
        $this->title = 'Thủ thuật - ITshop24h';
        $page = (int) $page;
        $data['categories'] = $this->categoryModel->getAll();
        $data['page_num'] = $this->articleModel->getPage();
        $data['articles'] = $this->articleModel->getOnPage($page);
        $this->load->view('article/articles', $data);
    }

    function service() {
        $this->title = 'Các dịch vụ của ITshop24h';
        $data['categories'] = $this->categoryModel->getAll();
        $data['articles'] = $this->articleModel->getServices();
        $this->load->view('article/services', $data);
    }

    function view($slug) {
        if (empty($slug)) {
            show_404();
            return;
        }
        $article = $this->articleModel->getBySlug($slug);
        if (empty($article)) {
            show_404();
            return;
        }

        $this->title = $article['title'];
        if (empty($article['img'])) {
            $article['img'] = 'nophoto.jpg';
        }

        $data['article'] = &$article;
        $data['articles'] = $this->articleModel->getOthers($article['id'], $article['is_service']);
        $this->is_service = &$article['is_service'];
        $this->load->view('article/article_detail', $data);
    }

}
