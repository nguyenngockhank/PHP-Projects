<?php

class user extends MY_Admin_Controller {

   protected $roles = array('post' => 'Bài viết', 'product' => 'Sản phẩm', 'slider' => 'Slider');

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    private function init_crud() {
        $this->set_table('user');
        $crud = $this->crud;
        $crud->unset_read();

        $crud->unset_columns('is_admin', 'deleted');
        $crud->field_type('password', 'password');
        $this->fieldYesNo('is_admin');
        return $crud;
    }

    /*
      function _before_insert($post_array) {
      return $post_array;
      }

      function _after_insert($post_array, $primary_key) {
      //        var_dump($post_array);exit;
      $data = ['meta_key' => 'role',
      'user_id' => $primary_key,
      'value' => serialize($post_array['role'])
      ];
      $this->db->insert('user_meta', $data);
      }
     */

    function _call_roles($value, $row) {
        if ($row->is_admin == '1')
            return $this->lang->line('account.all_roles');
        return $value;
    }

    function index() {
        $crud = $this->init_crud();
        $this->set_soft_delete(array('is_admin' => 0));
        $crud->columns('username', 'is_admin', 'created_at', 'role');
        if ($crud->getState() == 'insert') {
            $crud->add_fields('username', 'password', 'created_at');
        } else {
            $crud->fields('username', 'password', 'role');
        }

        $crud->unset_fields('is_admin', 'deleted');

        $crud->callback_column('roles', array($this,'_call_roles'));
        $crud->field_type('role', 'multiselect', $this->roles);
//        $crud->callback_before_insert(array($this, '_before_insert'));
//        $crud->callback_after_insert(array($this, '_after_insert'));
        $this->render();
    }

    function trash() {
        $crud = $this->init_crud();
        $crud->where('deleted', 1)
                ->unset_add()
                ->unset_delete();

        $crud->unset_fields('is_admin');

        $this->fieldYesNo('deleted');
        $this->render();
    }

}
