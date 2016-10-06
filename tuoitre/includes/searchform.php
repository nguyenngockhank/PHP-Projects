<div id="tabSearch">
	<ul>
		<li><a href="#" <?= ($act=='search') ? 'class="selected"' : '' ?> >Tìm kiếm</a></li>
		<li><a href="#" <?= ($act=='search2') ? 'class="selected"' : '' ?> >Tìm kiếm nâng cao</a></li>
	</ul>
</div>
<div class="clear"></div>
<div id="displaySearch">
	<div class="simple" style="display: <?= ($act=='search') ? 'block' : 'none' ?>">
		<form id="ssForm" action="<?=$url_host?>tim-kiem.html" method="GET">
			<input type="text" name="k" value="<?= $keyword?>" />
			<input type="submit" value="" />
		</form>
	</div>

	<div class="complex" style="display: <?= ($act=='search2') ? 'block' : 'none' ?>">
		<form action="<?=$url_host?>tim-kiem-nang-cao.html" method="GET">
			<div>
				<label> Từ khoá  </label>
				<input name="k" class="input" type="text" value="<?= $keyword ?> " />
			  	<label> Chuyên mục </label>
				<select name="subcat" class="input">
					<option value="all">Tất cả</option>
					<?php
						$res = $cat->getAllCats();
						while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)){
						?>
							<optgroup label="<?=$row['name']?>">
							<?php
								$res2 = $cat->getSubCats($row['category_id']);
								while($row2 = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
									if(isset($subcat) && $row2['subcategory_id']==$subcat){
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
			</div>
			<div>
				<label> Thời gian </label>
				<select name="t" class="input">
				<?php
					$arr = array('0' => '--Chọn ngày--','day' => 'Ngày', 'month'=>'Tháng', 'year'=>'Năm');

					foreach ($arr as $key => $value) {
						echo '<option value="',$key,'"',((isset($time)&&$time==$key) ? 'selected':''),'>',$value,'</option>';
					}

				?>	
				</select>	
				<label> Tìm trong </label>
				<select name="pos" class="input">
				<?php
					$arr = array('title' => 'Tiêu đề','summary' => 'Tóm tắt', 'content'=>'Nội dung');

					foreach ($arr as $key => $value) {
						echo '<option value="',$key,'"',((isset($pos)&&$pos==$key) ? 'selected':''),'>',$value,'</option>';
					}

				?>	
				</select>	
			</div>
			<div>
				<label> Sắp xếp theo </label>
				<select name='o' class="input">
				<?php
					$arr = array('date' => 'Ngày nhập','like' => 'Quan tâm', 'hot'=>'Tin hot');

					foreach ($arr as $key => $value) {
						echo '<option value="',$key,'"',((isset($order)&&$order==$key) ? 'selected':''),'>',$value,'</option>';
					}

				?>			
				</select>	
				
				<label></label>
				<input type="submit" value="Tìm kiếm">
			</div>
		</form>
		<em> Lưu ý : Gõ từ khoá tiếng Việt có dấu </em>
	</div>
</div>

<script src="<?= $url_host ?>js/tabInteresting.js"></script>
<script>tabDisplay('tabSearch','displaySearch');</script>