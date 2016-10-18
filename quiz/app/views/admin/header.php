<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<?= WEB_DOMAIN ?>css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<?= WEB_DOMAIN ?>css/bootstrap-theme.min.css"/>
	<link rel="stylesheet" href="<?= WEB_DOMAIN ?>css/admin.css"/>
	<link rel="stylesheet" href="<?= WEB_DOMAIN ?>css/code.css"/>

	<title><?= isset($page_title) ? $page_title : 'Hi !!!' ?></title>
</head>
<body>
<?php $this->view('admin/nav') ?>
	