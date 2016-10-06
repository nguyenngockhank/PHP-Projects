
<div id="mainCategory">
<?php
	$res = $cat->getAllCats();
	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
	?>
	<div class="category">
		<header>
			<span class="nameCat"><a href="<?=$url_host.$row['aname'].'.html' ?>"><?= $row['name']?> </a></span>
			<?php /* SHOW CAC SUBCATEGORY*/
			$res2 = $cat->getSubCats($row['category_id']);
			while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
			?>
		        <span class="nameSubCat"><a href="<?=$url_host.$row['aname'].'/'.$row2['aname'].'.html'?>"><?= $row2['name']?> </a></span> 

			<?php
			}
			?>
			<div class="clear"></div>
		</header>
		<section>
		
		<?php
		/* SHOW TIN TUC MOI NHAT */
			$row2 = $news->getNewestNews($row['category_id']);
			if(isset($row2)){
			?>
			<article class="newestNews">
				<?php
					if(!empty($row2['image'])){
						?>
						<img src="<?= $url_host.'images/news/'.$row2['image']?>" width="100" alt="<?= $row2['title'] ?>"/>
						<?php
					}else{
						echo '<img src="',$url_host,'images/noimage.jpg" alt="',$row2['title'],'" />';
					}
				?>	
				<h2><a href="<?=$url_host.'chi-tiet-tin/'.$row2['atitle'].'.html'?>"><?=$row2['title']?></a></h2>
				
				<p><?=$row2['summary']?></p>
			</article>
			<?php	
			}
		?>
		<?php
		/* SHOW TIN TUC MOI THU 2  */
			$res2 = $news->getNewNews(3,1,$row['category_id']);
			if(mysqli_num_rows($res2)>0){
				$row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC);
			?>
			<aside>
				<article>
					<?php
						if(!empty($row2['image'])){
							?>
							<img src="<?= $url_host.'images/news/'.$row2['image']?>" width="100" alt="<?= $row2['title'] ?>"/>
							<?php
						}else{
							echo '<img src="',$url_host,'images/noimage.jpg" alt="',$row2['title'],'" />';
						}
					?>	
					<h2><a href="<?=$url_host.'chi-tiet-tin/'.$row2['atitle']?>.html"><?=$row2['title']?></a></h2>
					<div class="clear"></div>
				</article>
				<ul class="listItem">
				<?php
				/* SHOW CAC TIN KHAC  */
				while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
					echo '<li><a href="',$url_host,'chi-tiet-tin/',$row2['atitle'],'.html">',$row2['title'],'</a></li>';
				}
				?>
				</ul>
			</aside>	
			<?php
			}
		?>
			
			<div class="clear"></div>
		</section>

	</div>
	<?php	
	}
?>	
</div>