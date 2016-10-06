<?php

class course_model extends MY_Model {

    protected $table = 'course';

    function getAll(){
    	 $query = $this->db->select('*')
    	            ->order_by('order')
    	            ->get($this->table);
    	            
          
         return $query->result();              
    }

    function getMedia($course_id) {
        return $this->db->get_where('course_media', array('course_id' => $course_id))
                        ->result();
    }

    function getProblem($id) {
        $query = $this->db->select('id, title, slug, img, summary, content, status, star, time, allow_cm')
                ->where('id', $id)
                ->where('is_show', 1)
                ->get('problem');

        return $query->row();
    }

    function getAllProblems() {
        $query = $this->db->select('id, title, slug, img, summary, status, star')
                ->where('is_show', 1)
                ->order_by('status')
                ->get('problem');

        return $query->result();
    }

    function rate($ip, $problem_id, $star) {
        if ($this->isNotRated($ip, $problem_id)) {
            $data = array(
                'star' => $star,
                'IP' => $ip,
                'problem_id' => $problem_id
            );
            $this->db->insert('problem_rate', $data);
        } else {
            $data = array('star' => $star);
            $this->db->where(array('IP' => $ip, 'problem_id' => $problem_id));
            $this->db->update('problem_rate', $data);
        }

        $this->setStar($problem_id);
    }

    function isNotRated($ip, $problem_id) {
        $res = $this->db->select('id')
                ->where('IP', $ip)
                ->where('problem_id', $problem_id)
                ->get('problem_rate')
                ->row();

        return empty($res);
    }

    function countStar($problem_id) {
        $num = $this->db->where('problem_id', $problem_id)
                ->count_all_results('problem_rate');
        var_dump($num);
        if ($num == 0)
            return 0;

        $res = $this->db->select_sum('star')
                ->where('problem_id', $problem_id)
                ->get('problem_rate')
                ->row();

        return round($res->star / $num);
    }

    function setStar($problem_id) {
        $star = $this->countStar($problem_id);
        $data = array('star' => $star);
        $this->db->where(array('id' => $problem_id));
        return $this->db->update('problem', $data);
    }

}