<?php

class course extends MY_Controller {

    public function index() {
        $this->load->model('course_model', 'course');
        $data['page_title'] = 'Courses - Enineerxyz - Global engineer';
       // $data['courses'] = $this->course->getAll(false);
        $data['courses'] = $this->course->getAll();     
     //   var_dump($data);exit;
        $this->render('course', $data);
    }

    public function problems() {
        $this->load->model('course_model', 'course');
        $data['problems'] = $this->course->getAllProblems();
        $data['page_title'] = 'Problems - Enineerxyz - Global engineer';
        $this->render('problem_list', $data);
    }

    public function problem($id) {
        $id = (int) $id;
        if ($id <= 0)
            show_404();

        $this->load->model('course_model', 'course');
        $article = $this->course->getProblem($id);

        if (empty($article)) {
            show_404();
        }
        $data['article'] = $article;
        $data['page_title'] = $article->title;

        $this->render('news_detail', $data);
    }

}