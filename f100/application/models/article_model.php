<?php

class article_model extends MY_Model {

    protected $table = 'article';

    const NUM_ON_PAGE = 5;

    function getConfig($cat_id) {
        $config['base_url'] = site_url() . 'article/category/' . $cat_id . '/';
        $config['total_rows'] = $this->total_rows($cat_id);
        $config['per_page'] = article_model::NUM_ON_PAGE;
        $config['num_links'] = 6;
        $config['uri_segment'] = 4;
        
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        
        $config['next_link'] = '>';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        
        $config['prev_link'] = '<';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li class="arrow" title="Last Page">';
        $config['last_tag_close'] = '</li>';
        
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li class="arrow" title="First Page">';
        $config['first_tag_close'] = '</li>';
        
        return $config;
    }

    function total_rows($cat_id) {
        $this->db->where('cat_id', $cat_id)
                ->from($this->table);
        return $this->db->count_all_results();
    }

    function getArticles($cat_id, $offset) {
        $query = $this->db->select('id, title, summary, img')
                ->where('cat_id', $cat_id)
                ->limit(article_model::NUM_ON_PAGE, $offset)
                ->order_by('time', 'desc')
                ->get($this->table);
        return $query->result_array();
    }

    function getOthers($id, $cat_id) {
        $query = $this->db->select('id, title, img, time')
                ->where('cat_id', $cat_id)
                ->get($this->table);
        return $query->result_array();
    }

}
