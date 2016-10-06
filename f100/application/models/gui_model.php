<?php

class gui_model extends MY_Model {

    protected $table = '';

    function getAllSlider() {
        $this->table = 'slider';
        return $this->getAll();
    }

    function getHotProducts() {
        $query = $this->db->select('title, img, describe, cat_id')
                ->where('is_top', 1)
                ->limit(4)
                ->get('product');
        return $query->result_array();
    }

    function getTopNews() {
        $query = $this->db->select('id, title')
                ->order_by('time', 'desc')
                ->where('cat_id', 15)
                ->limit(5)
                ->get('article');
        return $query->result_array();
    }

    function getOtherArticles($cat_id) {
        $query = $this->db->select('id, title, img, time')
                ->where('cat_id', $cat_id)
                ->limit(4)
                ->order_by('time', 'desc')
                ->get('article');
        return $query->result_array();
    }

}
