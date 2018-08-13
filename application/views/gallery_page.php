

<section class="inr-banner">
    	<div class="innr-slid">
        	<img src="<?php echo base_url().'assets/site/';?>images/inn-bnr/glry-2.jpg">
        </div>
</section>

<section class="about-pages-area">
    <div class="container">
        <div class="row">
        <h3>Gallery </h3>
            <div id="main_body_wrappper">
                <div class="about">
                    <?php foreach($gallerypage as $row){ ?>
                    <div class='col-sm-3 col-xs-12 col-md-3 col-lg-3'>
                        <div class="row">
                            <a class="thumbnail fancybox" rel="ligthbox" href="<?php echo base_url().'assets/filemanager/gallerypage/'.$row->file_name; ?>">
                                <img class="img-responsive custom_equip" alt="" src="<?php echo base_url().'assets/filemanager/gallerypage/'.$row->file_name; ?>"/>
                            </a>
                        </div>
                    </div> 
                    <?php } ?> 
                   
                    
                   
                    
                     
                    
                </div>
                <div class="row">
            <div class="col-md-12 text-center">
                <?php echo $this->pagination->create_links(); ?>
            </div>
        </div>
            </div>
        </div>
    </div>
</section>



