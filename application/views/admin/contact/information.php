<div class="row">
	<div class="col-xs-12 col-sm-12 widget-container-col" id="widget-container-col-2">
		<div class="widget-box widget-color-blue" id="widget-box-2">
			<div class="widget-header">
				<h5 class="widget-title bigger lighter"> <i class="ace-icon fa fa-plus-square"></i> Contact </h5>
			</div>

			<div class="widget-body">
				<div class="widget-main">
					<form id="myForm" action="<?php echo base_url() . 'contact/save/' . md5($edit->id); ?>" class="form-horizontal" method="post" enctype="multipart/form-data">   

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Company Name </label>
							<div class="col-sm-9">
								<input type="text" name="company_name" value="<?php echo $edit->company_name; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Mobile No </label>
							<div class="col-sm-9">
								<input type="text" name="mobile_no" value="<?php echo $edit->mobile_no; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> E-mail </label>
							<div class="col-sm-9">
								<input type="text" name="email" value="<?php echo $edit->email; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Address </label>
							<div class="col-sm-9">
								<textarea name="address" class="col-xs-10 col-sm-5" rows="3"><?php echo $edit->address; ?></textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Facebook </label>
							<div class="col-sm-9">
								<input type="text" name="facebook" value="<?php echo $edit->facebook; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Twitter </label>
							<div class="col-sm-9">
								<input type="text" name="twitter" value="<?php echo $edit->twitter; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Youtube </label>
							<div class="col-sm-9">
								<input type="text" name="youtube" value="<?php echo $edit->youtube; ?>" class="col-xs-10 col-sm-5" />
							</div>
						</div>

						
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"> Logo </label>
							<div class="col-sm-4">
								<input type="hidden" name="old_logo" value="<?php echo $edit->logo; ?>"  />
								<input type="file" name="userfile" id="id-input-file-2" />
								<span class="label label-important">NOTE!</span>
								<span class="error"> Logo Size 180 x 70 </span>
								<br />
								<img src="<?php echo base_url() . 'assets/filemanager/' . $edit->logo; ?>" />
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-sm btn-success" type="submit"> <i class="ace-icon fa fa-save bigger-110"></i> Save </button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div><!-- /.span -->
</div><!-- /.row -->