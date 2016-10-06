<?php
/* CONTROL  */
if(isset($_POST['submit'])){
	$name = $_POST['name'];
	if(!empty($name)){
		include '../includes/common.php';
		$aname = khongdau($name);
		$kq = $cat->addCategory($name,$aname);

		if($kq){
			echo '<script>alert("Thêm thành công")</script>';
		}else{
			echo '<script>alert("Trùng mã danh mục")</script>';
		}
	}else{
		echo '<script>alert("Nhập thiếu thông tin")</script>';
	}	
}

/* VIEW  */
include 'view/catform.php';
?>
