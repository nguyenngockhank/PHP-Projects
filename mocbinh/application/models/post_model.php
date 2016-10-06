<?php

class post_model extends MY_Model {

    public $_table = 'post';
    protected $soft_delete = TRUE;
    protected $soft_delete_key = 'deleted';
    var $limit = 10;

    function get_event() {
        $this->_database->where('is_event', 1);
        return $this->get_all();
    }

    function get_hot() {
        $this->_database->where('is_hot', 1);
        return $this->get_all();
    }

    function get_all() {
        $this->_database->select('id, title, slug, created_at, cover, excerpt');
        return parent::get_all();
    }

    function get_offset($offset, $limit) {
        $limit = (int) $limit;
        if (!$limit) {
            $limit = $this->limit;
        }
        return $this->db->get($this->_table, $this->limit)->result();
    }

}