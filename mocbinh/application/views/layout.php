<?php // header('Expires: ' . gmdate('D, d M Y H:i:s \G\M\T', time() + 3600)); ?>
<?php $this->load->view('layout/header') ?>
<div id="content-wrapper">
    <?php $this->load->view('block/' . $block) ?>
</div>
<?php $this->load->view('layout/footer') ?>