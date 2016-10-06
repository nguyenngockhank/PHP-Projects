
	<div id="tabInteresting">
        <ul id="optionTab">
            <li><a class="selected" href="#1">Xem nhiều</a></li>
            <li><a href="#2">Quan tâm nhiều</a></li>
            <li><a href="#3">Tuyến bài nóng</a></li>
        </ul>        

        <div id="displayTab">
		    <div style="display: block;">
	      	  	<ul class="listItem">
	      	  	<?php
		    		$res = $news->getMostViewNews(15,0);

					while($row = mysqli_fetch_array($res)){
					?>
					<li><a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a></li>
					<?php	
					}
				?>
	      	   	</ul>
		    </div>
		    <div style="display: none;">
		        <ul class="listItem">    
		        	<?php
		    		$res = $news->getMostLikeNews(15,0);

					while($row = mysqli_fetch_array($res)){
					?>
					<li><a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a></li>
					<?php	
					}
				?>
		        </ul>
		    </div>
		    <div style="display: none;">
		    	
		        <ul class="listItem">    
		        <?php
		    		$res = $news->getHottestNews(15,0);

					while($row = mysqli_fetch_array($res)){
					?>
					<li><a href="<?= $url_host ?>chi-tiet-tin/<?= $row['atitle']?>.html"><?= $row['title']?></a></li>
					<?php	
					}
				?>
	        	</ul>
		    </div>
		</div>   
	</div>
	<script src="<?= $url_host ?>js/tabInteresting.js"></script>
	<script>tabDisplay('optionTab','displayTab');</script>