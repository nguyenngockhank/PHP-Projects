<?php
class Home extends Controller{
	public function __construct(){
    }
	function index(){
		$this->data['page_title'] = 'Welcome to hell !!!';
		$this->view('header');
		$this->view('welcome');
		$this->view('footer');
	}
}