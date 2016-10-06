<?php
echo '<option value="0">--danh mục con--</option>';
$cat_id = isset($_GET['cat_id']) ? $_GET['cat_id'] : '';

if(empty($cat_id)||$cat_id=='0'){
	exit;
}
include '../../config.php';
include '../../includes/connection.php';
include '../../class/category.class.php';

$cat = new Category($conn);
$res = $cat->getSubCats($cat_id);
while($row = mysqli_fetch_assoc($res)){
	echo '<option value="',$row['subcategory_id'],'">',$row['name'],'</option>';
}
