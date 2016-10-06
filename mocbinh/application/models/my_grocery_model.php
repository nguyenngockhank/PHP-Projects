<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MY_grocery_Model extends grocery_CRUD_Model {

    function db_update($post_array, $primary_key_value) {
        if ($this->field_exists('created_at')) {
            if (empty($post_array['created_at'])) {
                $this->load->helper('date');
                $post_array['created_at'] = date('Y-m-d H:i:s', now());
            }
        }
        if ($this->field_exists('slug')) {
            if (empty($post_array['slug'])) {
                $post_array['slug'] = $this->media_lib->slug($post_array['title']);
            }
        }
        if ($this->field_exists('en_slug')) {
            if (empty($post_array['en_slug'])) {
                $post_array['en_slug'] = $this->media_lib->slug($post_array['en_title']);
            }
        }
        if ($this->field_exists('fr_slug')) {
            if (empty($post_array['fr_slug'])) {
                $post_array['fr_slug'] = $this->media_lib->slug($post_array['fr_title']);
            }
        }

        return parent::db_update($post_array, $primary_key_value);
    }

    function db_insert($post_array) {
        if ($this->field_exists('created_at')) {
            $this->load->helper('date');
            $post_array['created_at'] = date('Y-m-d H:i:s', now());
        }
        if ($this->field_exists('slug')) {
            $post_array['slug'] = $this->media_lib->slug($post_array['title']);
        }
        if ($this->field_exists('en_slug')) {
            $post_array['en_slug'] = $this->media_lib->slug($post_array['en_title']);
        }
        if ($this->field_exists('fr_slug')) {
            $post_array['fr_slug'] = $this->media_lib->slug($post_array['fr_title']);
        }

        return parent::db_insert($post_array);
    }

}
