

<section class="inr-banner">
    	<div class="innr-slid">
        	<img src="<?php echo base_url().'assets/site/'; ?>images/inn-bnr/about-10.jpg">
        </div>
</section>

<section class="about-pages-area">
    <div class="container">
        <h3>Management </h3>
        <div class="col-md-12 col-sm-12 col-xs-12">
            <?php foreach($management as $row){?>
            <div class="managmant-cntn">
                <img src="<?php echo base_url().'assets/filemanager/management/'.$row->file_name; ?>">
                <div class="managmant-detals">
                   <?php echo $row->description; ?>
                </div>
            </div>
            <?php } ?>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12">
           
            <div class="managmant-cntn">
                <img src="<?php echo base_url().'assets/site/'; ?>images/mangmant/m-3.jpg">
               <!-- <div class="managmant-detals">
                    <h2>Name : Tanjina Bhuiyan</h2>
                    <h4><i>Managing Director</i></h4>
                    <h5>Phone :&nbsp;&nbsp;+880-178-185-6587.</h5>
                    <h5>Email&nbsp;&nbsp; :&nbsp;&nbsp;info@handicreation.com</h5>
                    <h5>Skype&nbsp;&nbsp; :&nbsp;tanjina.maruf</h5>
                </div> -->
            </div>
           
        </div>
    </div>
</section>

