<?php
	if(!isset($_GET['id']) || empty($_GET['id'])){
		echo '<script>window.location="',$url_host,'"</script>';
		exit('Không tìm thấy tin này trong cơ sở dữ liệu');
	}

	$aname = $_GET['id'];
	$p = (isset($_GET['p'])) ? (int)$_GET['p'] : 1;
	$display = 5;

	$res = $news->getNewsByCat2($aname, $display,$p);

	if(mysqli_num_rows($res)<1){
		echo 'Không có bài viết nào trong chủ đề này ! <br> <a href="'.$url_host.'trangchu.html">Quay về trang chủ</a> ';
	}
	echo '<div id="catmain">';

	include 'includes/listnews.php';

	$pages = $news->getPagesCat2($aname,$display);
    $res =explode('.html',$_SERVER["REQUEST_URI"]);
    $res = $res[0];
    $res =explode('/trang-', $res);
    $href = $res[0];	
    $href .='/trang-';
    viewLinks($p,$pages,$href);



	echo '</div>';
?>