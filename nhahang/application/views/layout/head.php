<!DOCTYPE html>
<html lang="<?= $GLOBALS['language'] ?>">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= $this->config->item('web_name') ?></title>
        <!-- Bootstrap -->
        <link href="<?= site_url() ?>css/bootstrap.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="<?= site_url() ?>css/main.css" rel="stylesheet">
        <script>var site_url = '<?= site_url() ?>'</script>
    </head>
    <body>
        <nav id="main-navbar" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <span class="trigger"><strong style="opacity: 0;"></strong><em></em></span>
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?= getLink() ?>">FreshSushi.info</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<?= getLink('menu/') ?>"><?= $this->lang->line('nav.menu') ?></a></li>
                        <li><a href="<?= getLink('pictures/') ?>"><?= $this->lang->line('nav.landscape') ?></a></li>
                        <li><a href="<?= getLink('articles/') ?>"><?= $this->lang->line('nav.news') ?></a></li>
                        <li><a href="<?= getLink('guide/') ?>"><?= $this->lang->line('nav.guide') ?></a></li>
                        <li><a href="<?= getLink('contact/') ?>"><?= $this->lang->line('nav.contact') ?></a></li>
                    </ul>
                    <ul id="lang-nav" class="nav navbar-nav navbar-right">
                        <li><a href="#"><strong>Hot line: <?= $this->config->item('hot_line') ?></strong></a></li>
                        <li><a data-lang="vi" title="<?= $this->lang->line('nav.vi') ?>" href="<?= site_url() ?>"><img src="<?= site_url() ?>images/layout/vn.gif" alt="<?= $this->lang->line('nav.vi') ?>" /></a></li>
                        <li><a data-lang="en" title="<?= $this->lang->line('nav.en') ?>" href="<?= site_url() ?>?lang=en"><img src="<?= site_url() ?>images/layout/usa.png" alt="<?= $this->lang->line('nav.en') ?>"/></a></li>
                    </ul>
                </div><!--/.navbar-collapse -->
            </div><!--/.container-fluid -->
        </nav>