

<section class="inr-banner">
    	<div class="innr-slid">
        	<img src="<?php echo base_url().'assets/site/'; ?>images/inn-bnr/about-1.jpg">
        </div>
</section>

<section class="about-pages-area">
    <div class="container">
        <h3>About Us </h3>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="row">
                <?php foreach($about as $row){ ?>
                <div class="about-text">
                    <h4><?php echo $row->title?></h4>
                    
                     <?php echo $row->description ?>
                </div>
                <?php }?>
            </div>
        </div>
    </div>
</section>

