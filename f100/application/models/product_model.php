<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of product_model
 *
 * @author Khank
 */
class product_model extends MY_Model {

    protected $table = 'product';

    public function getOfCat($cat_id) {
        return $this->db->order_by('is_hot', 'desc')
                        ->get_where($this->table, array('cat_id' => $cat_id))
                        ->result_array();
    }

}
