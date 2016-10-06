<?php $this->load->view('layout/header'); ?> 

<div id="main-wrapper">
    <div id="banner">
        <img src="<?= base_url(); ?>images/<?= $mon; ?>.jpg" title="">
    </div>
    <div id="content">
        <div class="content-title"> <img class="nav-left" src="<?= base_url(); ?>assets/images/navleft.png"> TÊN MÓN ĂN </div>
        <div class="main-content">
            <H3>* NGUYÊN LỊÊU:</H3>
            <p>
                - Cá thu cắt lát<BR>
                - 1 củ hành tây vừa<BR>
                - 3 quả cà chua<BR>
                - Hành lá, tỏi băm, hành băm.<BR>
                - Nước mắm, đường, muối, hạt nêm<BR>
            </p>
            <H3>* CÁCH LÀM:</H3>
            <p>
                - Cá thu cắt lát rã đông, rửa sạch, ướp với một ít muối và hạt nêm trong 30 phút.<BR>
                - Chiên cá cho chín 2 mặt.<BR>
                - Cà chua thái hạt lựu phi thơm với tỏi, hành nấu cho mềm nhừ nêm nếm nước mắm, đường, muối sao cho vừa miệng.<BR>
                - Bỏ cá vào nấu chung trong vòng 15 phút cho cá ngấm.<BR>
                - Cho hành tây cắt nhỏ vào chung đun thêm 5 phút nữa tắt bếp.<BR>
                - Cho thêm chút hành lá cắt nhỏ & bày ra đĩa.<BR>
            </p>

        </div>
    </div>
    <div id="side-bar">
        <div class="content-title">Quick Links <img class="nav-right" src="<?= base_url(); ?>assets/images/navright.png"></div>
        <ul class="list-unstyled quick-link">
            <li><a href="index.php/our-depots/index.html">Depot Finder</a></li>
            <li><a href="index.php/our-products/fish-guide/index.html">Fish Guide</a></li>
            <li><a href="index.php/how-to-order/index.html">How to Order</a></li>
            <li><a href="wp-content/uploads/directSeafoodsGoodCatch.pdf" target="_blank" class="external-link">Catch of the Day, PDF (6Mb)</a></li>
        </ul>
    </div>

</div>
<div id="boxs">
    <div class="box">

        <div>Cá Thu Sốt Cà Chua</div>
        <img src="<?= base_url(); ?>images/mon1s.jpg" title="100X200">
        <p>Let us manage your daily needs if you have more than one location</p>
        <a href="<?= base_url(); ?>index.php/welcome/hotfood/mon1" title="">XEM THÊM &raquo;</a>
    </div>
    <div class="box">

        <div>Cá Ngừ Cuốn Díp</div>
        <img src="<?= base_url(); ?>images/mon2s.jpg" title="100X200">

        <p>Let us manage your daily needs if you have more than one location</p>
        <a href="<?= base_url(); ?>index.php/welcome/hotfood/mon2" title="">XEM THÊM &raquo;</a>
    </div>
    <div class="box">

        <div>Lươn Cá Ngừ</div>
        <img src="<?= base_url(); ?>images/mon3s.jpg" title="100X200">
        <p>Let us manage your daily needs if you have more than one location</p>
        <a href="<?= base_url(); ?>index.php/welcome/hotfood/mon3" title="">XEM THÊM &raquo;</a>
    </div>
    <div class="box">

        <div>Phá Lấu</div>
        <img src="<?= base_url(); ?>images/mon4s.jpg" title="100X200">

        <p>Let us manage your daily needs if you have more than one location</p>
        <a href="<?= base_url(); ?>index.php/welcome/hotfood/mon4" title="">XEM THÊM &raquo;</a>
    </div>

</div>
<?php $this->load->view('layout/footer'); ?> 