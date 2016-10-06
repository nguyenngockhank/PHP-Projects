<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Admin extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $role = $_SESSION['role'];
        if ($role == Admin_model::ROLE_ADMIN) {
            redirect('admin/article');
        } else if ($role == Admin_model::ROLE_POST_NEWS || $role == Admin_model::ROLE_POST) {
            redirect('admin/article');
        } else if ($role == Admin_model::ROLE_POST_PIC) {
            redirect('assets/ckfinder/ckfinder.html');
        }
        exit();
    }

    public function index() {
        $this->load->library('grocery_CRUD');
        $this->crud = new grocery_CRUD();
        $this->crud->set_theme('twitter-bootstrap');
        $this->crud->unset_print();
        $this->load->view('admin/main');
    }

    // CALLBACK COLUMNS
}