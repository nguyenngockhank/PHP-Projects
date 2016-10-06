<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Admin_Controller extends GC_Controller {

    function __construct() {
        parent::__construct();
        // CHECK SESSION
        $this->account = $this->session->userdata('logged');
        if (empty($this->account)) {
            redirect($this->config->item('link_logout'));
        }

        // CHECK PERMISSTION
        $this->config->load('ad_config');

        // LOAD LANG
        $this->init_lang();
//        $this->output->enable_profiler(true);
    }

    /*
     * LANGUAGE MODULES
     */

    function init_lang() {

        $lang = $this->input->cookie('lang');
        // SET DEFAULT LANG
        if (empty($lang)) {
            $cookie = array(
                'name' => 'lang',
                'value' => 'vi',
                'expire' => '86500',
                'secure' => FALSE
            );
            $this->input->set_cookie($cookie);
            $lang = 'vi';
        }

        $this->key_lang = ($lang === 'en') ? 'english' : (($lang === 'fr') ? 'france' : 'vietnam');
        $this->load_lang('admin');
    }

    function is_fr() {
        return $this->key_lang == 'france';
    }

    function is_en() {
        return $this->key_lang == 'english';
    }

    function is_vi() {
        return $this->key_lang == 'vietnam';
    }

    function load_lang($pack) {
        $this->lang->load($pack, $this->key_lang);
    }

    /*
     * LANGUAGE MODULES
     */
    function is_admin() {
        return $this->account->is_admin == '1';
    }

    function init_option_crud($group_key, $use_meta = false) {
        $this->set_table('option');
        $crud = $this->crud;
        $crud->where('group_key', $group_key)
                ->order_by('order')
                ->unset_export()
        ;
        if ($use_meta === false) {
            $crud->unset_columns('meta', 'group_key')
                    ->unset_fields('meta');
        } else {
            $crud->unset_columns('group_key');
        }
        $crud->required_fields('title', 'value');
//        $crud->display_as('order', 'Thứ tự');
        $crud->callback_field('order', array($this, 'fieldOrder'));
        $crud->field_type('group_key', 'hidden', $group_key);
        return $crud;
    }

}

class GC_Controller extends CI_Controller {

    protected $image_size = array();

    function __construct() {
        parent::__construct();
    }

    function loadGC() {
        $this->load->library('grocery_CRUD');
        $this->crud = new grocery_CRUD();
        if ($this->key_lang == 'vietnam')
            $this->crud->set_language('vietnamese');
        $this->crud->set_theme('twitter-bootstrap');
        $this->crud->set_model('MY_grocery_Model');

        $this->crud->unset_print();
    }

    function loadImgCRUD() {
        $this->load->library('image_CRUD');
        $this->crud = new Image_CRUD();
        $this->crud->folder = 'admin/';
    }

    function render($output = null) {
        if ($output === null)
            $output = $this->crud->render();
        $this->load->view('admin/dashbroad.php', $output);
    }

//////////////////////////
///////  RESIZE IMAGE
//////////////////////////
    protected function addImgSize($size) {
        if (is_array($size)) {
            $this->image_size[] = $size;
        } else {
            $this->image_size[] = array((int) $size, (int) $size);
        }
    }

    function resize_image($size = null) {
        if (!empty($size))
            $this->addImgSize($size);
        $this->crud->callback_after_upload(array($this, '_cb_resize_image'));
    }

    function _cb_resize_image($uploader_response, $field_info, $files_to_upload) {
        if (empty($this->image_size))
            return true;

        $this->load->library('image_moo');
        $info = pathinfo($uploader_response[0]->name);
        $file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;
        $filename = basename($file_uploaded, '.' . $info['extension']);

        foreach ($this->image_size as $sizes) {
            $width = $sizes[0];
            $height = $sizes[1];
            $newpath = $field_info->upload_path . '/' . $filename . "{$width}x{$height}." . $info['extension'];
            $this->image_moo->load($file_uploaded)->resize_crop($width, $height)->save($newpath, true);
        }
        return true;
    }

//////////////////////////
///////  SOFT DELETE
//////////////////////////
    function set_soft_delete($condition = '') {
        $crud = $this->crud;
        $crud->where($crud->get_table() . '.deleted', 0);
        if (!empty($condition))
            $crud->deleted_cond = $condition;
        $crud->callback_delete(array($this, '_cb_soft_delete'));
    }

    function _cb_soft_delete($primary_key) {
        $crud = $this->crud;
        $tbl = $this->crud->get_table();
        if (isset($crud->deleted_cond))
            $this->db->where($crud->deleted_cond);
        $num = $this->db->update($tbl, array('deleted' => '1'), array('id' => $primary_key));
        return $num > 0;
    }

//////////////////////////
//////  FIELD YES - NO
//////////////////////////
    function fieldYesNo($field) {
        $this->crud->field_type($field, 'true_false', array('No', 'Yes'));
    }

    function fieldOrder($value = '', $primary_key = null) {
        if ($primary_key == null)
            return '<input type="number" class="" value="10" name="order">';
        return '<input type="number" class="" value="' . $value . '" name="order">';
    }

    function set_table($tbl) {
        $this->crud->set_table($this->db->dbprefix($tbl));
    }

}

class MY_Controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('gui');
//        $this->load->model('gui_model');
//        $this->load->model('article_model');
//        $this->output->enable_profiler(true);
    }

    function render($block = null, $data = array()) {
        if (!isset($data['page_title'])) {
            $data['page_title'] = 'Coffee Moc binh';
        }
        if ($block == null) {
            $block = $this->router->fetch_method();
        }
        $data['block'] = $block;
       
        $class = $this->router->fetch_class();
        $this->load->view('layout', $data);
    }

}

/* End of file */