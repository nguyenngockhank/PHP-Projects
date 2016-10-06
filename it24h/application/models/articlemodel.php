<?php

class ArticleModel extends CI_Model {

    const TABLE = 'article';
    const DISPLAY = 6;

    public function getPage() {
        $product_num = $this->db->from(ArticleModel::TABLE)->where('is_service', 0)->count_all_results();
        return ceil($product_num / ArticleModel::DISPLAY);
    }

    public function getOnPage($page) {
        $start = ($page - 1) * ArticleModel::DISPLAY;
        $query = $this->db->select('slug, title, describe, img')->where('is_service', 0)->limit(ArticleModel::DISPLAY, $start)->order_by('id', 'desc');
        $res = $query->get(ArticleModel::TABLE);
        return $res->result_array();
    }

    public function getServices() {
        $query = $this->db->select('slug, title, describe, img')->where('is_service', 1);
        $res = $query->get(ArticleModel::TABLE);
        return $res->result_array();
    }

    public function getBySlug($slug) {
        $slug = $this->db->escape_str($slug);
        $query = $this->db->select('id, title, img, content, describe, is_service')->where('slug', $slug)->get(ArticleModel::TABLE);
        return $query->row_array();
    }

    public function getOthers($id, $is_service = false) {
        $cond = array('id !=' => $id, 'is_service' => (boolean) $is_service);
        $query = $this->db->select('slug, title, img, content, describe')->where($cond)->limit(4)->get(ArticleModel::TABLE);
        return $query->result_array();
    }

}
