<?php 
if(empty($act)){ 
?>
<section id="liveshow">
<aside class="left">
	<?php include 'sidebar/hotnews.php' ?>
	
</aside>
<section class="center">
	<?php
		$res = $news->getHottestNews(1,0,true,true);
		$row = mysqli_fetch_array($res,MYSQLI_ASSOC);
	?>
	<article id="newest_news">
	    <header>
			<h2>
				<a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html">
					<?= $row['title']?>
				</a>
			</h2>
		</header>
	    <section>
	        <a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html">
	            <img src="<?= $url_host ?>images/news/<?= $row['image']?>" alt="<?= $row['title']?>" />
	        </a>
			<p>
				<?= $row['summary']?>	
			</p>
	     </section>
	</article>

	<ul class="listnews">
		<?php
			$res = $news->getHottestNews(6,1,false,true);
			while($row = mysqli_fetch_array($res)){
			?>
			<li>
				<a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html">
					<img style="height: 74px;" alt="<?= $row['title']?>" src="<?= $url_host ?>images/news/<?= $row['image']?>">
				</a>
				<span>
					<a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a>
				</span>
			</li>
			<?php	
			}
		?>
	    <div class="clear"></div>
	</ul>
</section>

<aside class="right">
	<?php
		include 'sidebar/interestingnews.php';
	?>
</aside>
<div class="clear"></div>
</section>
<?php 
}
?>