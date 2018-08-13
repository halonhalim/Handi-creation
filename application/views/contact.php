

<section class="inr-banner">
    <div class="innr-slid">
        <img src="<?php echo base_url() . 'assets/site/'; ?>images/inn-bnr/about-3.jpg">
    </div>
</section>

<section class="about-pages-area">
    <div class="container">
        <h3>Contact Us</h3>
        <div class="col-md-3">
            <div class="row">
                <h4>Corporate Office Address:</h4>
                <p> <?php echo $contact->address; ?> </p>


            </div>
        </div>
        <div class="col-md-4">
            <div class="row">



            </div>
        </div>

        <div class="col-md-5">
            <div class="row">
                <div class="contact-from-area">
                    <h4><strong>Get in Touch</strong></h4>
                    <?php echo $this->session->userdata('msg'); ?>
                    <form method="post" action="<?php echo base_url().'page/contactEmail' ?>">
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputname" name="name" value="" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="inputemail" name="email" value="" placeholder="E-mail">
                        </div>
                        <div class="form-group">
                            <input type="tel" class="form-control" id="inputphone" name="phone" value="" placeholder="Phone">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="comments" id="inputcomment" value=""  rows="3" placeholder="Message"></textarea>
                        </div>
                        <button class="btn btn-default"  type="submit" name="button">
                            <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Submit
                        </button>   
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>    

