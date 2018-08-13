<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-cloud-upload"></i> Upload New Banner </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					 <form id="myForm" action="<?php echo base_url().'banners/save';?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Category <span class="red">*</span></label>
							<div class="col-sm-4">
								<select name="category" class="chosen-select" data-placeholder="Please select ...">
									<option value=""></option>
									<option value="Home Banner"> Home Banner</option>
									<option value="Inner Banner"> Inner Banner</option>
								</select>
								<?php echo form_error('category');?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Title </label>
							<div class="col-sm-9">
								<input type="text" name="title" value="<?php echo set_value('title'); ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('title');?>
							</div>
						</div>

						

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Banner Image <span class="red">*</span> </label>
							<div class="col-sm-4">
								<input type="file" name="userfile"  id="id-input-file-2" required />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Banner Size (Home:1366 x 514; Inner:1366 x 300) </span>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-cloud-upload bigger-110"></i> Upload </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->