<?php


/* CONTROL */
if(isset($_POST['submit'])){
	$name = $_POST['name'];
	$cat_id = (int)$_POST['cat_id'];
	if(!empty($name)&&!empty($cat_id)){
		include '../includes/common.php';
		$aname = khongdau($name);
		$kq = $cat->addSubCat($name,$cat_id,$aname);
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
include 'view/subcatform.php';
?>
