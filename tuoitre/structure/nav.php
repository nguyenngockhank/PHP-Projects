
	<ul id="main_nav">
	    <li class="home"><a href="<?= $url_host ?>trangchu.html"></a></li>
	    <?php
	    	$res = $cat->getAllCats();
	    	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
	    		echo '<li><a href="',$url_host,$row['aname'],'.html">',$row['name'],'</a>';		
	    		echo '<ul>';
	    		$res2 = $cat->getSubCats($row['category_id']);
	    		while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
	    			echo '<li><a href="',$url_host,$row['aname'],'/',$row2['aname'],'.html">',$row2['name'],'</a></li>';
	    		}
	    		echo '</ul>';
	    		echo '</li>';
	    	}
	    ?>
	</ul>   