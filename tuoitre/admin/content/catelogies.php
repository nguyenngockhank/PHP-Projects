

<h2>Các danh mục</h2>
<div id="showcat">
<?php
	$res = $cat->getAllCats();
	while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){	
		echo '<div class="category">';		
	?>
		<div>	
			<span class="cat"><?= $row['name'] ?></span>
			<span><a href="control/delcat.php?category_id=<?= $row['category_id'] ?>" onclick="return confirm('Bạn thực sự muốn xoá ?')">Xoá</a></span>
			<span><a href="index.php?act=fixcat&category_id=<?= $row['category_id'] ?>">Sửa</a></span>
		</div>	
		<?php
		$res2 = $cat->getSubCats($row['category_id']);
		while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){			
		?>
			<div>	
				<span class="subcat"><?= $row2['name'] ?></span>
				<span><a href="control/delcat.php?subcategory_id=<?= $row2['subcategory_id'] ?>" onclick="return confirm('Bạn thực sự muốn xoá ?')">Xoá</a></span>
				<span><a href="index.php?act=fixsubcat&subcategory_id=<?= $row2['subcategory_id'] ?>">Sửa</a></span>
			</div>	
		<?php
		}
		echo '</div>';
	}
?>
</div>