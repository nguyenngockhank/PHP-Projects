<?php
if(isset($_GET['subcategory_id'])&&(int)$_GET['subcategory_id']){
	if(isset($_POST['submit'])){
		$subcategory_id = (int)$_GET['subcategory_id'];

		$name = $_POST['name'];
		$cat_id = (int)$_POST['cat_id'];

		if(!empty($name)&&!empty($cat_id)){
			include '../includes/common.php';
			$aname = khongdau($name);
			$kq = $cat->editSubCat($subcategory_id,$name,$cat_id,$aname);
			if($kq){
				header ('Location: index.php?act=cat');
			}else{
				echo '<script>alert("Cập nhật không thàh công")</script>';
			}
		}else{
			echo '<script>alert("Nhập thiếu thông tin")</script>';
		}	


		
	}else{
		$res = $cat->getSubCatById((int)$_GET['subcategory_id']);
		if(mysqli_num_rows($res)>0){
			$row = mysqli_fetch_array($res, MYSQLI_ASSOC);
			$name = $row['name'];
			$cat_id = $row['category_id'];
		}else{
			header ('Location: index.php?act=cat');
		}
	}
}else{
	header ('Location: index.php?act=cat');
}

/* VIEW */
include 'view/subcatform.php';