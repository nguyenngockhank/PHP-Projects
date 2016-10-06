<?php /* Smarty version Smarty-3.1.13, created on 2014-03-22 20:55:00
         compiled from "application\views\home.php" */ ?>
<?php /*%%SmartyHeaderCode:17600532dea944dbdc1-20518196%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd2e2d6daf1b063e98e31c85c75ff09597d1c2bf8' => 
    array (
      0 => 'application\\views\\home.php',
      1 => 1395514358,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17600532dea944dbdc1-20518196',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_532dea9462fb92_70716265',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_532dea9462fb92_70716265')) {function content_532dea9462fb92_70716265($_smarty_tpl) {?><<?php ?>?php $this->load->view('template/head') ?<?php ?>>

<!--==============================content================================-->
<section id="content">
    <div class="main">
        <div class="wrapper img-indent-bot">
            <article class="col-1"> <a href="#"><img class="img-border" src="<<?php ?>?= site_url() ?<?php ?>>images/banner/banner-1.jpg" alt=""></a> </article>
            <article class="col-1"> <a href="#"><img class="img-border" src="<<?php ?>?= site_url() ?<?php ?>>images/banner/banner-2.jpg" alt=""></a> </article>
            <article class="col-2"> <a href="#"><img class="img-border" src="<<?php ?>?= site_url() ?<?php ?>>images/banner/banner-3.jpg" alt=""></a> </article>
        </div>
        <div class="wrapper">
            <article class="column-1">
                <div class="indent-left">
                    <div class="maxheight indent-bot">
                        <h3><<?php ?>?= $this->lang->line('service_title') ?<?php ?>></h3>
                        <ul class="list-1">
                            <li><a href="#">Duis autem vel eum iriure dolor</a></li>
                            <li><a href="#">Hendrerit in vulputate velit esse molestie </a></li>
                            <li><a href="#">Consequat vel illum dolore</a></li>
                            <li><a href="#">Feugiat nulla facilisis at vero eros</a></li>
                            <li><a href="#">Accumsan et iusto odio dignissim qui</a></li>
                            <li><a href="#">Blandit praesent luptatum azril</a></li>
                            <li><a href="#">Delenit augue duis dolore te feugait</a></li>
                        </ul>
                    </div>
                    <a class="button-1" href="#">Read More</a> </div>
            </article>
            <article class="column-2">
                <div class="maxheight indent-bot">
                    <h3 class="p1">About the Catering</h3>
                    <h6 class="p2">Catering is one of free website templates created by TemplateMonster.com team. This website template is optimized for 1280X1024 screen resolution. It is also XHTML &amp; CSS valid.</h6>
                    <p class="p2">This Catering Template goes with two packages – with PSD source files and without them. PSD source files are available for free for the registered members of TemplatesMonster.com. The basic package (without PSD source) is available for anyone without registration.</p>
                    This website template has several pages: <a href="index.html">About</a>, <a href="menu.html">Menu</a>, <a href="catalogue.html">Catalogue</a>, <a href="shipping.html">Shipping</a>, <a href="faq.html">FAQ</a>, <a href="contact.html">Contact</a> (note that contact us form – doesn’t work). </div>
                <a class="button-2" href="#">Read More</a> </article>
        </div>
    </div>
</section>
<!--==============================footer=================================-->
<<?php ?>?php $this->load->view('template/footer') ?<?php ?>>

<!--============================== pign ping =================================-->
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
    $(function() {
        $('.slider')._TMS({
            duration: 1000,
            easing: 'easeOutQuint',
            preset: 'slideDown',
            slideshow: 7000,
            banners: false,
            pauseOnHover: true,
            pagination: true,
            pagNums: false
        });
    });
</script>
</body>
</html><?php }} ?>