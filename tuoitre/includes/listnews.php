<?php
	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
	?>	
	<div class="listnews">
		<article>
			<header>
				<h2><strong><a href="<?= $url_host.'chi-tiet-tin/'.$row['atitle'].'.html'?>"><?=$row['title']?></a></strong></h2>
			</header>
			<section>
				<?php
					if(!empty($row['image'])){
						?>
						<img src="<?= $url_host.'images/news/'.$row['image']?>" width="100" alt="<?= $row['title'] ?>"/>
						<?php
					}
				?>	
				<time><?=$row['date']?></time>
				<p><?=$row['summary']?></p>
				<div class="clear"></div>
			</section>
			<footer>Lượt xem (<?= $row['views']?>) | Thích (<?= $row['like']?>)</footer>
		</article>
	</div>
	<?php
	}

function viewLinks($current, $pages, $href,$html='.html'){
	$next= $current+1;

	echo '<nav class="links">';

    if($current!=1){    
        echo '<span class="control"><a href="',$href,($current-1),$html,'">Trước</a></span>';
    }

    for($i=1;$i<=$pages;$i++){
        if($i==$current){
            echo '<span class="current">',$i,'</span>'; 
        }else{
            echo '<span class="control"><a href="',$href,$i,$html,'">',$i,'</a></span>';
        }
    }

    if($current!=$pages && $pages != 0){    
        echo '<span class="control"><a href="',$href,$next,$html,'">Sau</a></span>';
    }

	echo '</nav>';
}