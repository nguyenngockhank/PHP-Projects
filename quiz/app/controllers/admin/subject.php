<?php
class Subject extends Controller{
	public function __construct(){
		$this->model('madmin');
		if(!$this->madmin->isLogin()){
			exit();
		}
		$this->model('msubject');
    }
		
	private function process_subject($func, $id=''){
		$this->data['name'] = getVar('name','post');
		$this->data['slug'] = getVar('slug','post');
		$this->data['public'] = getVar('public','post');
		if(isset($_POST['submit'])){
			if(!empty($this->data['name'])){
				if(empty($this->data['slug'])){
					$this->inc('slug');
					$this->data['slug'] = slug($this->data['name']);
				}
				call_user_func(array($this, $func), $id);
			}else{
				$this->data['res'] = false;
				$this->data['message'] = ' NAME cannot be empty ';
			}
		}
	}
	private function add_subject(){
		$this->data['res'] = $this->msubject->add($this->data['name'], $this->data['slug'], $this->data['public']);		
		if($this->data['res']){
			$this->data['message'] = $this->data['name'].' added ';
		}else{
			$this->data['message'] = $this->data['name'].' duplicate ';
		}
	}
	private function edit_subject($id){
		$this->data['res'] = $this->msubject->edit($id, $this->data['name'], $this->data['slug'], $this->data['public']);		
	}
	
	public function index(){
		$this->show();
	}
	
	public function show(){
		$this->data['title'] = 'Subject List';
		$this->data['list'] = $this->msubject->getAll();
		$this->view('admin/subject/showsubject');
	}
	
	public function add(){
		$this->process_subject('add_subject');
		$this->data['title'] = 'Insert Subject';
		$this->view('admin/subject/subjectform');
	}
	
	public function edit($id){
		$id = (int)$id;

		$this->data['title'] = 'Edit Subject';
		if(isset($_POST['submit'])){
			$this->process_subject('edit_subject',$id);
			
			if($this->data['res']){
				header('Location: '.WEB_DOMAIN.'admin/subject/');	
			} else {
				$this->view('admin/subject/subjectform');	
			}			
		}else{
			$data = $this->msubject->getById($id);
			if($data){
				$this->data = array_merge($this->data, $data);		
				$this->view('admin/subject/subjectform');	
			}	
		}	
	}
	
	public function delete($id){
		$this->msubject->delete($id);	
		header('Location: '.WEB_DOMAIN.'admin/subject/');
	}
	
}