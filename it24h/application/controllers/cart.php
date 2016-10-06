<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cart extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('cart');
//        $this->cart->product_name_rules .= "\pL\"\'";
        $this->cart->product_name_rules = '[:print:]';
    }

    function index($page = 1) {
        $this->title = 'Giỏ hàng - ITshop24h';
        $this->load->model('productModel');
        $data['categories'] = $this->categoryModel->getAll();
        $this->load->view('shopping_cart', $data);
    }

    function update() {
        $rowid = $this->input->post('rowid');
        $qty = (int) $this->input->post('qty');
        $data = array(
            'rowid' => $rowid,
            'qty' => $qty
        );
        print_r($data);
        $this->cart->update($data);
        $this->set_total($this->cart->total_items());
    }

    function del($rowid) {
        $data = array(
            'rowid' => $rowid,
            'qty' => 0
        );
        $this->cart->update($data);
        $this->set_total($this->cart->total_items());
        redirect('gio-hang');
    }

    function add($slug) {
        $this->load->model('productModel');
        $product = $this->productModel->getBySlug($slug);
        if (empty($product)) {
            return;
        }
        $data = array(
            'id' => $slug,
            'qty' => 1,
            'price' => (int) $product['price'],
            'name' => $product['name'],
            'options' => array(
                'img' => $product['img'],
                'id' => $product['id']
            )
        );
        $this->cart->insert($data);
        $this->set_total($this->cart->total_items());
    }

    function total_item() {
        echo $this->cart->total_items();
    }

    function order() {
        if ($this->cart->total_items() <= 0)
            return;
        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', 'Tên', 'trim|required');
        $this->form_validation->set_rules('phone', 'Điện thoại', 'trim|required|min_length[5]|max_length[12]|is_natural');
        $this->form_validation->set_rules('date', 'Ngày giao hàng', 'trim|required|callback_validate_date');
        $this->form_validation->set_rules('address', 'Địa chỉ', 'trim|required');

        if ($this->form_validation->run() == FALSE) {
//            redirect(cart);
            $this->load->view('template/error');
        } else {

            $name = $this->input->post('name');
            $phone = $this->input->post('phone');
            $date = $this->input->post('date');
            $address = $this->input->post('address');
            $note = $this->input->post('note');
            $this->load->model('orderModel');
            if ($this->orderModel->insert($name, $phone, $date, $address, $note, $this->cart->contents())) {
                $this->load->helper('cookie');
                delete_cookie('total_item');
                $this->cart->destroy();
                $data['categories'] = $this->categoryModel->getAll();
                $this->load->model('productModel');
                $this->load->view('order_success', $data);
            }
        }
    }

    function validate_date($date) {
        $opening_date = strtotime($date);
        $current_date = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
        if ($opening_date >= $current_date) {
            return TRUE;
        }
        $this->form_validation->set_message('validate_date', 'Ngày không hợp lệ');
        return FALSE;
    }

    function show() {
        var_dump($this->cart->contents());
        $this->load->model('orderModel');
        $t = $this->orderModel->getAll();
        print_r($t);
    }

    private function set_total($total) {
        $this->load->helper('cookie');
        $cookie = array(
            'name' => 'total_item',
            'value' => $total,
            'expire' => 7200,
            'secure' => false
        );
        $this->input->set_cookie($cookie);
        //  var_dump($this->input->cookie('data', false));
    }

}
