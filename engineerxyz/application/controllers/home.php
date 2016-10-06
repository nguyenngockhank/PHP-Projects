<?php

class Home extends MY_Controller {

    function index() {
        $this->load->helper('text');
        $data['top_stories'] = $this->article_model->getTopStories();
        $data['steps'] = $this->gui_model->getSteps();
        $data['slider'] = $this->gui_model->getBanner();
        $this->render('home', $data);
    }

}
