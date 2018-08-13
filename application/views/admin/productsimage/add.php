<div class="row">
    <div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
        <div class="widget-box widget-color-blue" id="widget-box-2">
            <div class="widget-header">
                <h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-plus-square"></i> Add New Products Image </h5>
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <form id="myForm" action="<?php echo base_url() . 'productsimage/save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

                        <div class="row">
                            <div class="form-group">
                                <label class="col-sm-2 control-label no-padding-right">Products <span class="red">*</span> </label>
                                <div class="col-sm-4">
                                    <select name="productsid"  class="form-control">
                                        <option value="0">Chose Products</option>
                                        <?php
                                           foreach ($allproduct   as  $products ){?>
                                             <option value="<?php echo $products->id; ?>"><?php echo $products->name;?></option>  
                                        <?php
                                        }
                                        ?>
                                    </select>
                                    <p class=""><?php echo form_error('productsid'); ?></p>
                                </div>
                            </div>

                            <div class="col-md-6"></div>
                        </div> 
                                                                 

                        

                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Image </label>
                            <div class="col-sm-4">
                                <input type="file" name="userfile"  id="id-input-file-2" />
                                <span class="label label-important">NOTE!</span>
                                <span class="error"> Image Size (704 x 255) </span>
                            </div>
                        </div>  
                        <div class="clearfix form-actions">
                            <div class="col-md-offset-2 col-md-9">
                                <button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-save bigger-110"></i> Save </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div><!-- /.span -->
</div><!-- /.row -->

