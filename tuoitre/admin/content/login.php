<?php
include '../class/user.class.php';
$user = new User($conn);

if(isset($_POST['submit'])){
	$username = $_POST['username'];
	$password = $_POST['password'];

	$res = $user->login($username, $password);
	if($res){
		$_SESSION['user_id'] = $res;
		header('Location : index.php');
	}else{
		include 'view/loginform.php';
	}	
}else{
	include 'view/loginform.php';
}




