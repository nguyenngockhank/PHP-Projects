<?php

class ajax extends CI_Controller {

    function allow_rate($id) {
        $this->load->model('course_model', 'course');
        $id = (int) $id;
        $ip = $this->input->ip_address();
        $res = $this->course->isNotRated($ip, $id);
        echo (int) $res;
    }

    function rate($id, $star) {
        if ($star <= 0 && $star > 5) {
            retunr;
        }

        $this->load->model('course_model', 'course');
        $ip = $this->input->ip_address();

        $res = $this->course->rate($ip, $id, $star);
        echo (int) $res;
//        
//        if ($this->input->valid_ip($ip)) {
//            $res = $this->course->rate($ip, $id, $star);
//            echo (int) $res;
//        }
    }

    function countStar($id) {
        $this->load->model('course_model', 'course');

        $this->course->countStar($id);
    }

}
