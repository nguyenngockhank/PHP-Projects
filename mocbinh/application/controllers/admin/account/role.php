<?php

class role extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('role');
        $crud->unset_columns('`role`.deleted');
        $crud->unset_fields('`role`.deleted');
        $crud->where('`role`.deleted', 0);

        $crud->unset_columns('deleted');
        $crud->unset_fields('deleted');


        $crud->set_field_upload('icon', 'upload/role');
        $crud->callback_after_upload(array($this, 'resize_icon'));

        $crud->callback_delete(array($this, '_cb_soft_delete'));

        $crud->set_relation('parent_id', 'role', 'title', 'parent_id = 0');
        $this->render();
    }

    function resize_icon($uploader_response, $field_info, $files_to_upload) {
        $this->load->library('image_moo');
        $file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
        $this->image_moo->load($file_uploaded)->resize(120, 120)->save($file_uploaded, true);
        return true;
    }

}
