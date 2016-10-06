<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
<script src="<?= base_url('asset/js/bootstrap.min.js') ?>" type="text/javascript"></script>
<script>
    var navigation = responsiveNav("foo", {customToggle: ".nav-toggle"});
</script>
<script src="<?= base_url('asset/js/owl.carousel.js') ?>"></script>

<script>
    $(document).ready(function () {
        $("#later-product").owlCarousel({
            autoPlay: 3000,
            items: 1,
            itemsDesktop: [1199, 1],
            itemsDesktopSmall: [979, 1],
            autoHeight: true
        });
        $("#later-product1").owlCarousel({
            autoPlay: 3000,
            items: 1,
            itemsDesktop: [1199, 1],
            itemsDesktopSmall: [979, 1],
            autoHeight: true
        });

        setTimeout(function () {
            $('a#all').trigger('click');
        }, 1000);
    });
</script>


<script src="<?= base_url('asset/js/jquery.cslider.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.isotope.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jquery.fancybox.pack.js') ?>"></script>
<script src="<?= base_url('asset/js/headroom.min.js') ?>"></script>
<script src="<?= base_url('asset/js/jQuery.headroom.min.js') ?>"></script>
<script src="<?= base_url('asset/js/custom.js') ?>"></script>

<!--slide-->

<script type='text/javascript' src='<?= base_url('asset/js/jquery.min.js') ?>'></script>
<script type='text/javascript' src='<?= base_url('asset/js/jquery.mobile.customized.min.js') ?>'></script>
<script type='text/javascript' src='<?= base_url('asset/js/jquery.easing.1.3.js') ?>'></script>
<script type='text/javascript' src='<?= base_url('asset/js/camera.min.js') ?>'></script>

<script>
    jQuery(function(){
        jQuery('#camera_wrap_1').camera({
            pagination: false,
            time: 3000,
            transPeriod: 1500,
            playPause: false

        });
    });
</script>



</body>
</html>