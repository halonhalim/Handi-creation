

<section class="inr-banner">
        <div class="innr-slid">
            <img src="<?php echo base_url().'assets/site/'; ?>images/inn-bnr/jwle-2.jpg">
        </div>
</section>

<section class="about-pages-area">
    
    <div class="container"> 
    <h3> <?php     $cat  = $this->category_model->get_by_id($id) ?>
                                       <?php echo $cat->tittle; ?>
                                     
    </h3>
        <?php foreach($products as $row){?>
        <div class="col-md-3 col-sm-3 col-xs-12 column productbox">
           <a href="<?php echo base_url(). "page/product_details/" .$row->id;?>" target="_blank"> <img src="<?php echo base_url().'assets/filemanager/products/'.$row->file_name; ?>"  class="img-responsive"> </a>
        <div class="producttitle"><?php echo $row->name; ?></div>
            <div class="productprice">
                <div class="pull-right">
                    <a href="<?php echo base_url(). "page/product_details/" .$row->id;?>" class="btn btn-danger btn-sm" role="button">Details</a>
                </div>
                <div class="pricetext">৳<?php echo $row->price; ?></div>   
            </div>
        </div>
        <?php }?>
        
        
        <div class="row">
            <div class="col-md-12 text-center">
                <?php echo $this->pagination->create_links(); ?>
            </div>
        </div>
        
       
  </div>
    
</section>
      
        
        
        
       
        
       
        
        
        
        
        
      
   
