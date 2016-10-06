<form action="" method="post" id="addsubcat">
	<h2>Nhập danh mục</h2>
	<div>
		<strong> Danh mục cha </strong>
		<select name="cat_id">
		<?php
			$res = $cat->getAllCats();
			while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
				if(isset($cat_id) && $row['category_id']==$cat_id){
					echo '<option value="'.$row['category_id'].'" selected="selected">'.$row['name'].'</option>';
				}else{
					echo '<option value="'.$row['category_id'].'">'.$row['name'].'</option>';
				}	
			}
		?>
		</select>
	</div>	

	<div>
		<strong>Tên danh mục</strong>
		<input name="name" type="text"  size="40" maxlength="255" value="<?= isset($name)?$name:''?>"/>
	</div>
	<div>	
		<input name="submit" type="submit" value="OK"/>
	</div>
</form>