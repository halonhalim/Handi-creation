<div class="row">
    <div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
        <div class="widget-box widget-color-blue" id="widget-box-2">
            <div class="widget-header">
                <h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-plus-square"></i> Add New Products </h5>
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <form id="myForm" action="<?php echo base_url() . 'products/save'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data" >     

                        <div class="row">
                            <div class="form-group">
                                <label class="col-sm-2 control-label no-padding-right">Category <span class="red">*</span> </label>
                                <div class="col-sm-4">
                                    <select name="categoryid"  class="form-control">
                                        <option value="0">Chose Category</option>
                                        <?php
                                           foreach ($allcat  as  $cat ){?>
                                             <option value="<?php echo $cat->id; ?>"><?php echo $cat->tittle; ?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                    <p class=""><?php echo form_error('categoryname'); ?></p>
                                </div>
                            </div>

                            <div class="col-md-6"></div>
                        </div> 
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Title <span class="red">*</span> </label>
                            <div class="col-sm-9">
                                <input type="text" name="name" value="<?php echo set_value('name'); ?>" class="col-xs-10 col-sm-5" />
                                <?php echo form_error('name'); ?>
                            </div>
                        </div>                                             

                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Description <span class="red">*</span> </label>
                            <div class="col-sm-9">
                                <textarea name="description" class="txtDetails col-xs-10 col-sm-5"><?php echo set_value('description'); ?></textarea>
                                <?php echo form_error('description'); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> price <span class="red">*</span> </label>
                            <div class="col-sm-9">
                                <input type="number" name="price" value="<?php echo set_value('price'); ?>" class="col-xs-10 col-sm-5" />
                                <?php echo form_error('price'); ?>
                            </div>
                        </div> 
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">Stock <span class="red">*</span> </label>
                            <div class="col-sm-9">
                                <input type="text" name="stock" value="<?php echo set_value('stock'); ?>" class="col-xs-10 col-sm-5" />
                                <?php echo form_error('stock'); ?>
                            </div>
                        </div> 
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Product code  </label>
                            <div class="col-sm-9">
                                <input type="text" name="productcode" value="<?php echo set_value('productcode'); ?>" class="col-xs-10 col-sm-5" />
                                <?php echo form_error('productcode'); ?>
                            </div>
                        </div> 
                       <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Products Material </label>
                            <div class="col-sm-9">
                                <textarea name="productsmaterial" class="txtDetails col-xs-10 col-sm-5"><?php echo set_value('productsmaterial'); ?></textarea>
                                <?php echo form_error('productsmaterial'); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right">Specification </label>
                            <div class="col-sm-9">
                                <textarea name="specification" class="txtDetails col-xs-10 col-sm-5"><?php echo set_value('specification'); ?></textarea>
                                <?php echo form_error('specification'); ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Image </label>
                            <div class="col-sm-4">
                                <input type="file" name="userfile"  id="id-input-file-2" />
                                <span class="label label-important">NOTE!</span>
                                <span class="error"> Image Size (460 x 250) </span>
                            </div>
                        </div>  
                         <div class="form-group">
                            <label class="col-sm-2 control-label no-padding-right"> Image </label>
                            <div class="col-sm-4">
                                <input type="file" name="pic"  id="id-input-file-2" />
                                <span class="label label-important">NOTE!</span>
                                <span class="error"> Image Size (460 x 250) </span>
                            </div>
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

