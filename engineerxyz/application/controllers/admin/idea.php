<?php

class idea extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('idea')
                ->unset_add()
                ->order_by('accepted', 'desc')
        ;


        $crud->callback_column('accepted', array($this, '_accept_control'));

        $output = $this->crud->render();
        $output->js_files[] = base_url() . 'assets/js/admin_idea.js';

        $this->render($output);
    }

    function ajax_accept($idea_id, $value) {
        $data = array(
            'accepted' => 1
        );
        echo $this->db->where('id', $idea_id)
                ->update('idea', $data);
    }

    function _accept_control($value, $row) {
        switch ($value) {
            case '0':
                return '<div data-id="' . $row->id . '" id="ck-' . $row->id . '" class="btn-group">'
                        . '<button class="btn chk_idea" data-accept="1"><i class="icon-ok"></i></button>'
                        . '<button class="btn chk_idea" data-accept="0"><i class="icon-remove"></i></button>'
                        . '</div>';

            case '1':
                return 'Đã chấp nhận';
            default:
                break;
        }
    }

}
