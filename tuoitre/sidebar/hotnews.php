<div class="hotNews">
	<h3>Tin mới</h3>   
	<article>
	<?php $row = $news->getNewestNews(); ?>	
		<header>
			<h2>
				<a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a>
				<time><?= $row['date']?></time>
			</h2> 

		</header>
		<p><?= $row['summary']?></p>
	</article>

	<ul class="listItem">
	<?php
		$display = 10;
		$res = $news->getLinkNews(1,$display,'',true);
		while($row = mysqli_fetch_array($res)){
		?>
		<li>
			<a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a>
				<time><?= $row['date']?></time>
		</li>
		<?php	
		}
	?>
	</ul>
</div>