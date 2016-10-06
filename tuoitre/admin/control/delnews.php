<?php 
include '../../config.php';
include '../../includes/connection.php';
include '../../class/news.class.php';

$news = new News($conn);

if(isset($_GET['news_id'])){
	$id =  $_GET['news_id'];
	$news->delNews($id);
}
$conn->close();
header("Location: ../index.php?act=news");
