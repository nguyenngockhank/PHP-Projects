<?php
class Quiz extends Controller{
	public function __construct(){
	    $this->model('msubject');
        $this->data['listsubject'] = $this->msubject->getPublic();
    }

	public function index(){
        $this->view('quiz/index');
	}

    public function question($slug , $order = 1){
        $order = (int)$order;
        $this->data['order'] =  $order;
        // detail subject
        $this->data['subject'] = $this->msubject->getInfo($slug);

        if($this->data['subject'] != false){
            $this->data['subject']['slug'] = $slug;
            // detail question
            $this->model('mquestion');
            $detail = $this->mquestion->getByOrder($this->data['subject']['id'], $order);
            if($detail != false){
                $this->data['question'] =  $detail['question'] ;
                $this->data['answer'] = $detail['answer'] ;
            }
        }
        $this->view('quiz/question');
    }


}