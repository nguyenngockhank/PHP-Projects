<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h1><span class="glyphicon glyphicon-usd"></span> Bảng báo giá </h1>
        <table class="table table-hover">
            <tr>
                <th>STT</th>
                <th>Tên file</th>
                <th>Download</th>
            </tr>
            <?php $i = 0; ?>
            <?php foreach ($map as $item): ?>
                <tr>
                    <td><?= ++$i ?></td>
                    <td><?= $item ?></td>
                    <td><a href="<?= site_url() ?>assets/quotation/<?= $item ?>">Download</a></td>
                </tr>    
            <?php endforeach; ?>
        </table>
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>


<?php $this->load->view('template/foot'); ?>

