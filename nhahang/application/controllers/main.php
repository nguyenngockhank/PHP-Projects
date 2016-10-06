<?php

class Main extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->load_lang('main');
    }

    function index() {
        $this->load_lang('home');
        $this->load->model('gui_model');
        $this->load->model('menu_model');
        $this->load->model('blog_model');

        $data['slider'] = $this->gui_model->getSilder();
        $data['list_news'] = $this->blog_model->getHotNews();
        $data['dishes'] = $this->menu_model->getSpecial();
        $data['block'] = 'home';
        return $this->load->view('layout', $data);
    }

    function contact() {
        $this->load_lang('contact');
        $method = $this->input->server('REQUEST_METHOD');
        if ($method === 'GET') {
            $data['block'] = 'contact';
            return $this->load->view('layout', $data);
        }
        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', 'Your name', 'trim|required|max_length[100]');
        $this->form_validation->set_rules('email', 'Your email', 'trim|required|valid_email|max_length[100]');
        $this->form_validation->set_rules('phone', 'Your phone', 'trim|is_natural|max_length[15]');
        $this->form_validation->set_rules('comments', 'Your comments', 'trim|required');
        $data['success'] = 0;
        if ($this->form_validation->run() !== FALSE) {
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $phone = $this->input->post('phone');
            $content = $this->input->post('comments');
            $this->load->model('message_model');
            $data['success'] = $this->message_model->insert($name, $email, $phone, $content);
        }
        $data['block'] = 'contact';
        return $this->load->view('layout', $data);
    }

    function menu() {
        $this->load_lang('menu');
        $this->load->model('category_model');
        $this->load->model('menu_model');
        $data['category'] = $this->category_model->getAll();
        //  $data['dishes'] = $this->menu_model->getInCat($data['category'][0]['id']);
        $data['dishes'] = $this->menu_model->getAll();
        $data['block'] = 'menu';
        return $this->load->view('layout', $data);
    }

    function guide() {
        $data['block'] = 'guide';
        return $this->load->view('layout', $data);
    }

}
