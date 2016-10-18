<?php
$subject_id = $_GET['subject'];
//echo $subject_id ;

include '../../config.php';
include WEB_FOLDER.'common.php';
include WEB_FOLDER.'mysql.class.php';
include WEB_FOLDER.'MVC.php';

$app = Controller::_router('admin/tableQuestion/'.$subject_id );
