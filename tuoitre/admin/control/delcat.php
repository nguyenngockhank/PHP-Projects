<?php
include '../../config.php';
include '../../includes/connection.php';
include '../../class/category.class.php';

$cat = new Category($conn);

if(isset($_GET['subcategory_id'])){
	$id =  $_GET['subcategory_id'];
	$cat->delSubCat($id);

}else if(isset($_GET['category_id'])){
	$id =  $_GET['category_id'];
	$cat->delCategory($id);
}
$conn->close();
header("Location: ../index.php?act=cat");
