<?php
if(isset($_GET['category_id'])&&(int)$_GET['category_id']){
	if(isset($_POST['submit'])){
		$cat_id = (int)$_GET['category_id'];
		$name = $_POST['name'];

		if(!empty($name)){
			include '../includes/common.php';
			$aname = khongdau($name);
			$kq = $cat->editCategory($cat_id ,$name,$aname);

			if($kq){
				header ('Location: index.php?act=cat');
			}else{
				echo '<script>alert("Cập nhật không thành công")</script>';
			}
		}else{
			echo '<script>alert("Nhập thiếu thông tin")</script>';
		}	
	}else{
		$res = $cat->getCatById((int)$_GET['category_id']);
		if(mysqli_num_rows($res)>0){
			$row = mysqli_fetch_array($res, MYSQLI_ASSOC);
			$name = $row['name'];
		}else{
			header ('Location: index.php?act=cat');
		}
	}
}else{
	header ('Location: index.php?act=cat');
}

/* VIEW */
include 'view/catform.php';