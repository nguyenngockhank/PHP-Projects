<?php $this->view('admin/header'); ?>

<h1><?= $title ?></h1>
<div class="row">
	<div class="col-md-3">
        <ul class="list-group">
        <?php
            while($row = $listsubject->fetch_assoc()){
            ?>
          <li class="list-group-item">
            <h4 class="list-group-item-heading">
                <a href="<?= WEB_DOMAIN ?>admin/question/show/<?= $row['id'] ?>/"><?= $row['name'] ?></a>
                 <span class="badge pull-right"><?= $row['num'] ?></span> 
           </h4>

          </li>
            <?php
            }
        ?>
        </ul>
    </div>



	<div class="col-md-9">
<?php
if(isset($list)){
?>
	<table class="table table-striped">
		<tr>
			<th> STT </th>
			<th> Nội dung </th>
            <th> Câu đúng </th>
			<th> Xem </th>
			<th> Sửa </th>
			<th> Xoá </th>
		</tr>
<?php
	$i = 0;
	while($row = $list->fetch_assoc()){
	?>
		<tr>
			<td> <?= ++$i ?></td>
			<td> <?= $row['content'] ?></td>
            <td> <?= $row['type']==1 ? 'một' : 'nhiều' ?></td>
            <td> <a href="<?= WEB_DOMAIN ?>admin/question/detail/<?= $row['id']?>"> Xem </a> </td>
			<td> <a href="#"> Sửa </a>  </td>
			<td> <a href="<?= WEB_DOMAIN ?>admin/question/delete/<?= $row['id'] ?>" onclick="return confirm('Bạn muốn xoá thật chứ ?'); "> Xoá </a> </td>
		</tr>
	<?php
	}
?>
		<tr>
			<td colspan="5"> <strong> Tổng cộng </strong>: <?= $i ?> câu hỏi </td>
		</tr>
	</table>
<?php
}
?>
	</div>
</div>


<?php $this->view('admin/footer');?>