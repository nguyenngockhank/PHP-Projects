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

    public $_table = 'product';
    public $primary_key = 'id';
   // public $belongs_to = array('category' => array('model' => 'category_model', 'primary_key' => 'category_id'));
    
    
   function get_new(){
       $this->_database->where('is_new', 1);
       return $this->get_all();
   }
   
   function get_hot(){
       $this->_database->where('is_hot', 1);
       return $this->get_all();
   }
   
   function get_cat($cat_id) {
        $this->_database->where('category_id', $cat_id);
        return $this->get_all();
    }
           
   function get_all() {
       $this->_database->select('id, title , category_id, price, old_price, cover');
       return parent::get_all();
   }
   
    
           
    function get($product_key, $include_cat = false) {
        if ($include_cat)
            $this->with('category');

        $t = (int) $product_key;
        if ($t > 0)
            return parent::get($product_key);
        return $this->get_by('slug', $product_key);
    }

    function get_random($qty = 10) {
        $qty = (int) $qty;
        $this->limit($qty)->order_by('random');
    }

  

//    ->with('author')
}
