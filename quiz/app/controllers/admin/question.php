<?php
class Question extends Controller{
	public function __construct(){
		$this->model('madmin');
		if(!$this->madmin->isLogin()){
			exit();
		}
        $this->model('mquestion');
    }
	
	public function index(){
		$this->show();
	}

	private function add_question(){
		$this->data['subject'] = getVar('subject','post', 1);
		$this->data['content'] = getVar('content','post');
		$this->data['type_ques'] = getVar('type_ques','post',1);
		$this->data['num_ans'] = getVar('num_ans','post',4);
        $this->data['lang'] = getVar('lang','post','html');

        // 2 arr
		$this->data['right_ans'] = getVar('right_ans','post',null);
		$this->data['ans'] = getVar('ans','post',null);

        if(isset($_POST['submit'])) {
            $this->data['content'] = trim($this->data['content']);
            if(empty($this->data['content'])){
                $this->data['res'] = false;
                $this->data['message'] = 'CONTENT must be filled !!! ';
            } else if (empty($this->data['right_ans'])){
                // sua <the code>

                $this->data['res'] = false;
                $this->data['message'] = 'Choose at least a RIGHT ANSWER !!!';
            } else {
                $this->inc('highlight');
                $res = highlight_code($this->data['content'], $this->data['lang']);
                if($res){
                   $this->data['content'] = $res;
                } else{
                    $this->data['content'] =  htmlentities($this->data['content']);
                }
                foreach($this->data['ans'] as &$ans){
                     $ans = trim(htmlentities($ans));
                     if(empty($ans)){
                        $this->data['res'] = false;
                        $this->data['message'] = 'Fill in all ANSWERS ';
                        $err = true;
                        break;
                     }
                }

                if(!isset($err)){   // INSERT
                    $this->data['res'] = $this->mquestion->add(
                        $this->data['subject'], $this->data['content'], $this->data['type_ques'],
                        $this->data['ans'], $this->data['right_ans']
                    );

                    if($this->data['res']){
                        $this->data['message'] = 'Insert Successfull ';
                    } else {
                        $this->data['message'] = ' Error ';
                    }

                }
            }
        }
	}

	public function add(){
		$this->data['title'] = 'Insert Question';
		$this->add_question();
		$this->view('admin/question/quesform');
	}

    public function delete($id){

        $this->mquestion->delete($id);
		header('Location: '.WEB_DOMAIN.'admin/question/');
    }

	public function show($id = ''){
		$this->data['title'] = 'Question List';
		$this->data['subject'] = getVar('subject','post', $id);
        
        $this->model('msubject');
	    $this->data['listsubject'] = $this->msubject->getStatistic();
		
		if(!empty($this->data['subject'])){
			$this->data['list'] = $this->mquestion->getAll($this->data['subject']);
		}

		$this->view('admin/question/showquestion');
	}

    public function detail($question_id){
        $this->data['title'] = 'Question Detail';
        $detail = $this->mquestion->getById($question_id);

        $this->data['question'] = $detail['question'];
        $this->data['answer'] =  $detail['answer'];

        $this->view('admin/question/detail');

    }
}