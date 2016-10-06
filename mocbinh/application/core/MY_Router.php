<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of MY_Router
 *
 * @author Khank
 */
class MY_Router extends CI_Router {

    function __construct() {
        parent::__construct();
//        var_dump($this);exit;
    }

    function set_directory($dir) {
        $this->directory = $dir . '/';
    }

}
