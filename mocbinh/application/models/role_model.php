<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of user_model
 *
 * @author KHANK
 */
class Role_model extends MY_Model {

    public $_table = 'role';

    const DEFAULT_ACCESS = false;

    function checkPermission($roles, $dir, $class) {
        $ret = $this->get_by('link_access', $dir);

        if (empty($ret)) {
            $ret = $this->get_by('link_access', $dir . $class);
        }
        
        if (empty($ret)) {
            return Role_model::DEFAULT_ACCESS;
        }
        return in_array($ret->id, $roles);
    }

}
