<div class="navbar navbar-inverse">     
    <nav class="navbar-inner" id="main_nav">       
        <div class="container">     
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".sidebar-nav">          
                <span class="icon-bar"></span>           
                <span class="icon-bar"></span>        
                <span class="icon-bar"></span>         
            </button> 
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">          
                <span class="fa fa-cog"></span>            
            </button>         
            <a class="brand" href="<?= site_url() ?>/admin/"><span class="fa fa-home"></span> Dashboard</a>    
            <nav class="nav-collapse collapse">         
                <ul class="nav">		
                    <li data-nav="account" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <?= $this->lang->line('navbar.account') ?><b class="caret"></b> </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                            <li>
                                <a tabindex="-1" href="<?= site_url('admin/account/user') ?>"><i class="icon-user"></i> <?= $this->lang->line('navbar.user') ?></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="<?= site_url('admin/account/role') ?>"><i class="icon-tasks"></i> <?= $this->lang->line('navbar.task') ?></a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="<?= site_url('admin/account/user/trash') ?>"><i class="icon-trash"></i> <?= $this->lang->line('navbar.trash') ?> </a>
                            </li>
                        </ul>
                    </li>
                </ul>		
                <!-- RIGHT NAV -->
                <ul class="nav pull-right">	
                    <li>
                        <a href="#">
                            Hi,  <?= $this->account->username ?>
                        </a>
                    </li>
                    <li data-nav="account" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                            <li>
                                <a class="ch-lang" data-lang="vi" title="Vietnamese" href="javascript:void(0)">
                                    <img src="<?= base_url('assets/images/admin/vn.gif') ?>" alt="Vietnamese">
                                    <?= $this->lang->line('navbar.lang_vi') ?>
                                </a>
                            </li>
                            <li>
                                <a class="ch-lang" data-lang="en" title="English" href="javascript:void(0)">
                                    <img src="<?= base_url('assets/images/admin/usa.png') ?>" alt="English">
                                    <?= $this->lang->line('navbar.lang_en') ?>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="<?= site_url($this->config->item('link_logout')) ?>">
                                    <b class="icon-hand-right"></b>  <?= $this->lang->line('navbar.exit') ?>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>	

                <!-- END RIGHT NAV -->
            </nav><!--/.nav-collapse -->   
        </div>    
    </nav><!--/.MAIN NAVIGATION --> 
</div>