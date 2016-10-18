<?php
class Madmin extends Model{
	
	private $table = 'user';
	
	public function isLogin(){
		return isset($_SESSION['user_id']);
	}
	
	public function logout(){
		unset($_SESSION['user_id']);
	}
		
	public function login($username, $password){
		
		$username = $this->conn->real_escape_string($username);
		$password = $this->conn->real_escape_string($password);
		
		$this->db->select('id');
		$this->db->where(array('username'=>$username, 'password'=> $password, 'level' => 1));
		$result = $this->db->get($this->table);
		
		if($result->num_rows > 0){
            $row = $this->db->fetch_row();
			$_SESSION['user_id'] = $row[0];
			return $row[0]; // return user_id
		}
		return false;
		
	}
	
}