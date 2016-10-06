<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Welcome extends MY_Controller {

    public function index() {
        $this->load->model('gui_model');
        $this->load->model('article_model');
        $data['sliders'] = $this->gui_model->getAllSlider();
        $data['products'] = $this->gui_model->getHotProducts();
        $data['other_articles'] = $this->gui_model->getOtherArticles(17); // su kien
        $data['list_news'] = $this->gui_model->getTopNews(); // su kien
        $data['block'] = 'main';
//        $this->load->view('layout/main', $data);
        $this->render($data);
    }

    public function about() {
        $this->load->model('gui_model');
        $data['list_news'] = $this->gui_model->getTopNews(); // su kien
        $data['other_articles'] = $this->gui_model->getOtherArticles(17); // su kien
        $data['block'] = 'about';
        $this->render($data);
//        $this->load->view('layout/about');
    }

    public function phanphoi() {
        $this->load->model('distribution_model');
        $data['items'] = $this->distribution_model->getAll();
        $data['block'] = 'phanphoi';
        $this->render($data);
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */