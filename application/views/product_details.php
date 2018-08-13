

<section class="inr-banner">
    <div class="innr-slid">
        <img src="<?php echo base_url() . 'assets/site/'; ?>images/inn-bnr/wood-2.jpg">
    </div>
</section>

<section class="about-pages-area">  
    <div class="container">
        <h3><?php echo $products->name; ?></h3>
        <div class="wrapper">
            <div class="main-container col1-layout" style="width: 100%;float: left;">
                <div class="main container_12">
                    <div class="breadcrumbs">
                        <h5>Home <i class="fa fa-chevron-right"></i></h5>
                        <h5>Products <i class="fa fa-chevron-right"></i></h5>
                        <h5><b><?php echo $products->name; ?></b></h5>
                    </div>
                    <div class="col-main grid_full">
                        <div class="product-view">
                            <div class="product-essential">
                                <input name="form_key" type="hidden" value="ICm9Kn4Vd65kGO9B" />
                                <div class="no-display">
                                    <input type="hidden" name="product" value="1" />
                                    <input type="hidden" name="related_product" id="related-products-field" value="" />
                                </div>
                                <div id="messages_product_view"></div>	
                                <div class="product-img-box no-both-margin product-img-column grid_4 col-md-5 col-sm-5 col-xs-12">
                                    <div class="row">
                                        <div class="img-box">
                                            <div class="product-image product-image-zoom">
                                                <div class="product-image-gallery">
                                                    <img id="image-main" class="gallery-image visible" src="<?php echo base_url() . 'assets/filemanager/products/' . $products->file_name; ?>" alt="Bodj Small Floppy Basket" title="Bodj Small Floppy Basket" />

                                                    <img id="image-0"   class="gallery-image" src="<?php echo base_url() . 'assets/filemanager/products/' . $products->file_name; ?>" data-zoom-image="<?php echo base_url() . 'assets/filemanager/products/' . $products->file_name; ?>"/>
                                                    <img id="image-1" class="gallery-image" src="<?php echo base_url() . 'assets/filemanager/products/' . $products->pic; ?>" data-zoom-image="<?php echo base_url() . 'assets/filemanager/products/' . $products->pic; ?>"/>
                                                    <img id="image-2" class="gallery-image" src="images/product-detales/g-1.jpg" data-zoom-image="images/product-detales/g-1.jpg"/>
                                                    <img id="image-3" class="gallery-image" src="images/product-detales/g-2.jpg" data-zoom-image="images/product-detales/g-2.jpg"/>
                                                </div>
                                            </div>
                                            <div class="more-views">
                                                <!--<h2></h2>-->
                                                <ul id="more-images-slider" class="product-image-thumbs itemslider-thumbnails">
                                                    <li class="item">
                                                        <a class="thumb-link product-image" href="#" title="Bodj Small Floppy Basket" data-image-index="0">
                                                            <img class="image-ul" style="width: 105px; " src="<?php echo base_url() . 'assets/filemanager/products/' . $products->file_name; ?>"  alt="" />
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a class="thumb-link product-image" href="#" title="2 Bodj Small Floppy Baskets and 1 large" data-image-index="1">
                                                            <img class="image-ul" src="<?php echo base_url() . 'assets/filemanager/products/' . $products->pic; ?>" alt="" />
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a class="thumb-link product-image" href="#" title="Bodj Small Floppy Basket hand weaving" data-image-index="2">
                                                            <img class="image-ul" src="images/product-detales/g-1.jpg" alt="" />
                                                        </a>
                                                    </li>
                                                    <li class="item">
                                                        <a class="thumb-link product-image" href="#" title="Bodj Small Floppy Basket with Charnwood C-Four stove" data-image-index="3">
                                                            <img class="image-ul" src="images/product-detales/g-2.jpg" alt="" />
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-shop no-both-margin grid_7 col-md-7 col-sm-7 col-xs-12">
                                    <div class="row">
                                        <div class="product-name">

                                            <h1><?php echo $products->name; ?></h1>
                                        </div>
                                        <div class="price-stock">
                                            <div class="price-box">
                                                <h4><?php echo $products->price; ?></h4>
                                            </div>
                                            <div class="add-to-box">
                                                <div class="add-to-cart">
                                                    <div class="quantity_counter">
                                                        <a href="#prev" data-qty="prev" class="prev quantity">-</a>
                                                        <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="input-text qty qty-value" />
                                                        <a href="#next" data-qty="next" class="next quantity">+</a>
                                                    </div>
                                                    <!--------MODAL-ADD-TO-CART------->
                                                    <!-- Modal -->
                                                </div>
                                            </div>
                                            <div class="short-description">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .
                                                </p>
                                                <div class="sku">
                                                    <h5>Product code : 035/BJ202</h5>	    
                                                </div>
                                            </div>
                                            <div class="social-link">
                                                <!--------MODAL-BUY------->
                                                <button class="btn btn-buyer" data-toggle="modal" href="#" data-target="#squarespaceModal"><i class="fa fa-cloud-upload" area-hidden="true"></i>Buy Now</button>
                                                <div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">

                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5>Apply to Order</h5>
                                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                            </div>

                                                            <form method="post" action="<?php echo base_url() . 'page/contactadd' ?>">
                                                                <div class="modal-body">
                                                                    <div class="own-form"> 
                                                                        <div class="form-group by-now">
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control" name="name" value="" placeholder="Name....">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <input type="email" class="form-control" name="email;" value="" placeholder="E-mail...">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control" name="phone" value="" placeholder="Phone...">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control" name="address" value="" placeholder="address...">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <textarea class="form-control" name="comments" rows="3" placeholder="Message"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button class="btn btn-default"  type="submit" name="button">
                                                                        <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Confirm
                                                                    </button> 
                                                                </div>
                                                                <form> 
                                                                    </div>

                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>	    
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </section>

                                                                    <section class="proudct-tab-area">
                                                                        <div class="container">
                                                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                                                <div class="row">
                                                                                    <div class="proudct-tab">
                                                                                        <div class="tab">
                                                                                            <button class="tablinks" onclick="openCity(event, 'London')">Product & Materials</button>
                                                                                            <button class="tablinks" onclick="openCity(event, 'Paris')">Specification</button>
                                                                                        </div>

                                                                                        <div id="London" class="tabcontent">
                                                                                            <h3>Project & Materials</h3>
                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                                                                                        </div>

                                                                                        <div id="Paris" class="tabcontent">
                                                                                            <h3>Specification</h3>
                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p> 
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </section>

