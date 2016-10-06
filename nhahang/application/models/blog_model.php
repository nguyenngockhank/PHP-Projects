<?php

class blog_model extends CI_Model {

    const TABLE = 'blog';

    public function getHotNews() {
        return $this->db->select('id, title')
                        ->where('type', 1)
                        ->get(blog_model::TABLE)
                        ->result_array();
    }

    public function getRecents() {
        return $this->db->select('id, summary, title, time, img')
                        ->where('type', 0)
                        ->order_by('time', 'desc')
                        ->limit(6)
                        ->get(blog_model::TABLE)
                        ->result_array();
    }

    public function getRandoms() {
        return $this->db->select('id, summary, title, time, img')
                        ->where('type', 0)
                        ->order_by('id', 'random')
                        ->limit(6)
                        ->get(blog_model::TABLE)->result_array();
    }

    public function getDetail($id) {
        return $this->db->select('content, title, time, img')
                        ->where('id', $id)
                        ->get(blog_model::TABLE)
                        ->row_array();
    }

}
