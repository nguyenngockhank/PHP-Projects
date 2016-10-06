<?php

class gui_model extends CI_Model {

    function getSilder() {
        return $this->db->select('img, caption')
                        ->order_by('order')
                        ->get('slider')
                        ->result_array();
    }

    function getLandscape() {
        return $this->db->select('img, caption')
                        ->order_by('order')
                        ->get('landscape')
                        ->result_array();
    }



}
