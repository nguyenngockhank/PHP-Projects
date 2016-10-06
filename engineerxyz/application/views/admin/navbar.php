<div class="navbar navbar-inverse navbar-fixed-top">     
    <nav class="navbar-inner" id="main_nav">       
        <div class="container">        
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">          
                <span class="icon-bar"></span>           
                <span class="icon-bar"></span>        
                <span class="icon-bar"></span>         
            </button>          
            <a class="brand" href="<?= site_url() ?>admin">Administrator</a>    
            <nav class="nav-collapse collapse">         
                <ul class="nav">		
                    <?php if ($this->role == Admin_model::ROLE_ADMIN): ?>
                        <li><a href="<?= site_url() ?>admin/account">Tài khoản</a></li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Quản lý bài viết  <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?= site_url() ?>admin/category">Danh mục</a></li>
                                <li><a href="<?= site_url() ?>admin/article">Bài viết</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Courses  <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?= site_url() ?>admin/course">Days</a></li>
                                <li><a href="<?= site_url() ?>admin/problem">Open Problems</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Quản lý Web  <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?= site_url() ?>admin/config/info">Information</a></li>
                                <li class="divider"></li>
                                <li><a href="<?= site_url() ?>admin/config/banner">Banner</a></li>
                                <li><a href="<?= site_url() ?>admin/config/tools">Tools</a></li>
                                <li><a href="<?= site_url() ?>admin/config/youtube">Videos</a></li>
                                <li class="divider"></li>
                                <li><a href="<?= site_url() ?>admin/config/sponors">Sponors</a></li>
                                <li><a href="<?= site_url() ?>admin/config/steps">Steps</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Quản lý files  <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="<?= site_url() ?>assets/ckfinder/ckfinder.html" target="_blank">Assets</a></li>
                                <li><a href="<?= site_url() ?>admin/editor">Pages</a></li>
                            </ul>
                        </li>
                    <?php elseif ($this->role == Admin_model::ROLE_POST_PIC): ?>       
                        <li><a href="<?= site_url() ?>assets/ckfinder/ckfinder.html" target="_blank">Hình ảnh</a></li>
                    <?php elseif ($this->role == Admin_model::ROLE_POST_NEWS): ?>   
                        <li><a href="<?= site_url() ?>admin/article" target="_blank">Bài viết</a></li>
                    <?php elseif ($this->role == Admin_model::ROLE_POST): ?>    
                        <li><a href="<?= site_url() ?>admin/article" target="_blank">Bài viết</a></li>
                        <li><a href="<?= site_url() ?>assets/ckfinder/ckfinder.html" target="_blank">Hình ảnh</a></li>
                    <?php endif; ?>
                </ul>					
                <div class="pull-right">
                    <ul class="nav">			
                        <li><a href="<?= site_url() ?>admin/filter/logout">Thoát</a></li>
                    </ul>	
                </div>      
            </nav><!--/.nav-collapse -->   
        </div>    
    </nav><!--/.MAIN NAVIGATION --> 
</div>