<?php
if(empty($act)){
?>
<section id="ads">
<script type="text/javascript" src="<?= $url_host ?>js/jquery-1.2.1.pack.js"></script>
<script type="text/javascript" src="<?= $url_host ?>js/jMyCarousel.js"></script>
<script type="text/javascript">
	$(function() {
	    $(".jMyCarousel").jMyCarousel({
	        visible: '100%'
	    });
	});
</script>
<div class="jMyCarousel">
    <ul>
        <li><a href="#"><img src="<?= $url_host ?>images/1/1.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/3.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/4.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/5.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/6.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/7.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
        <li><a href="#"><img src="<?= $url_host ?>images/1/8.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>
         <li><a href="#"><img src="<?= $url_host ?>images/1/9.jpg" width="200" height="150"><span>Hoa đẹp</span></a></li>


  </ul>
</div>
</section>
<?php
}
