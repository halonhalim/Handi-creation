<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>.::Handicreation & Fashion Bd Ltd::.</title>

	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/animate.css" />
    
    <link rel="stylesheet" href="<?php echo base_url().'assets/site/';?>css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet"> 
    
	<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <!-- Product Catagore Box Deetals-zoom & Slide -->
    
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/dropdown.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/fluidgrids.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css/update_version_1.2.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/site/';?>css//peer_grid_default.css" media="all" />



    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/script.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>s/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/easyResponsiveTabs.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/modernizr.custom.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/app.js"></script>
    <script type="text/javascript" src="<?php echo base_url().'assets/site/';?>js/jquery.elevateZoom-3.0.8.min.js"></script>
    
    <!-- Product Catagore Box Deetals-zoom & Slide (End Link) -->
    
<body>

<section class="header-top"><!-- top-header-area-->
    <div class="container">
        <div class="col-md-4 col-sm-3 col-xs-12">
            <div class="row">
                <div class="header-top-lft">
                    <h3>Welcome to Handicreation & Fashion Bd Ltd !!</h3>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="row">
                <div class="header-top-mdl">
                    <div class="responsiv-header-top">
                        <i class="fa fa-phone"></i><p><?php echo $contact->mobile_no; ?></p>  
                        <i class="fa fa-envelope"></i><p><?php echo $contact->email; ?></p>  
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-sm-3 col-xs-12 col-xl-3">
            <div class="row">
                <div class="header-top-rgt">
                    <a href="<?php echo $contact->facebook; ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="<?php echo $contact->twitter; ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <a href="<?php echo $contact->youtube; ?>"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
</section><!-- End--top-header-area-->

<section class="logo-menu-area " data-spy="affix" data-offset-top="197">
    <div class="container">
        <div class="col-md-2 col-sm-2 col-xs-6">
            <div class="row">
               <a href="<?php echo base_url() ?>"><img src="<?php echo base_url() . 'assets/filemanager/' . $contact->logo; ?>"></a> 
            </div>
        </div>
        <div class="col-md-10 col-sm-10 col-xs-12 ">
            <div class="row">  
                <div class="menu-cntn">
                    <nav class="navbar navbar-default" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">   
                            <li class="active"><a href="<?php echo base_url() ?>">Home</a></li>
                            <li><a href="<?php echo base_url() ?>page/about">About Us</a></li>
                            <li><a href="<?php echo base_url() ?>page/management">Management</a></li>
                            <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">Product <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <?php foreach ($this->category_model->index() as $row) { ?>
                                        <li><a href="<?php echo base_url() . 'page/category/' . $row->id ?>"><?php echo $row->tittle; ?></a></li>
                                     <?php } ?>
                                </ul>
                            </li>
                            <li><a href="<?php echo base_url() ?>page/gallery_page">Gallery</a></li>
                            <li><a href="<?php echo base_url() ?>page/contact">Contact</a></li>
                            <!--<li><a href="#">Your Cart</a></li>-->
                        </ul>
                    </div><!-- /.navbar-collapse -->
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
