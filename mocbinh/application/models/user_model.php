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
class User_model extends MY_Model {

    const LOGIN_FAIL = -1;

    public $_table = 'user';
    protected $primary_key = 'id';
    protected $soft_delete = TRUE;
    protected $soft_delete_key = 'deleted';
    public $protected_attributes = array('username');
//    public $belongs_to = array('role');
//    public $has_many = array('user_role');
    public $log_in_validate = array(
        array('field' => 'username',
            'label' => 'Username',
            'rules' => 'trim|required|xss_clean'
        ),
        array('field' => 'password',
            'label' => 'Password',
            'rules' => 'trim|required|xss_clean'
        )
    );

    function login($username, $password) {
        $username = $this->db->escape_str($username);
        $password = $this->db->escape_str($password);

        $user = $this->with('user_role')->get_by('username', $username);
        if (empty($user) || $user->deleted == 1)
            return User_model::LOGIN_FAIL;

        unset($user->deleted);
        if ($user->is_admin == 1) {
            unset($user->user_role);
        } else if (!empty($user->user_role)) {
            foreach ($user->user_role as &$u_role) {
                $roles[] = $u_role->role_id;
            }
            unset($user->user_role);
            $user->roles = $roles;
        } else {
            return User_model::LOGIN_FAIL;
        }
        return $user;
    }

}
