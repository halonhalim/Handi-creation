<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-cloud-upload"></i> Edit Banner </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'banners/update/'; ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<input type="hidden" name="id" value="<?php echo $edit->id; ?>" class="col-xs-10 col-sm-5" />

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Category <span class="red">*</span> </label>
							<div class="col-sm-4">
								<select name="category" class="chosen-select" data-placeholder="Please select ...">
									<option value=""></option>
									<option value="Home Banner" <?php echo ($edit->category == 'Home Banner') ? 'selected="selected"' : ''; ?> > Home Banner</option>
									<option value="Inner Banner" <?php echo ($edit->category == 'Inner Banner') ? 'selected="selected"' : ''; ?> > Inner banner </option>
								</select>
								<?php echo form_error('category'); ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Title </label>
							<div class="col-sm-9">
								<input type="text" name="title" value="<?php echo $edit->title; ?>" class="col-xs-10 col-sm-5" />
								<?php echo form_error('title'); ?>
							</div>
						</div>

						

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Banner Image </label>
							<div class="col-sm-4">
								<input type="hidden" name="old_file" value="<?php echo $edit->file_name; ?>" />
								<input type="file" name="userfile"  id="id-input-file-2" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Banner Size (Home:1366 x 514; Inner:1366 x 300) </span>
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-refresh bigger-110"></i> Update </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->