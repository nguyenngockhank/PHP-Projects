<?php $this->load->view('layout/header') ?>

<?php
if (!isset($block)) {
    $block = $this->router->fetch_class();
}
$this->load->view('block/' . $block);
?>


<?php $this->load->view('layout/footer') ?>