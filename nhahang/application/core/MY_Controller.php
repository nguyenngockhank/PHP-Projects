<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

$language = '';

class MY_Controller extends CI_Controller {

    function __construct() {
        parent::__construct();

        $GLOBALS['language'] = $this->input->get('lang');
        if ($GLOBALS['language'] === 'en') {
            $this->key_lang = 'english';
//            $this->lang->load('english', 'english');
        } else {
            $this->key_lang = 'vietnam';
            $GLOBALS['language'] = 'vi';
//            $this->lang->load('vietnam', 'vietnam');
        }
        $this->config->load('web_config');
        $this->load->helper('gui');
    }

    function load_lang($pack) {
        $this->lang->load($pack, $this->key_lang);
    }

}

class MY_Admin_Controller extends CI_Controller {

    protected $crud;

    function __construct() {
        parent::__construct();
        $login = $this->session->userdata('admin');
        $method = $this->router->fetch_method();
        if (!$login) {
            return redirect('admin/filter');
        }
    }

    function loadGC() {
        $this->load->library('grocery_CRUD');
        $this->crud = new grocery_CRUD();
        $this->crud->set_language('vietnamese');
        $this->crud->set_theme('twitter-bootstrap');
        $this->crud->unset_print();
    }

    function loadImgCRUD() {
        $this->load->library('image_CRUD');
        $this->crud = new Image_CRUD();
        $this->crud->folder = 'admin/';
    }
    
    function loadTextEditor(){
        
    }

    // RENDER
    function render($output = null) {
        if ($output === null)
            $output = $this->crud->render();
        $this->load->view('admin/dashbroad.php', $output);
    }

    function _text_editor($fieldName) {
        return '<textarea class="ckeditor" name="' . $fieldName . '"></textarea>';
    }

    // RELATION
    function set_parent_relation($primary_id_field, $table_name, $parent_field, $title_field, $crud, $title_display_as, $relation_field_name, $where = null, $same_table = false) {
        $this->gc_id = $primary_id_field;
        $this->gc_table = $table_name;
        $this->gc_field_name = $relation_field_name;
        $this->gc_parent = $parent_field;
        $this->gc_title = $title_field;
        $this->gc_where = $where;
        $this->gc_title_display_as = $title_display_as;
        $this->gc_same_table = $same_table;

        $crud->set_css('assets/grocery_crud/css/jquery_plugins/chosen/chosen.css');
        $crud->set_js('assets/grocery_crud/js/jquery-1.10.2.min.js');
        $crud->set_js('assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js');
        $crud->set_js('assets/grocery_crud/js/jquery_plugins/ajax-chosen.js');
        $crud->set_js('assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js');

        $crud->set_relation($this->gc_field_name, $this->gc_table, $this->gc_title);

        $crud->callback_field($this->gc_field_name, array($this, 'parent_relation_callback'));
    }

    function parent_relation_callback($value = '', $primary = null) {
        if (!empty($value)) {
            $this->gc_history = $this->get_parent_history($value);
        }

        $return_string = '<script type="text/javascript"> var ajax_relation_url = ""; </script>';
        $return_string .= '<select name="' . $this->gc_field_name . '" class="chosen-select" data-placeholder="' . $this->gc_title_display_as . '"><option value=""></option>';
        $return_string .= $this->parent_repeat(null, -1, $value);
        $return_string .= '</select>';

        return $return_string;
    }

    function parent_repeat($parent = null, $tree_level = -1, $value = '') {
        $return_string = '';
        if ($this->gc_where !== null)
            $this->db->where($this->gc_where);
        if ($parent === null)
            $this->db->where($this->gc_parent . ' =0');
        else
            $this->db->where($this->gc_parent, $parent);
        $db_result = $this->db->get($this->gc_table);

        if ($db_result->num_rows() > 0) {
            $tree_level++;
            foreach ($db_result->result() as $result) {
                $tree_string = $tree_level != 0 ? '|' . str_repeat('-', $tree_level * 4) : '';
                $selected = $value !== '' && $value == $result->{$this->gc_id} ? 'selected = "selected"' : '';
                $disabled = $this->gc_same_table && !empty($value) && in_array($result->{$this->gc_id}, $this->gc_history) ? 'disabled="disabled"' : '';

                $return_string .= "<option value='" . $result->{$this->gc_id} . "' {$selected} {$disabled} >{$tree_string} " . $result->{$this->gc_title} . "</option>";
                $return_string .= $this->parent_repeat($result->{$this->gc_id}, $tree_level, $value);
            }
        }
        return $return_string;
    }

    function get_parent_history($id) {
        $history = array();
        $this->db->where($this->gc_id, $id);
        $result = $this->db->get($this->gc_table)->row();
        $history[] = $result->{$this->gc_id};
        while (!empty($result->{$this->gc_parent})) {
            $this->db->where($this->gc_id, $result->{$this->gc_parent});
            $result = $this->db->get($this->gc_table)->row();
            $history[] = $result->{$this->gc_id};
        }
        return $history;
    }

}

/* End of file */