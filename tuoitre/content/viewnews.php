<?php
	if( empty($_GET['id'])){
		echo '<script>window.location="',$url_host,'"</script>';
		exit('Không tìm thấy tin này trong cơ sở dữ liệu');
	}

	$atitle = $_GET['id'];
	$news->increaseViews($atitle);
	$res = $news->getNewsByAtitle($atitle);
	if(mysqli_num_rows($res)<1){
		echo '<script>window.location="',$url_host,'"</script>';
		exit('Không tìm thấy tin này trong cơ sở dữ liệu');
	}

	$row = mysqli_fetch_array($res,MYSQLI_ASSOC);

?>


<article id="detail_news">
	<header>
		<h1><?= $row['title'] ?></h1>
		<time><?= $row['date'] ?></time>
		<section class="summary"><?= $row['summary'] ?></section>
		<?php
			if(!empty($row['image'])){
			?>
			<img src="<?=$url_host?>images/news/<?=$row['image'] ?>" alt="<?= $row['title'] ?>">
			<?php
			}
		?>	
	</header>
	<section class="content">
		<?= stripslashes($row['content']) ?>
	</section>	
	<footer>
		<a id="likeButton" href="#likeNews" onclick="likeNews()"><img height="25" src="<?= $url_host ?>images/like.jpg"/></a>
		<span id="displayLike"> Thích:  <?= $row['like'] ?> </span> | 
		<span>Lượt xem: <?= $row['views'] ?> </span>
		
	</footer>	
</article>

<section id="commentBox">
	<div id="displayComment">
		<div><h3> Ý kiến bạn đọc(<?= $row['comments']?>)</h3></div>
		<div id="comments">
		<?php
			$res = $news->getComments($atitle);
			while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
			?>
			<div class="comment">
				<header>#<?= $row['id']?> <?= $row['title'] ?></header>
				<time><?= $row['time'] ?></time>
				<p><?= $row['content'] ?></p>
				<footer><?= $row['name'] ?></footer>
			</div>
			<?php
			}
		?>
		</div>
		<?php
			
			
			$pages = $news->getPagesComment($atitle);
			if($pages>0){
				echo '<div class="links">';
				for($i=1;$i<=$pages;$i++){
		            echo '<span class="control"><a href="#',$i,'">',$i,'</a></span>';
		        }	
		        echo '</div>';
			}
		?>	
		
	</div>
	
	<form id="commentForm">
		<h4> Gởi ý kiến </h4>
		<div><label>Tiêu đề</label><input name="title" class="input" type="text" placeholder="Tiêu đề" maxlength="100" /></div>
		<div><label>Nội dung</label><textarea name="content" class="input" rows="4" cols="50" placeholder="Nội dung"></textarea>​</div>
		<div><label>Tên</label><input name="name" class="input" type="text" placeholder="Tên" maxlength="100" /></div>	
		<div><label>Email</label><input name="email" class="input" type="email" placeholder="Email" maxlength="100" /></div>	
		<div><input type="button" onclick="commentNews()" value="Xác nhận"/></div>
	</form>
</section>

<script src="<?= $url_host?>js/user.js"></script>
<script>init('<?= $url_host ?>')</script>