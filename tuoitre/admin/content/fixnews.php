<?php
/* CONTROL */
if(isset($_GET['news_id'])&&(int)$_GET['news_id']){

	if(isset($_POST['submit'])){
		$news_id = (int)$_GET['news_id'];
		$title = $_POST['title'];
		$sum = $_POST['sum'];
		$content = $_POST['content'];
		$subcat_id = (int)$_POST['subcat_id'];
		$cat_id = (int)$_POST['category_id'];
		$hot = (int)$_POST['hot'];

		if(!empty($title) && !empty($sum) && !empty($content)&&!empty($cat_id)){
			/* check file hinh */
			if(isset($_FILES['img']['name'])&&!empty($_FILES['img']['name'])){
				$img = strtolower($_FILES['img']['name']);
				$allowed =  array('jpg','jpeg','png','gif');
				$ext = pathinfo($img, PATHINFO_EXTENSION);
				if(!in_array($ext,$allowed)){
					echo '<script>alert("Không cho phép up file hình này")</script>';
				}else { 	/* upload file + insert database */
					$path = '../images/news/';
					$filename= $path.$img;

					if(file_exists($filename)){
						echo '<script>alert("Trùng tên file hình đã tồn tại")</script>';			
					}else{
						$kq = move_uploaded_file($_FILES['img']["tmp_name"],$filename);
						if($kq){
							include '../includes/common.php';
							$atitle = khongdau($title);
							$news->editNews($news_id,$title,$sum,$content,$cat_id,$subcat_id,$atitle,$hot,$img);
							header ('Location: index.php?act=news');
						}else{
							echo '<script>alert("Upload file hình thất bại")</script>';
						}	
					}			
				}
			}else{
				include '../includes/common.php';
				$atitle = khongdau($title);
				$news->editNews($news_id,$title,$sum,$content,$cat_id,$subcat_id,$atitle,$hot);
				header ('Location: index.php?act=news');
			}	
		}else{
			echo '<script>alert("Nhập thiếu thông tin")</script>';
		}
	}else{ 
	/* Khi ko nhấn submit, click từ trang news qua */
		$res = $news->getNewsById((int)$_GET['news_id']);
		if(mysqli_num_rows($res)>0){
			$row = mysqli_fetch_array($res, MYSQLI_ASSOC);
			$title = $row['title'];
			$cat_id = $row['category_id'];
			$subcat_id = $row['subcategory_id'];
			$sum = $row['summary'];	
			$hot = $row['hot'];
			$content = $row['content'];
		}else{
			header ('Location: index.php?act=news');
		}
	}
}else{
	header ('Location: index.php?act=news');
}

/* VIEW */
include 'view/newsform.php';