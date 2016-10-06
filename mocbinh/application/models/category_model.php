<?php

class Category_model extends MY_Model {

    public $_table = 'category';
    public $new_list = array();
   //  public $has_many = array('products' => array('model' => 'product_model', 'primary_key' => 'category_id'));
//    public $has_many = array('post' => array('model' => 'post_model', 'primary_key' => 'category_id'));

    public function order_list(&$list, &$parent_id = 0) {
        foreach ($list as $key => $val) {
            if ($val->parent_id == $parent_id) {
                if ($parent_id == 0) {
                    $val->lv = 0;
                } else {
                    $par = $this->new_list[$parent_id];
                    $val->lv = $par->lv + 1;
                    for ($i = 0; $i <= $par->lv; $i++) {
                        $val->title = '___' . $val->title;
                    }
                }
                $this->new_list[$val->id] = $val;
                unset($list[$key]);
                $this->order_list($list, $val->id);
            }
        }
    }

    public function get_cb_list($group) {
        $list = $this->get_many_by('group', $group);
        $this->category->order_list($list);
        $res = array();
        foreach ($this->new_list as &$item) {
            $res[$item->id] = $item->title;
        }
        return $res;
    }

    /** GET PRODUCTS */
    function get_products($cat_key) {
        return $this->with('products')->get($cat_key);
    }

    
    function all_cat_products() {
        return $this->db->get_where($this->_table, array('group' => 'product'))->result();   
    }
}
