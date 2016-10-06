<?php

class Ajax extends MY_Controller {

    function __construct() {
        parent::__construct();
    }

    function order_modal() {
        $this->load_lang('order_modal');
        return $this->load->view('block/order_modal');
    }

    function other_dishes($cat = 7) {
        $this->load->model('menu_model');
        $data = $this->menu_model->getExcept($cat);
        echo json_encode($data);
    }

    function order() {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', '', 'required|trim');
        $this->form_validation->set_rules('phone', '', 'required|trim');
        $this->form_validation->set_rules('addr', '', 'required|trim');
        $this->form_validation->set_rules('json', '', 'required');
        if ($this->form_validation->run() === FALSE) {
            return show_404();
        }
        $name = $this->input->post('name');
        $phone = $this->input->post('phone');
        $addr = $this->input->post('addr');
        $items = json_decode($this->input->post('json'));

        $this->load->model('order_model');
        echo $this->order_model->insert($name, $addr, $phone, $items);
    }

    function get_new_order() {
        $this->load->model('order_model');
        $this->load->model('message_model');
        $res = $this->order_model->getNewOrder();
        $res2 = $this->message_model->getNewMessage();
        echo json_encode(array_merge($res, $res2));
    }

    function get_info_web() {
        
    }

}
