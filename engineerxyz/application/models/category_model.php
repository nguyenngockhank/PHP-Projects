<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of category_model
 *
 * @author KHANK
 */
class category_model extends MY_Model {

    protected $table = 'category';

    function getAll() {

        return parent::getBy('is_show', 1, true, '*');
    }

}
