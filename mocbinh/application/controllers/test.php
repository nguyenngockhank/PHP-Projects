<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of test
 *
 * @author KHANK
 */
class test extends CI_Controller {

    function login() {
//        $this->load->model('user_model', 'muser');
//        $res = $this->muser->login('leo', 'leo');

        $this->load->model('role_model');
        
        $res = $this->role_model->checkPermission([2,3], 'admin/', 'user');
        var_dump($res);
    }

    function relation() {
        $this->load->model('user_model', 'muser');


        $res = $this->muser->with('user_role')
                ->with_deleted()
                ->get_by('username', 'khank');

        var_dump($res);
    }

    function index() {
        $this->load->model('user_model', 'muser');

//      GET 
//          $res = $this->muser->get_all();
//       $res = $this->muser->get_by('username', 'leo');
//       $res = $this->muser->get_by('role', '9');
//        $res = $this->muser->get_many_by('role', '9');
//        
//        INSERT 
//        $res = $this->muser->insert(array(
//            'username' => '  teo4  ',
//            'password' => "  teo2  ",
//            'role' => 1
//        ));
        // DELETE
        // UPDATE
        $res = $this->muser->update('an', array(
            'username' => 'an123',
            'password' => "teo123"
        ));
        echo validation_errors();
//        $res = $this->muser->delete('an2');
        var_dump($res);
    }

}
