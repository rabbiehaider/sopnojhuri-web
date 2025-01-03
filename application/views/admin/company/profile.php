<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
      <div class="col-md-10">
        <form class="form-horizontal" id="companyprofileForm" enctype="multipart/form-data">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>

          <div class="col-md-6">
                    
                     <div>
                        <label for="com_name" class="control-label col-lg-4">Company Name</label>
                        <div class="col-lg-8">
                            <input type="text" name="com_name" id="com_name" class="form-control" placeholder="Company Full Name" style="margin-bottom: 5px" value="<?php echo $com_profile->com_name ?>">
                          </div>
                    </div>
                    <div>
                        <label for="com_email" class="control-label col-lg-4">Company E-mail</label>
                        <div class="col-lg-8">
                            <input type="email" name="com_email" id="com_email" class="form-control" placeholder="E-mail" style="margin-bottom: 5px" value="<?php echo $com_profile->com_email ?>">
                          </div>
                    </div>
                    <div>
                        <label for="com_phone" class="control-label col-lg-4">Company Phone</label>
                        <div class="col-lg-8">
                            <input type="text" name="com_phone" id="com_phone" class="form-control" placeholder="Phone" style="margin-bottom: 5px" value="<?php echo $com_profile->com_phone ?>">
                          </div>
                    </div>
                    
                    
                    <div>
                        <label for="com_business" class="control-label col-lg-4">Business</label>
                        <div class="col-lg-8">
                            <input type="text" name="com_business" id="com_business" class="form-control" placeholder="Company Business" style="margin-bottom: 5px" value="<?php echo $com_profile->com_business ?>">
                          </div>
                    </div>
                    <div>
                        <label for="com_establish" class="control-label col-lg-4">Website</label>
                        <div class="col-lg-8">
                            <input type="text" name="com_establish" id="com_establish" class="form-control" placeholder="Company Website" style="margin-bottom: 5px" value="<?php echo $com_profile->com_establish ?>">
                          </div>
                    </div>
                    <div>
                    	<label for="mission" class="control-label col-lg-4">Company Mission</label>
                    	<div class="col-lg-8">
                    		<textarea id="com_mission" name="com_mission" class="form-control" style="height: 100px!important" placeholder="Company mission"><?php echo $com_profile->com_mission ?></textarea>
                    	</div>
                    </div>
          </div>

          <div class="col-md-6">
                    <div>
                        <label for="com_sologan" class="control-label col-lg-4">Company Sologan</label>
                        <div class="col-lg-8">
                            <input type="text" name="com_sologan" id="com_sologan" class="form-control" placeholder="Company Sologan" style="margin-bottom: 5px" value="<?php echo $com_profile->com_sologan ?>">
                          </div>
                    </div>
                    <div>
                        <label for="com_address" class="control-label col-lg-4">Company Address</label>
                        <div class="col-lg-8">
                            <textarea style="height: 50px!important;margin-bottom: 5px;" class="form-control" id="com_address" name="com_address" placeholder="Company address"><?php echo $com_profile->com_address ?></textarea>
                          </div>
                    </div>
                    <div>
                        <label for="com_vission" class="control-label col-lg-4">Company Vission</label>
                        <div class="col-lg-8">
                            <textarea style="height: 90px!important;margin-bottom: 5px;" class="form-control" id="com_vission" name="com_vission" placeholder="Company vission"><?php echo $com_profile->com_vission ?></textarea>
                          </div>
                    </div>
                    <div>
                        <label for="image" class="control-label col-lg-4">Company Logo</label>
                        <div class="col-lg-6">
                          <input type="file" name="picture">    
                        </div>
                        <div class="col-lg-2">
                        	<input type="hidden" name="old_image" id="old_image" value="<?php echo $com_profile->com_logo ?>">
                        	<?php 
                        		if ($com_profile->com_logo !='') {
                        			echo '<img src="'.base_url().'assets/backend/images/emplyee_image/'.$com_profile->com_logo.'" style="width: 60px">';
                        		}
                        	 ?>
                        </div>
                    </div>
          </div>

           
          <div class="col-md-12">

                    <div>
                        <label for="emp_name" class="control-label col-lg-8"></label>
                        <div class="col-lg-4">
                          <input type="hidden" name="action" id="action" value="update">
                          <input type="hidden" name="id" id="id" value="<?php echo $com_profile->id ?>">
                            <input type="submit" name="submit" id="submit" value="Update" class="btn btn-info ">
                          </div>
                    </div>
                    
          </div>

          

        </form>
        <hr>
      </div>

      <div id="showlist"></div>
    </div>
  </div>
</div>
<script>
  $(document).on('submit','#companyprofileForm',function(e){
    e.preventDefault();
    var action=$('#action','#companyprofileForm').val();
      $.ajax({
        url:'<?php echo base_url("update-profile") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){

        	if (data.trim()=='update') {
        		$('#output').html("Updated Successfully !!");
                location.href='<?php echo base_url("dashboard") ?>';
        	}
        }
      })

  })


</script>
