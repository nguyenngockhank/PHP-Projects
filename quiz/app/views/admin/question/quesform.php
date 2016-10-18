<?php $this->view('admin/header'); ?>
<?php 
	$type_check = ($type_ques == 1) ? 'radio' : 'checkbox';
	$this->model('msubject');
	$listsubject = $this->msubject->getAll('name, id');
?>
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
<form method="post" class="form-horizontal" role="form">
  <!-- LIST SUBJECT -->
  <div class="form-group">
    <label class="col-lg-2 control-label">Subject List</label>
    <div class="col-lg-7">
		<select name="subject" class="form-control">
	<?php 
		while($row = $listsubject->fetch_assoc()){
		?>
			<option value="<?= $row['id']?>" <?= $row['id']==$subject ? 'selected' : '' ?> > <?= $row['name'] ?> </option>
		<?php
		}
	?>
		</select>
    </div>
  </div>
  <div class="form-group">
      <label class="col-lg-2 control-label"> Format </label>
      <div class="col-lg-1">
          <button type="button" id="codetag" class="btn btn-default">code tag</button>
      </div>
       <div class="col-lg-1">
          <input name="lang" value="<?= $lang ?>" class="form-control" />
       </div>
  </div>

  <!-- QUESTION CONTENT -->
  <div class="form-group">
    <label class="col-lg-2 control-label"> Content </label>
    <div class="col-lg-7">
		<textarea name="content" id="quescontent" type="password" class="form-control" rows="8"><?= $content ?></textarea>
    </div>
  </div>
  
  <!-- TYPE QUESTION, NUM ANSWER -->
  <div class="form-group">
    <label class="col-lg-2 control-label">Type Question</label>
    <div class="col-lg-2">
		<select name="type_ques" class="form-control" id="type_ques">
		  <option value="1" <?= ($type_ques == 1) ? 'selected' : ''; ?>> 1 answer </option>
		  <option value="2" <?= ($type_ques == 1) ? '' : 'selected'; ?>> Multi answers </option>
		</select>
    </div>

	<label class="col-lg-2 control-label"> Num Answer </label>
	<div class="col-lg-2">
		<select name="num_ans" id="num_ans" class="form-control">
		<?php
			for($i = 2; $i < 10; $i++ ){
			?>
				<option value="<?= $i ?>" <?= ($num_ans == $i) ? 'selected' : ''; ?>> <?= $i ?> </option>
			<?php
			}	
		?>
		</select>
	</div>
	
  </div>
  
   <!-- RIGHT ANSWER -->
  <div class="form-group">
		<label class="col-lg-2 control-label"> Right Answer </label>
		<div class="col-lg-9" id="right_ans">
	<?php 
		for($i = 0; $i < $num_ans; $i++){
		?>
		<label class="checkbox-inline">
			<?php $k = chr(65 + $i); ?>
			<input type="<?= $type_check ?>" value="<?= $k ?>" name="right_ans[]" <?php if(!empty($right_ans) && in_array($k, $right_ans)) echo 'checked' ?> ><?= $k ?>
		</label>

		<?php		
		}
	?>
		</div>
  </div>
  
  <!-- LIST ANSWERS -->
<div id="list_ans">
<?php
	for($i = 0; $i < $num_ans; $i++){
	?>
	<div class="form-group">
		<label class="col-lg-2 control-label"> Answer <?= chr(65 + $i) ?> </label>
		<div class="col-lg-7">
			<input name="ans[]" value="<?php if(isset($ans[$i])) echo $ans[$i] ?>" class="form-control">
		</div>
	</div>
	<?php
	}
?>
</div>

  <!-- SUBMIT BUTTON -->
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button name="submit" type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>

</form>


<?php $this->view('admin/footer');?>