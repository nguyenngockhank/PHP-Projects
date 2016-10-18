<?php
class Index extends Controller{
	public function __construct(){
		$this->model('madmin');
		if(!$this->madmin->isLogin()){
			if(isset($_POST['login'])){
				$this->login();
			}else{
				$this->view('admin/loginform');
				exit();
			}
		}
    }
	
/********* USER **********/	
	public function index(){
		$this->view('admin/header');
		$this->view('admin/welcome');
		$this->view('admin/footer');
	}
	public function login(){
		$username = getVar('username','post');
		$password = getVar('password','post');
		
		$this->madmin->login($username, $password);
		header('Location: '.WEB_DOMAIN.'admin/');
	}
	public function logout(){
		$this->madmin->logout();
		header('Location: '.WEB_DOMAIN);
	}

}