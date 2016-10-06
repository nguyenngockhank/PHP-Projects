<div class="navbar navbar-inverse navbar-fixed-top">     
    <nav class="navbar-inner" id="main_nav">       
        <div class="container">        
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">          
                <span class="icon-bar"></span>           
                <span class="icon-bar"></span>        
                <span class="icon-bar"></span>         
            </button>         
            <a class="brand" href="<?= site_url() ?>admin/">Administrator</a>    
            <nav class="nav-collapse collapse">         
                <ul class="nav">		
                    <li><a href="<?= site_url() ?>admin/order">Order</a></li>
                    <li><a href="<?= site_url() ?>admin/message">Message</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Food <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?= site_url() ?>admin/food/root_category">Danh mục cha</a></li>
                            <li><a href="<?= site_url() ?>admin/food/category">Danh mục</a></li>
                            <li><a href="<?= site_url() ?>admin/food/menu">Thực đơn</a></li>
                            <li><a href="<?= site_url() ?>admin/food/category_dishes/-1">Danh mục - Thực đơn</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Tin tức <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?= site_url() ?>admin/blog">Bài viết</a></li>
                            <li><a href="<?= site_url() ?>admin/blog/notice">Thông báo</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Hình ảnh <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?= site_url() ?>admin/picture/slider">Slide Trang chủ</a></li>
                            <li><a href="<?= site_url() ?>admin/picture/cat_picture">Danh mục hình</a></li>
                            <li><a href="<?= site_url() ?>admin/picture/landscape/-1">Hình ảnh</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Quản lý files  <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?= site_url() ?>assets/ckfinder/ckfinder.html" target="_blank">Assets</a></li>
                            <li><a href="<?= site_url() ?>admin/editor">Pages</a></li>
                        </ul>
                    </li>

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