<?php

class account extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('user');
        $crud->unset_read();

        $crud->field_type('password', 'password');
        $crud->field_type('role', 'dropdown', array(
            Admin_model::ROLE_MEM => 'Thành viên',
//            Admin_model::ROLE_POST_PIC => 'Đăng ảnh',
//            Admin_model::ROLE_POST_NEWS => 'Đăng tin',
            Admin_model::ROLE_POST => 'Đăng tin & ảnh',
            Admin_model::ROLE_ADMIN => 'Admin',
        ));

        $crud->display_as('username', 'Tên tài khoản')
                ->display_as('password', 'Tên tài khoản')
                ->display_as('role', 'Phân quyền');

        $this->render();
    }

}
