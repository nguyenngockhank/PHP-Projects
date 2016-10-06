<?php
class User{

	private $conn;
	function __construct($conn){
		$this->conn = $conn;
	}


	function login($username, $password){
		$username = $this->conn->real_escape_string($username);
		$password = $this->conn->real_escape_string($password);

		$query = 'SELECT * FROM user WHERE username="'.$username.'" AND password ="'.$password.'"';
		$res = $this->conn->query($query);
		if(mysqli_num_rows($res) >  0){
			$row = mysqli_fetch_assoc($res);
			return $row['user_id'];
		} 
		return false;
	}


}