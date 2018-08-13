<h3 style="text-align: center"><?php echo $this->session->userdata('msg');
    
?></h3>


<section class="slider-area">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <?php foreach ($banners as $key => $row) { ?>
                <li data-target="#myCarousel" data-slide-to="<?php echo $key; ?>" class="<?php echo ($key == 0) ? "active" : ""; ?>" ></li>
            <?php } ?>

        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php foreach ($banners as $key => $row) { ?>
                <div class="item <?php echo ($key == 0) ? "active" : ""; ?>">
                    <img src="<?php echo base_url() . 'assets/filemanager/banners/' . $row->file_name; ?>" alt="<?php echo $row->title; ?>" style="width:100%;">
                    <div class="carousel-caption">
                        <h3><?php echo $row->title; ?></h3>
                    </div>
                </div>
            <?php } ?>



        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <i class="fa fa-angle-double-left"></i>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <i class="fa fa-angle-double-right"></i>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>

<section class="about-area">
    <div class="container">
        <div class="col-md-7 col-sm-7 col-xs-12 col-xl-7">
                <?php foreach ($article as $key => $row) { ?>
                    <div class="about-cntn">

                        <h6>A Few Words </h6>
                        <h3><?php echo $row->title ?></h3>
                        <div class="about-bdr"></div>
                        <p><?php echo $row->details ?></p>
                        <a class="btn about-bttn" href="<?php echo base_url() ?>page/about">Read More <i class="fa fa-angle-double-right"></i> </a>
                    </div>

            </div>
            <div class="col-md-5 col-sm-5 col-xs-12 col-xl-5">
                    <div class="about-cntn-rigt">
                        <div class="about-cntn-bdr">
                            <img src="<?php echo base_url() . 'assets/filemanager/article/' . $row->file_name; ?>">
                        </div>
                    </div>
            </div>
        </div>
    <?php } ?>
</section>

<section class="product-area">
    <div class="container">
        <div class="product-cntn-hdr">
            <h3>Our<b> Products</b></h3>
            <div class="product-cntn-bdr"></div>
        </div>
        <div class="jcarousel-wrapper">  
            <div class="jcarousel" >
                <ul>
                   <?php foreach ($category  as $key => $row) { ?>
                    <li>
                        <a href="<?php echo base_url(). "page/category/" .$row->id;?>"> <img src="<?php echo base_url() . 'assets/filemanager/category/' . $row->file_name; ?>">
                            <a class="btn btn-product-btn" href="<?php echo base_url(). "page/category/" .$row->id;?>"><?php echo $row->tittle; ?></a>
                            <a href="<?php echo base_url(). "page/category/" .$row->id;?>">
                                <div class="middle">
                                    <i class="fa fa-mouse-pointer"></i>
                                </div>
                            </a>
                        </a> 
                    </li>
                    <?php } ?>
                    
                   
                   
                   
                   
                   
                    
                </ul>
            </div> 

            <a href="#" class="jcarousel-control-prev"><i class="fa fa-angle-double-left"></i></a>
            <a href="#" class="jcarousel-control-next"><i class="fa fa-angle-double-right"></i></a>
        </div>
    </div>
</section>

<section class="gallary-area">
    <div class="container"><!--Begin:main_section-->
        <div class="row">
            <div class="product-cntn-hdr">
                <h3>Our<b> Gallery</b></h3>
                <div class="product-cntn-bdr"></div>
                <a class="btn btn-product" href="<?php echo base_url() ?>page/gallery_page">View More</a>
            </div>
            <div id="main_body_wrappper">
                <div class="gallery-cntn">
                    <div class="row">
                         
                        <div class="col-md-4 col-sm-4 col-xs-12">
                              <?php foreach ($homegallery as $key => $row) { if($key < 2) { ?>  
                            <a class="thumbnail fancybox" rel="ligthbox" href="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>" style="text-decoration:none;">
                                <img class="img-responsive custom_equip" alt="" src="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>"/>
                            </a>     
                              <?php } } ?>                            
                        </div>  
                         
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <?php foreach ($homegallery as $key => $row) { if($key ==2) { ?> 
                            <a class="thumbnail fancybox" rel="ligthbox" href="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>" style="text-decoration:none;">
                                <img class="img-responsive custom_equip" alt="" src="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>"/>
                            </a>  
                            <?php } } ?>
                        </div>  
                        <div class="col-md-4 col-sm-4 col-xs-12">  
                            <?php foreach ($homegallery as $key => $row) { if($key > 2) { ?>
                            <a class="thumbnail fancybox" rel="ligthbox" href="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>" style="text-decoration:none;">
                                <img class="img-responsive custom_equip" alt="" src="<?php echo base_url() . 'assets/filemanager/homegallery/' . $row->file_name; ?>"/>
                            </a>
                            <?php } } ?>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


