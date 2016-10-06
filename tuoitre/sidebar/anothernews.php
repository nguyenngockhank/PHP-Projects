<?php
$asubname = $_GET['id'];
if(!empty($asubname)){
	$display = 10;
?>
<div>
	<?php
	$res = $cat->getAnotherSubCat($asubname);
	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
		echo '<h3 class="title"><a href="',$url_host,$row['aname'],'/',$row['asubname'],'.html">'.$row['name'].'</a></h3>';
		$res2 = $news->getLinkNews(0,$display,$row['asubname']);
		echo '<ul class="listItem">';
		while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
			echo '<li><a href="',$url_host,'chi-tiet-tin/',$row2['atitle'],'.html">',$row2['title'],'</a></li>';
		}
		echo '</ul>';	
	}
	?>
	</ul>
</div>
<?php
}
?>