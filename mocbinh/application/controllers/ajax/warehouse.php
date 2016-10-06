<?php

class warehouse extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->account = $this->session->userdata('logged');

        if (empty($this->account)) {
            exit();
        }
        $this->load->model('bin_model', 'bin');
    }

    function pos_error() {
        $res = $this->bin->getNoneBarcodePos();
        echo json_encode($res);
    }

    function pos_stored() {
        $res = $this->bin->getStoredPos();
        echo json_encode($res);
    }

    function pos_check() {
        $res = $this->bin->getCheckPos();
        echo json_encode($res);
    }

    function bin_detail($bin, $row, $col){
        $res = $this->bin->getBinDetail($bin, $row, $col);
        echo json_encode($res);
    }
    
    
}
