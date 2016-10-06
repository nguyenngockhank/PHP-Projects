<script src="../Editor/scripts/innovaeditor.js"></script>
<form method="post" action="" enctype="multipart/form-data" id="addnews">
	<h2>Đăng bài viết</h2>
	<div>
		<strong> Tiêu đề </strong>
		<input class="field" type="text" name="title" value="<?=isset($title)?$title:''?>"/>
	</div>
	<div>
		
		<strong> Danh mục </strong>
		<select name="category_id" id="category_id">
			<?php
				$res = $cat->getAllCats();
				while($row = mysqli_fetch_assoc($res)){
					if(isset($cat_id) && $row['category_id']==$cat_id){
						echo '<option value="'.$row['category_id'].'" selected="selected">'.$row['name'].'</option>';
					}else{
						echo '<option value="'.$row['category_id'].'">'.$row['name'].'</option>';
					}
				}
			?>
		</select>
		<strong> Danh mục con </strong>
		<select name="subcat_id" id="subcat_id">
			<option value="0">--danh mục con--</option>
			<?php
				if(!isset($cat_id)){
					$cat_id = 1;
				}
				$res = $cat->getSubCats($cat_id);
				while($row = mysqli_fetch_assoc($res)){
					if(isset($subcat_id) && $row['subcategory_id']==$subcat_id){
						echo '<option value="'.$row['subcategory_id'].'" selected="selected">'.$row['name'].'</option>';
					}else{
						echo '<option value="'.$row['subcategory_id'].'">'.$row['name'].'</option>';
					}
				}
			?>
		</select>
	</div>	
	<div>
		<strong> Hình bài viết </strong>
		<input type="file" name="img" />
	</div>
	<div>
		<strong>Tóm tắt</strong>
		<textarea class="field" name="sum" cols="50" rows="4"><?=isset($sum)?$sum:''?></textarea>
	</div>
	<div>
		<strong>Tin nóng </strong> 
		<input type="radio" value="0" name="hot" <?= (!isset($hot) || $hot==0) ? 'checked': '' ?> /> Không |
		<input type="radio" value="1" name="hot" <?= (isset($hot) && $hot==1) ? 'checked': '' ?> /> Có
	</div>
	<div>
		<strong>Nội dung</strong>
		<textarea class="field" name="content" id="txtContent" cols="50" rows="5"><?=isset($content)?$content:''?></textarea>
		<script>
			var oEdit1 = new InnovaEditor("oEdit1");
			oEdit1.cmdAssetManager="modalDialogShow('/tuoitre/Editor/assetmanager/assetmanager.php',640,445);";
			oEdit1.REPLACE("txtContent");
		</script>
	</div>
	<div>
		<input type="submit" name="submit" value="OK">
	</div>
</form>
<script src="../js/admin.js" ></script>