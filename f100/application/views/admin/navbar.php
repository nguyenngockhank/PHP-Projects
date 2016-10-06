<div class="navbar navbar-inverse navbar-fixed-top">     
    <nav class="navbar-inner" id="main_nav">       
        <div class="container">        
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">          
                <span class="icon-bar"></span>           
                <span class="icon-bar"></span>        
                <span class="icon-bar"></span>         
            </button>         
            <a class="brand" href="<?= site_url() ?>admin/" style="padding-left: 30px;">Administrator</a>    
            <nav class="nav-collapse collapse">         
                <ul class="nav">		
                    <li><a href="<?= site_url() ?>admin/account">Tài khoản</a></li>
                    <li><a href="<?= site_url() ?>admin/distribution">Phân phối</a></li>    
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Sản phẩm<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?= site_url() ?>admin/category/index/1">Danh mục</a></li>
                            <li><a href="<?= site_url() ?>admin/product/index">Chi tiết sản phẩm</a></li>
                            <li><a href="<?= site_url() ?>admin/product/category/0">Sản phẩm - danh mục</a></li>        
                        </ul>
                    </li>
                    <?php foreach ($this->news_cat as $key => $cat) : ?>
                        <li><a href="<?= site_url(), 'admin/article/category/', $cat['id'] ?>" title="menu"><div><?= $cat['title'] ?></div></a></li>
                    <?php endforeach; ?>
                    <li><a href="<?= site_url() ?>admin/picture/slider">Slide</a></li>    
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