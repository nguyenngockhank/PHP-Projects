<div class="container"> 
    <div id="sponor">
        <h2 class="headline">The Sponors </h2>

        <div class="col-md-12 text-center">
<!---
             <?php foreach ($sponors as $sponor): ?>
                <div class="col-md-2 col-xs-6">
                    <a href="<?= (empty($sponor->meta) ? '#' : $sponor->meta) ?>" class="thumbnail">
                        <img src="<?= base_url('upload/sponors/' . $sponor->value) ?>" alt="<?= cleanStr($sponor->title) ?>" title="<?= cleanStr($sponor->title) ?>" style="width: 100px; padding: 10px;">
                    </a>
                </div>
            <?php endforeach; ?>
-->

<ul class="list-inline list-unstyled ul-sponor">
<li>
<a href="#" class="each-sponor" >
           <img src="http://engineerxyz.com/upload/sponors/b8c4e-logo32.jpg" alt="" title="" >
</a>
</li>
<li>
<a href="#" class="each-sponor" >
           <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/usaid.png" alt="" title="" >
</a>
</li><li>
<a href="#" class="each-sponor" >
          <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/ni-logo.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
           <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/asu.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/danaher-logo.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/cadence.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/siemens.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/default/files/Logo%20SHTP%202.jpg" alt="" title="" height="22px" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/intel.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/ni-logo.png" alt="" title="" >
</a></li><li>
<a href="#" class="each-sponor" >
       <img src="http://www.heeap.org/sites/all/themes/adaptivetheme/at_subtheme/css/images/pearson.png" alt="" title="" >
</a></li>

</ul>



        </div>
        <div class="clearfix"></div>
       <div class="clearfix"></div>
    </div>
</div>
<footer>
    <div id="nav" class="text-center"></div>
    <div class="container">
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-3 logo-bottom">
                <div class="row text-center">
                    <ul class=" menu-bottom list-unstyled list-inline">
                        <li><a href="#">About</a></li>
                        <li><a href="#">News</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
<div class="clearfix"></div>
                <img src="<?= base_url() ?>assets/images/engineerxyz.png" class="img-responsive" style="
    padding-left: 38px;"
 >
<div class="clearfix"></div>
                <p class="text-center"><?= $info->email ?></p>
            </div>
            <div class="footer-about col-md-6 "> 
                <h3>The EngineerXYZ</h3>
                <p><?= $info->the_xyz ?></p>
            </div>
            <div class="logo-bottom">
                <div class="pull-right" id="social-bottom">
                    <ul class="list-unstyled list-inline">
                        <li><a target="_blank" href="https://www.facebook.com/globalengineers"><span class="fa fa-facebook-square fa-3x"></span> </a></li>
                        <li><a target="_blank" href="https://twitter.com/XYZEngineer"><span class="fa fa-twitter-square fa-3x"></span> </a></li>
                        <li><a target="_blank" href="https://www.youtube.com/channel/UCY3wI4650G_Yp06T41ywlEg"><span class="fa fa-youtube-square fa-3x"></span> </a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row text-center copyright">&copy; Copyright 2014 - EngineerXYZ</div>
        </div>
    </div>
</footer>
<p id="back-top">
    <a href="#top"><span class="glyphicon glyphicon-chevron-up"></span></a>
</p>
<script src="<?= base_url() ?>assets/js/jquery.min.js"></script>
<script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>
<script src="<?= base_url() ?>assets/js/main.js"></script>
<div id="fb-root"></div>
<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=483525115086002&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
</body>
</html>