<?php

class order extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    public function index() {
        $crud = $this->crud;
        $crud->set_table('nh_order')->order_by('id', 'desc');
        $crud->add_action('<i class=\'icon-list-alt\'></i> View Details', '', 'admin/order/detail');
        $crud->unset_add();
        $crud->field_type('status', 'dropdown', array('0' => 'Chưa xem', '1' => 'Đã xem'));
        $crud->callback_before_delete(array($this, 'call_delete_order'));
        $this->render($crud->render());
    }

    public function detail($order_id) {
        $crud = $this->crud;
        $crud->set_table('nh_order_detail')
                ->where('order_id', $order_id);
        $this->call_update_order($order_id);

        $crud->unset_columns('order_id');
        $crud->unset_operations();

        $crud->callback_column('menu_id', array($this, '_get_info_dish'));

        $crud->display_as('menu_id', 'Món ăn')
                ->display_as('quanity', 'Số lượng');
        $this->render($crud->render());
    }


    function _get_info_dish($value, $row) {
        $dish = $this->db->where('id', $value)
                ->get('dish')
                ->row_array();

        if (empty($dish)) {
            return 'Không có thông tin về món này !!!';
        }
        $str = '<img width="150" class="pull-left" style="padding-right: 10px" src="' . base_url() . 'images/dish/thumb__' . $dish['img'] . '"><br>';
        $str .= '<div><strong>Tên món</strong> : ' . $dish['japname'] . '</div>';
        $str .= '<div><strong>Đơn giá</strong> : ' . $dish['price'] . ' VND </div>';
        return $str;
    }

    function call_update_order($primary_key) {
        $this->db->where('id', $primary_key);
        $this->db->update('order', array('status' => 1));
    }

    function call_delete_order($primary_key) {
        $user = $this->db->where('order_id', $primary_key)->delete('order_detail');
    }

}
