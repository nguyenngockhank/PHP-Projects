<?php
session_start();
include '../config.php';
include '../includes/connection.php';
if(!isset($_SESSION['user_id'])){
	include 'content/login.php';
}
if(isset($_SESSION['user_id'])){
	include 'init.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Quản lý website</title>
<link rel="stylesheet" href="../css/admin.css"/>
</head>
<body>
<div id="page_wrapper">
	<div id="page_header"></div>
	<div id="page_content">
		<div id="sidebar">
			<ul>
				<li><a href="?act=news"> Các bài viết </a></li>
				<li><a href="?act=addnews"> Đăng bài </a></li>
			</ul>
			
			<ul>
				<li><a href="?act=cat"> Danh mục </a></li>
				<li><a href="?act=addcat"> Thêm danh mục cha </a></li>
				<li><a href="?act=addsubcat"> Thêm danh mục con </a></li>
			</ul>	
			
			<ul>
				<li><a href="#"> Quản lý khác </a></li>
				<li><a href="#"> Quản lý tài khoản </a></li>
				<li><a href="#"> Đổi thông tin cá nhân </a></li>
				<li><a href="#"> Đổi mật khẩu </a></li>
			</ul>	
		</div>
		<div id="content">
		<?php
			include 'content.php';	
		?>
		</div>
		<div class="clear"></div>
	</div>
	<div id="page_footer">
		<p>
			&copy; Copyright Khank 
		</p>
	</div>
</div>
</body>
</html>
<?php
}
$conn->close();
?>