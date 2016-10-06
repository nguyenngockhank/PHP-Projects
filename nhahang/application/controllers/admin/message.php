<?php

class message extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    public function index() {
        if ($this->uri->segment(3) === 'read') {
            $this->call_read_message((int) $this->uri->segment(4));
        }
        $crud = $this->crud;
        $crud->set_table('message')->order_by('id', 'desc');
        $crud->field_type('status', 'dropdown', array('0' => 'Chưa xem', '1' => 'Đã xem'));
        $crud->unset_add()->unset_edit();

        $this->render();
    }

    function call_read_message($primary_key) {
        $this->db->where('id', $primary_key);
        $this->db->update('message', array('status' => 1));
    }

}
