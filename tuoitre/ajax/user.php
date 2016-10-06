<?php

$act = isset($_REQUEST['act']) ? $_REQUEST['act'] : '';
$atitle = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';
if(empty($atitle)||empty($act)){
	exit;
}
include '../config.php';
include '../includes/connection.php';
include '../class/news.class.php';

if($act=='like'){
	$news = new News($conn);
	$likes = $news->increaseLike($atitle);
	echo ' Thích : ',$likes,' ';
}else if($act=='comment'){

	$title = isset($_POST['title']) ? $_POST['title'] : '';
	$content = isset($_POST['content']) ? $_POST['content'] : '';
	$name = isset($_POST['name']) ? $_POST['name'] : '';
	$email = isset($_POST['email']) ? $_POST['email'] : '';

	if(!empty($title)&&!empty($content)&&!empty($name)&&!empty($email)){
		$news = new News($conn);	
		$news->addComment($atitle,$title,$content,$name,$email);
		$res = $news->getComments($atitle);
		$num = mysqli_num_rows($res);
		?>
		<div><h3> Ý kiến bạn đọc(<?= $num?>)</h3></div>
		<div id="comments">
			<?php
			while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
			?>
			<div class="comment">
				<header> #<?= $row['id']?> <?= $row['title'] ?></header>
				<time><?= $row['time'] ?></time>
				<p><?= $row['content'] ?></p>
				<footer><?= $row['name'] ?></footer>
			</div>
		</div>
		<?php
		}
		$pages = $news->getPagesComment($atitle);
		if($pages>0){
			echo '<div class="links">';
			for($i=1;$i<=$pages;$i++){
	            echo '<span class="control"><a href="#',$i,'">',$i,'</a></span>';
	        }
	        echo '</div>';
		}
	}
}else if($act=='getcm'){
	$display = (int)$_POST['display'];
	$p = (int)$_POST['p'];

	$news = new News($conn);
	$res= $news->getComments($atitle,$display,$p);
	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
	?>
	<div class="comment">
		<header> #<?= $row['id']?> <?= $row['title'] ?></header>
		<time><?= $row['time'] ?></time>
		<p><?= $row['content'] ?></p>
		<footer><?= $row['name'] ?></footer>
	</div>
	<?php	
	}
}
