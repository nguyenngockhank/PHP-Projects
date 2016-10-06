<?php

class menu_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->_select = $this->_select();
    }

    private function _select() {
        if ($GLOBALS['language'] === 'en') {
            return 'id, japname, enname AS name, img AS thumb, price';
        }
        return 'id, japname, viname AS name, img AS thumb, price';
    }

    function getAll() {
        return $this->db->select($this->_select . ', cat_id')
                        ->order_by('cat_id')
                        ->get('dish')
                        ->result_array();
    }

    function getInCat($cat_id) {
        return $this->db->select($this->_select)
                        ->where('cat_id', $cat_id)
                        ->get('dish')
                        
                        ->result_array();
    }

    function getExcept($cat_id) {
        return $this->db->select($this->_select . ', cat_id')
                        ->where('cat_id !=', $cat_id)
                        ->order_by('cat_id')
                        ->get('dish')
                        ->result_array();
    }

    function getSpecial() {
        return $this->db->select($this->_select . ', cat_id')
                        ->where('is_special', 1)
                        ->get('dish')
                        ->result_array();
    }

    function getPartion() {
        $all = $this->getAll();
        $new_values = array();
        $old_dishes = array_shift($all);
        foreach ($all as $dish) {
            
        }
    }

}
