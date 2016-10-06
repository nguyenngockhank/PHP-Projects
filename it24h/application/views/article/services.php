<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>


<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h1><span class="glyphicon glyphicon-flag"></span> Các dịch vụ </h1>
        <?php $this->load->view('article/listarticle', array('ser' => true)); ?>
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>

<?php $this->load->view('template/foot'); ?>