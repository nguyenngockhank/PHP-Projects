<?php

class editor extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->dir = APPPATH . 'views/block';
    }

    function index() {
        $this->load->library('table');
        $data['files'] = $this->_get_files($this->dir);
        $this->load->view('admin/manage/view', $data);
    }

    function view() {
        $submit = $this->input->post('file');

        if ($submit) {
            $this->load->helper('file');
            $content = $this->input->post('source_code');
            $data['res'] = write_file($this->dir . '/' . $submit, $content);
        }
        $file = $this->input->get('file');
        $data['file'] = $file;
        $data['source'] = file_get_contents($this->dir . '/' . $file);
        $this->load->view('admin/manage/editor', $data);
    }

    function _get_files($dir) {
        $this->load->helper('file');
        $files = get_filenames($dir);
        return array_filter($files, function($var) {
            return !in_array($var, array('order_modal.php', 'menu2.php'));
        });
    }

}
