<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?= site_url($class_name) ?>">le0's Installer</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Database <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?= site_url($class_name . '/init_db') ?>">Init DB</a></li>
                        <li><a href="<?= site_url($class_name . '/init_tables') ?>">Init Tables</a></li>
                        <li><a href="<?= site_url($class_name . '/list_tables') ?>">List Tables</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">CRUD <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?= site_url($class_name . '/crud_mvc') ?>">Controller & Model</a></li>
                        <li><a href="<?= site_url($class_name . '/crud_admin_controller') ?>">Admin Controller</a></li>
                        <li><a href="<?= site_url($class_name . '/web_config') ?>">Web Config</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>