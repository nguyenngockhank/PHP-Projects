<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Model extends CI_Model {

    protected $table;
    protected $primary_key = 'id';

    public function __construct() {
        parent::__construct();
    }

    public function numRows() {
        return $this->db->count_all($this->table);
    }

    public function getAll($res_arr = true, $select = '*') {
        $query = $this->db->select($select)->get($this->table);
        return $res_arr ? $query->result_array() : $query->result();
    }

    public function getById($id, $res_arr = true, $select = '*') {
        $query = $this->db->select($select)->where($this->primary_key, $id)->get($this->table);
        return $res_arr ? $query->row_array() : $query->row();
    }

    public function getBy($column, $value, $res_arr = true, $select = '*') {
        $query = $this->db->select($select)->where($column, $id)->get($this->table);
        return $res_arr ? $query->result_array() : $query->result();
    }

    public function insert($data) {
        return $this->db->insert($this->table, $data);
    }

    public function delete($id) {
        return $this->db->where($this->primary_key, $id)->delete($this->table);
    }

}
