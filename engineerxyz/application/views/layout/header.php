<?php $this->load->view('layout/head') ?>
 
<nav class="main-menu navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= site_url() ?>">
                <div id="logo">
                    <img  src="<?= base_url() ?>assets/images/engineerxyz.png" title="Engineerxyz" style="width:110px" />
                </div>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div id="main-menu">
                <ul class="nav navbar-nav">
                    <li><a href="<?= site_url('course') ?>">Course</a></li>
                    <li><a href="<?= site_url('problems') ?>">Open Problems</a></li>
                    <li><a href="<?= site_url('events') ?>">Events</a></li>
                    <li><a target="_blank" href="https://groups.google.com/forum/?hl=en#!forum/iaehk1-1314">Forum</a></li>
                    <li><a href="<?= site_url('news') ?>">News</a></li>
                    <li><a target="_blank" href="#" data-toggle="modal" data-target="#regmodal">Register Now</a></li>
                    <li><a href="<?= site_url('faq') ?>">FAQ</a></li>
                </ul>
            </div>
            <form action="<?= hrefSearch() ?>" method="get" id="search-form" class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input name="q" type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>



<div id="social">
    <div class="container">
        <ul class="social-list list-unstyled list-inline">
            <li class="pull-right" id="date_now"></li>
            <li><div id="google_translate_element"></div></li>
        </ul>
    </div>
</div>
<!--
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
-->


<!-- Modal -->
<div class="modal fade" id="regmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="width:690px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Register </h4>
      </div>
      <div class="modal-body">
        <iframe src="https://docs.google.com/forms/d/1DlUYJWbpLLCIc4AEF_HUFu6se_bDFrCigBvLUV8bSXI/viewform?embedded=true" width="650" height="450" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
      </div>
    </div>
  </div>
</div>