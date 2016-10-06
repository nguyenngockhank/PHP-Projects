<?php
	$keyword = isset($_GET['k']) ? trim($_GET['k']) : '' ;

	$subcat = isset($_GET['subcat']) ? $_GET['subcat'] : 'all';
	$time = isset($_GET['t']) ? $_GET['t'] : 'day';
	$pos  = isset($_GET['pos']) ? $_GET['pos'] : 'title';
	$order  = isset($_GET['o']) ? $_GET['o'] : 'date';
	
?>
<div id="search_wrapper">

	<?php include 'includes/searchform.php' ?> 
	
	<div id="resultSearching">
	<?php
	if(!empty($keyword)){	

		$p = (isset($_GET['p'])) ? (int)$_GET['p'] : 1;

		$display = 10;
		$res = $news->searchNews($keyword,$subcat,$pos,$time,$order,$display,$p);

		if(mysqli_num_rows($res)<1){
			echo 'Không có bài viết nào thuộc từ khoá này !';
		}else{
			include 'includes/listnews.php';
			$href = $url_host.'tim-kiem-nang-cao.html?k='.urlencode($keyword).'&subcat='.$subcat.'&t='.$time.'&pos='.$pos.'&o='.$order.'&p=';
			$pages = $news->getPagesSearch($keyword,$subcat,$pos,$time,$order,$display);
			viewLinks($p,$pages,$href,'');
		}
		
	}	
	?>
	</div>
</div>

