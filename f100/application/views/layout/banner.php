<div id="banner">
    <div id="slider" class="aslider" data-duration="10" data-hide-controls>
        <?php foreach ($sliders as $pic): ?>
            <div class="aslide" data-duration="4">
                <img src="<?= base_url(), 'images/slider/thumb__', $pic['img'] ?>" />
                <a href="#">
                    <div class="text">
                        <h4><?= empty($pic['title']) ? 'Sản phẩm từ công ty F100 Seafood' : $pic['title'] ?></h4>
                        <p>
                            <?php
                            if (!empty($pic['caption'])) {
                                echo $pic['caption'];
                            } else {
                                ?>
                                F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, cung cấp hải sản tươi sống hàng đầu Việt Nam phục vụ cho tiêu dùng hằng ngày và công nghiệp
                                <?php
                            }
                            ?>
                        </p>
                    </div>
                </a>
            </div>   
        <?php endforeach; ?>
        <div class="aslide" data-duration="7" >
            <img src="<?= base_url(); ?>images/slide4.jpg" />
            <a href="#">
                <div class="text">
                    <h4>MÓN BỐN NÈ</h4>
                    <p>F100 Seafoods là nhà cung cấp hải sản tươi sống hàng đầu Việt Nam, cung cấp hải sản tươi sống hàng đầu Việt Nam phục vụ cho tiêu dùng hằng ngày và công nghiệp</p>
                </div>
            </a>
        </div>            
    </div>   


</div>