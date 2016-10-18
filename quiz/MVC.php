<?php if ( ! defined('APP_PATH')) exit('No direct script access allowed');

class Controller {
    protected $db;
    protected $data=array();

    public function __construct(){
        $this->db = MySQL::getInstance();
    } 

    public static function _router($default){
		$request = isset($_GET['r']) ? $_GET['r'] : $default;

		$segments = explode('/',$request);
		$dir = APP_PATH.'controllers/';
		
		while (isset($segments[0]) && is_dir($dir.$segments[0])) {
            $dir .= $segments[0].'/';
            $segments = array_slice($segments, 1);
        }
		
		$dir = str_replace('//','/',$dir);
		 
		$control = isset($segments[0]) ? $segments[0] : '';
		$action = isset($segments[1]) ? $segments[1] : 'index'; 
		$params = isset($segments[2]) ? array_slice($segments,2) : array();
		
		$_file = $dir . $control . '.php';	
		
		if( file_exists($_file)){
            include_once $_file;   
            $class = ucfirst($control);      
            $controller = new $class();
            call_user_func_array(array($controller, $action), $params);
        } else {
            die('Error: Could not load request <b>' . $request . '</b>' );
        }   
    } 
    
	public function model($model){
        $_file = APP_PATH.'models/'.$model.'.php';
        if (file_exists($_file)) {
            include_once($_file);
            $this->{$model} = new $model();
        } else {
            die('Error: Could not load model <b>' . $model . '</b>' );
        } 
    }
	
	public function inc($name){
		$_file = APP_PATH.'inc/'.$name.'.php';
		if (file_exists($_file)) {
			include $_file;
		}
	}
   
	public function view($template){
        $_file = APP_PATH.'views/'.$template.'.php';
        if (file_exists($_file)) {
            extract($this->data);
            ob_start();
            include($_file);
            $_content = ob_get_clean();
            echo $_content;
        } else {
            die('Error: Could not load template <b>' . $template . '</b>' );
        }               
    } 
	
}

class Model {
    protected $db;
	protected $conn;
    public function __construct(){
		$this->db = MySQL::getInstance();
		$this->conn = $this->db->getConnection();
    }
}
