
<form action="" method="post" id="addcat">
	<h2>Nhập danh mục</h2>
	<div>
		<strong>Tên danh mục </strong> 
		<input name="name" type="text" size="40" maxlength="255" value="<?= isset($name) ? $name:''?>"/>
		<input name="submit" type="submit" value="OK"/>
	</div>
</form>
