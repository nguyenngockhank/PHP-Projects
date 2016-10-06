
<form action="" method="get" id="shownews">
	<h2> Các bài viết </h2>
	<input type="hidden" name="act" value="news" />
	<div>
		<span>
			<strong> Danh mục </strong>
			<select name="subcat">
				<option value="0"> Tất cả </option>
				<?php
					$res = $cat->getAllCats();
					while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
					?>
						<optgroup label="<?=$row['name']?>">
						<?php
							$res2 = $cat->getSubCats($row['category_id']);
							while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
								if(isset($_GET['subcat']) && $row2['subcategory_id']==$_GET['subcat']){
									echo '<option value="'.$row2['subcategory_id'].'" selected="selected">'.$row2['name'].'</option>';
								}else{
									echo '<option value="'.$row2['subcategory_id'].'">'.$row2['name'].'</option>';
								}	
							}
						?>
						</optgroup>	
					<?php	
					}
				?>
			</select>
		</span>
		
		<span>
			<strong> Thời gian </strong>	
			<select name="time">
				<?php
					$arr = array('day' => 'Ngày' , 'month'=> 'Tháng' ,'year'=> 'Năm' ,'Anytime'=> 'Anytime' );
					foreach ($arr as $key => $value){
					?>
						<option value="<?= $key ?>" <?= isset($_GET['time']) && $_GET['time']==$key ? 'selected' : '' ?> ><?= $value ?></option>
					<?php	
					}
				?>
			</select>
		</span>

		<span>
			<strong> Số lượng </strong>	
			<select name="display">
				<?php
					$arr = array(5,10,15,20,30);
					foreach ($arr as $value){
					?>
						<option value="<?= $value ?>" <?= isset($_GET['display']) && $_GET['display']==$value ? 'selected' : '' ?> ><?= $value ?></option>
					<?php	
					}
				?>
			</select>
		</span>

		<span><input type="submit" name="submit" value="OK" /></span>

	</div>
</form>

<?php
if(isset($_GET['p']) || isset($_GET['submit'])){
	$p = isset($_GET['p']) ? (int)$_GET['p'] : 1; 

	$subcat = $_GET['subcat'];
	$time = $_GET['time'];
	$display = $_GET['display'];

	$pages = $news->getNumPages($subcat, $time, $display);
	$res = $news->getNews($subcat, $time, $display, $p);
}


if(isset($res)){
	?>
<div id="mainnews">
	<?php
		while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
		?>
		<div class="newsinfo">
			<h3><a href="#"><strong><?= $row['title'] ?></strong></a></h3>
			<a href="#"><img src="../images/news/<?= $row['image'] ?>" width="150" height="100"></a>
			<div class="date"><?= $row['date'] ?></div>
			<div class="summary"><?= $row['summary'] ?></div>
			<div class="option">
				<a href="index.php?act=fixnews&news_id=<?= $row['news_id'] ?>">Sửa</a>
				<a href="control/delnews.php?news_id=<?= $row['news_id'] ?>" onclick="return confirm('Bạn thật sự muốn xoá')">Xoá</a>	
			</div>

			<div class="clear"></div>
		</div>
		<?php
		}
	?>

	<div id="links">
	<?php
	if(isset($p)){
		$next= $p+1;
        $prev= $p-1;
        $href = 'index.php?act=news';
        if($p!=1){    
            echo '<a href="',$href,'&subcat=',$subcat,'&time=',$time,'&display=',$display,'&p=',$prev,'"><span class="control">Trước</span></a>';
        }

        for($i=1;$i<=$pages;$i++){
            if($i==$p){
                echo '<span class="current">',$i,'</span>'; 
            }else{
                echo '<a href="',$href,'&subcat=',$subcat,'&time=',$time,'&display=',$display,'&p=',$i,'"><span class="control">',$i,'</span></a>';
            }
        }

        if($p!=$pages && $pages != 0){    
            echo '<a href="',$href,'&subcat=',$subcat,'&time=',$time,'&display=',$display,'&p=',$next,'"><span class="control">Sau</span></a>';
        }
     }   
	?>
	</div>
</div>
	<?php
}	
?>

