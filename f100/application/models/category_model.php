<?php

class Category_model extends MY_Model {

    protected $table = 'category';

    private function getType($type = 0) {
        return $this->db->select('id, title')
                        ->where('parent_id', $type)
                        ->where('is_show', 1)
                        ->order_by('order')
                        ->get($this->table)
                        ->result_array();
    }

    public function getProductCats() {
        return $this->getType(1);
    }

    public function getNewsCats() {
        return $this->getType(2);
    }

}
