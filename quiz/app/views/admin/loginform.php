<?php $this->view('header');?>
<div class="container" id="loginwrapper">
<form class="form-horizontal" role="form" method="post" action="<?= WEB_DOMAIN ?>admin/index/login/">
	<fieldset>
		<!-- Form Name -->
		<legend>LOG IN Form</legend>
		<!-- Text input-->
		<div class="form-group">
			<label class="col-lg-offset-3 col-lg-2 control-label" for="username">Username</label>
			<div class="col-lg-3">
				<input type="text" name="username"  class="form-control" id="username" placeholder="username">
			</div>
		</div>

		<!-- Password input-->
		<div class="form-group">
			<label class="col-lg-offset-3 col-lg-2 control-label" for="password" >Password</label>
			<div class="col-lg-3">
				<input name="password" type="password" placeholder="password" id="password" class="form-control">
			</div>
		</div>

		<!-- Button -->
		<div class="form-group">
			<div class="col-lg-offset-5 col-lg-10">
			  <button type="submit" name="login" class="btn btn-primary">Log In</button>
			</div>
		</div>

	</fieldset>
</form>
</div>

<?php $this->view('footer');?>