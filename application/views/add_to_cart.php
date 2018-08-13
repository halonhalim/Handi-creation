

<section class="inr-banner">
    	<div class="innr-slid">
        	<img src="<?php echo base_url().'assets/site/'; ?>images/inn-bnr/wood-2.jpg">
        </div>
</section>

<section class="about-pages-area">  
    <div class="container">
    <h3>Your Cart</h3>
        <div class="wrapper">
            <div class="main-container col1-layout" style="width: 100%;float: left;">
                <div class="main container_12">
                    <div class="breadcrumbs">
                        <h5>Home <i class="fa fa-chevron-right"></i></h5>
                        <h5><b>Add to Cart</b></h5>
                    </div>
        <div  style="overflow-x:auto;" class="success-inner">
            <table class="table table-bordered table-hover">
                <thead class="thead-default">
                    <tr style="background:#e9e9e9;">
                        <th>No.</th>
                        <th>Product Image</th>
                        <th>Product Name </th>
                        <th>Product Code </th>
                        <th>Quantity</th>
                         <th style="width: 40px;">Remove</th>
                        <th>Amount</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td style="width: 136px;"><img alt="" src="images/product/p-1.jpg"></td>
                        <td>Jute Product</td>
                        <td>035/BJ202</td>
                        <td><input type="text" value=""></td>
                        <th class="glyphicon glyphicon-remove" ></th>
                        <th>$50.00</th>
                        
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td style="width: 136px;"><img alt="" src="<?php echo base_url().'assets/site/'; ?>images/product/p-1.jpg"></td>
                        <td>Jute Product</td>
                        <td>035/BJ202</td>
                        <td><input type="text" value=""></td>
                        <td class="glyphicon glyphicon-remove" ></td>   
                        <td>$50.00</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td style="width: 136px;"><img alt="" src="images/product/p-1.jpg"></td>
                        <td>Jute Product</td>
                        <td>035/BJ202</td>
                        <td><input type="text" value=""></td>
                        <td class="glyphicon glyphicon-remove" ></td>   
                        <td>$50.00</td>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td style="width: 136px;"><img alt="" src="images/product/p-1.jpg"></td>
                        <td>Jute Product</td>
                        <td>035/BJ202</td>
                        <td><input type="text" value=""></td>
                        <td class="glyphicon glyphicon-remove" ></td> 
                        
                        <td>$50.00</td>
                    </tr>
                    <tr>
                        <th scope="row">5</th>
                        <td style="width: 136px;"><img alt="" src="images/product/p-1.jpg"></td>
                        <td>Jute Product</td>
                        <td>035/BJ202</td>
                        <td><input type="text" value=""></td> 
                        <td class="glyphicon glyphicon-remove" ></td>   
                        <td>$50.00</td>
                    </tr>
                </tbody>
            </table>
            <h2 class="head-amount">Your Total Amount: <span>$2500.00</span></h2>
            <a data-toggle="modal" href="#" data-target="#squarespaceModal" class="btn btn-add-to-cart"><i class="fa fa-cloud-upload" area-hidden="true"></i>Buy All</a>
        </div>
       <div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5>Apply to Order</h5>
                                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="own-form"> 
                                                                <div class="form-group by-now">
                                                                    <label for="name" style="float: left;">Item Quantity</label>
                                                                    <select style="float: left; width: 100%;">
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                        <option>6</option>
                                                                        <option>7</option>
                                                                        <option>8</option>
                                                                        <option>9</option>
                                                                        <option>10</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="name" style="float: left;">Your Contact Number</label>
                                                                    <input class="form-control" id="name" placeholder="Contact No">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="name" style="float: left;">Your Address <span>*</span></label>
                                                                    <input class="form-control" id="name" placeholder="Address">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="name" style="float: left;">District</label>
                                                                    <select style="width: 100%;">
                                                                        <option>Dhaka</option>
                                                                        <option>Panchogar</option>
                                                                        <option>Noakhali</option>
                                                                        <option>Barishal</option>
                                                                        <option>Magura</option>
                                                                        <option>Barguna</option>
                                                                        <option>Nilphamari</option>
                                                                        <option>Bogra</option>
                                                                        <option>Patuakhali</option>
                                                                        <option>Feni</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="name" style="float: left;">Shipping Charge</label>
                                                                    <h4 style="float: left;width: 100%;">TK 50.00</h4>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="name" style="float: left;">Total Amount</label>
                                                                    <h4 style="float: left;width: 100%;">TK 1300.00</h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <a class="btn btn-confirm" href="#">Confirm</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                </div>
            </div>
        </div>
    </div>
</section>

