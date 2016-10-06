<?php

class import extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->account = $this->session->userdata('logged');

        if (empty($this->account)) {
            exit();
        }
    }

    // rfid

    private function set_upload_options() {
        $config['upload_path'] = './upload/rfidlog/';
        $config['allowed_types'] = 'txt';
        $config['max_size'] = '0';
        $config['overwrite'] = FALSE;
        return $config;
    }

    function rfidlog() {
        $this->load->library('upload');
        $files = $_FILES;
        $cpt = count($_FILES['userfile']['name']);

        $error = [];
        $upload_data = [];
        for ($i = 0; $i < $cpt; $i++) {
            $_FILES['userfile']['name'] = $files['userfile']['name'][$i];
            $_FILES['userfile']['type'] = $files['userfile']['type'][$i];
            $_FILES['userfile']['tmp_name'] = $files['userfile']['tmp_name'][$i];
            $_FILES['userfile']['error'] = $files['userfile']['error'][$i];
            $_FILES['userfile']['size'] = $files['userfile']['size'][$i];
            $this->upload->initialize($this->set_upload_options());
            if (!$this->upload->do_upload()) {
                $error[$_FILES['userfile']['name']] = $this->upload->display_errors();
            } else {
                $upload_data[] = $this->upload->data();
            }
        }

        if (!empty($upload_data)) {
            
            
            foreach ($upload_data as $file) {
                
            }
        }
    }

// barcode

    function confirm($operation_id = null) {
        $this->load->model('operation_model', 'operation');
        if ($operation_id == null) {
            echo $this->operation->confirmLast($this->account['username']);
        } else {
// in the future =)) 
        }
    }

    function setpos($batch_id) {
        $batch_id = (int) $batch_id;
        $this->load->model('batch_model', 'batch');
        $pos = $this->batch->auto_set_position($batch_id);

// bin x col x row
        if ($pos == false)
            echo 'false';
        else
            echo pos2str ($pos);
    }

    function getpos($batch_barc) {
        $this->load->model('batch_model', 'batch');
        $batch = $this->batch->getByBarcode($batch_barc);

        if (!empty($batch)) {
            $pos = $this->batch->getPosition($batch->id);
            $result = new stdClass();
            if (!empty($pos)) {
                $result->pos = $pos->bin . 'x' . $pos->col . 'x' . $pos->row;
                $result->barc = $pos->barcode;

// START LOG OPERATION
                $this->load->model('operation_model', 'operation');
                $res = $this->operation->requestImport(
                        $this->account['username'], $batch->id, $result->pos
                );
                if ($res) {
                    $result->oper_id = $this->db->insert_id();
                }

// OUTPUT
                echo json_encode($result);
            } else {
                $result->pos = 'Wasn\'t choose a position ';
            }
        }
    }

}
