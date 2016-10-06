<?php
	$keyword = isset($_GET['k']) ? trim($_GET['k']) : '' ;
?>
<div id="search_wrapper">

	<?php include 'includes/searchform.php' ?> 
	
	<div id="resultSearching">
			
	<?php
	if(!empty($keyword)){	
		include 'includes/common.php';

		$keyword = khongdau($keyword,0);
		$p = (isset($_GET['p'])) ? (int)$_GET['p'] : 1;
		$display = 10;

		$res = $news->searchOnTitle($keyword,$display,$p);

		if(mysqli_num_rows($res)<1){
			echo 'Không có bài viết nào thuộc từ khoá này !';
		}else{
			include 'includes/listnews.php';
			$pages = $news->getPagesSearchOnAtitle($keyword,$display);
			$href = $url_host.'tim-kiem.html?k='.urldecode($keyword).'&p=';
			viewLinks($p,$pages,$href,'');
		}
	}	
	?>
	</div>


</div>

