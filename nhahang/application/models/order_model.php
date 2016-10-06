<?php

class order_model extends CI_Model {

    function insert($name, $addr, $phone, $items) {
        $data = array('customer' => $name, 'address' => $addr, 'phone' => $phone);
        $this->db->trans_start();
        $res = $this->db->insert('order', $data);
        if ($res == 0)
            return 0;
        $insert_id = $this->db->insert_id();

        $total = $i = 0;
        foreach ($items as $item) {
            $price = $this->db->select('price')->where('id', $item->id)->get('dish')->row_array();
            if (!empty($price)) {
                $total += $price['price'];
                $data = array('order_id' => $insert_id, 'menu_id' => $item->id, 'quanity' => $item->num);
                $this->db->insert('order_detail', $data);
                ++$i;
            }
        }
        // NOT INSERT 
        if ($i == 0) {
            $this->db->trans_rollback();
            return -1;
        }

        $this->db->where('id', $insert_id);
        $this->db->update('order', array('money' => $total));

        $this->db->trans_complete();
        return $insert_id;
    }

    function getNewOrder() {
        $query = $this->db->query('SELECT COUNT(1) as order_num, MAX(id) as order_id FROM `order` WHERE status = 0');
        if ($query->num_rows() > 0) {
            return $query->row_array();
        }
    }

}
