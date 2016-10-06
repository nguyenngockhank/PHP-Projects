<?php

class picture_model extends CI_Model {

    private function _select() {
        if ($GLOBALS['language'] === 'en') {
            return 'id, name';
        }
        return 'id, viname AS name';
    }

    function getById($id) {
        return $this->db->select($this->_select())
                        ->where('id', $id)
                        ->get('cat_picture')
                        ->row_array();
    }

    function getAllCat($public = null) {
        $query = $this->db->select($this->_select());
        if ($public !== null) {
            $query->where('is_public', $public);
        }
        return $query->get('cat_picture')
                        ->result_array();
    }

    function getPictures($cat_id) {
        return $this->db->select('img, caption')
                        ->where('cat_id', $cat_id)
                        ->order_by('order')
                        ->get('landscape')
                        ->result_array();
    }

}
