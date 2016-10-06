<?php class news extends MY_Controller {

    function cate($id) {
        if (empty($id))
            show_404();
        $this->load->model('category_model', 'cat');
        $cate = $this->cat->getById($id, false);

        if (empty($cate))
            show_404();

        $this->load->helper('text');
        $data['cate'] = $cate;
        $data['page_title'] = 'Global Engineer' . $cate->title . ' - EngineerXYZ' ; 
        $data['news_hot_list'] = $this->article_model->getHot($cate->id, article_model::NUM_ALL);
        $data['news_list'] = $this->article_model->getOthers($cate->id, article_model::NUM_ALL);
        //        var_dump($data);exit;
        $this->render('news_list', $data);
    }

    function detail($id) {
        $id = (int) $id;
        if ($id <= 0) {
            show_404();
        }
        $this->load->model('article_model');
        $article = $this->article_model->getById($id, false);

        if (empty($article) || !$article->is_show) {
            show_404();
        }
        $data['page_title'] = $article->title;
        $data['article'] = $article;
        $this->render('news_detail', $data);
    }

}