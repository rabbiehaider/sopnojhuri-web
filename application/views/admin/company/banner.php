<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" action="<?php echo base_url('update-banner') ?>" enctype="multipart/form-data" method="post">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">QR Code Image</label>
                    <div class="col-lg-6">
                        <input type="file" name="picture">
                    </div>
                    <div class="col-lg-2" id="image">
                      <img src="<?php echo base_url().'assets/backend/images/emplyee_image/'.$banner->banner_image ?>" style="height: 40px;width: 40px">
                    </div>
              </div>
                      
                       
            </div>
            <div class="col-md-2">
              <div class="form-group ">
                  <input type="hidden" name="action" id="action" value="update">
                  <input type="hidden" name="id" id="id" value="<?php echo $banner->id?>">
                  <input type="hidden" name="old_image" id="old_image" value="<?php echo $banner->banner_image ?>">
                 <input type="submit" name="submit" id="submit" value="Update" class="btn btn-info ">
                    </div>   
                      
            </div>

  				</form>
  			</div>
			</div>

			
		</div>
	</div>
</div>

