<?php

class distribution extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('distribution');
        $crud->set_field_upload('img', 'images/distribution');

        $crud->callback_column('maps', array($this, '_set_map'));

        $crud->display_as('img', 'Hình ảnh')
                ->display_as('title', 'Tiêu đề')
                ->display_as('address', 'Địa chỉ')
                ->display_as('phone', 'Điện thoại')
                ->display_as('maps', 'Bản đồ')
                ->display_as('serial', 'Thứ tự')
                ;
        $this->render();
    }

    function _set_map($value, $row) {
        return $value;
    }

}
