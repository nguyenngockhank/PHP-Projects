<?php

class OrderModel extends CI_Model {

    const TABLE = 'order';

    public function getAll() {
        return $this->db->get(OrderModel::TABLE)->result_array();
    }

    public function insert($name, $phone, $date, $address, $note, &$items) {
        $info = array(
            'name' => $name,
            'phone' => $phone,
            'date' => $date,
            'address' => $address,
            'note' => $note
        );

        $this->db->trans_start();
        $this->db->insert('order', $info);

        $detail = array();
        foreach ($items as &$item) {
            $t['order_id'] = $this->db->insert_id();
            $t['quanity'] = $item['qty'];
            $t['product_id'] = $item['options']['id'];
            $detail[] = $t;
        }

        $this->db->insert_batch('order_detail', $detail);
        return $this->db->trans_complete();
    }

}

?>
