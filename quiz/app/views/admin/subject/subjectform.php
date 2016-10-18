<?php $this->view('admin/header'); ?>
<h1> <?= $title ?> </h1>
<?php
if(isset($res)){
	if($res){ ?>
		<div class="alert alert-success"> Success : <?= $message ?></div>
<?php   } else { ?>
		<div class="alert alert-danger"> Fail : <?= $message ?></div>
<?php
	}
}
?>
<form method="post" action="" class="form-horizontal" role="form">
  <div class="form-group">
    <label class="col-lg-2 control-label">Name </label>
    <div class="col-lg-4">
      <input name="name" value="<?= $name ?>" class="form-control" placeholder="Name">
    </div>
  </div>
  <div class="form-group">
    <label class="col-lg-2 control-label">Slug</label>
    <div class="col-lg-4">
      <input name="slug" value="<?= $slug ?>" class="form-control" placeholder="Slug">
    </div>
  </div>
  
   <div class="form-group">
    <label class="col-lg-2 control-label">Public</label>
    <div class="col-lg-4">
		<label class="checkbox-inline">
			<input type="radio" name="public" value="1" <?= $public ? 'checked' : '' ?>> Yes
		</label>
		<label class="checkbox-inline">
			<input type="radio" name="public" value="0" <?= $public ? '' : 'checked' ?>> No
		</label>
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button name="submit" type="submit" class="btn btn-default"> Submit </button>
    </div>
	
  </div>
</form>

<?php $this->view('admin/footer');?>