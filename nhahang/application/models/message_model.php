<?php

class message_model extends CI_Model {

    function insert($name, $email, $phone, $content) {
        $data = array(
            'name' => $name,
            'email' => $email,
            'phone' => $phone,
            'content' => $content
        );
        return $this->db->insert('message', $data);
    }

    function getNewMessage() {
        $query = $this->db->query('SELECT COUNT(1) as message_num, MAX(id) as message_id FROM `message` WHERE status = 0');
        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

}
