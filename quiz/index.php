<?php
session_start();
include 'config.php';

include WEB_FOLDER.'common.php';
include WEB_FOLDER.'mysql.class.php';
include WEB_FOLDER.'MVC.php';

$link = isset($_GET['link']) ? $_GET['link'] : 'home';
if($link == 'admin'){
	$link = 'admin/index';
}


//$app = new Controller($link);
$app = Controller::_router($link);
                 // folder , file, function, params

				 
				 