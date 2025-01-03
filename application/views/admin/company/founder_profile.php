<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="founderprofileForm" enctype="multipart/form-data">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="row">
              <div class="col-md-5">     
                <div class="row">
                  <div>
                    <label for="founde_name" class="control-label col-lg-4">Founder Name</label>
                    <div class="col-lg-8">
                        <input type="text" name="founde_name" id="founde_name" class="form-control" placeholder="Founder name" style="margin-bottom: 5px" value="<?php echo $founder_profile->founde_name ?>">
                      </div>
                  </div>
                </div>
                 <div class="row">
                   <div>
                    <label for="founder_designation" class="control-label col-lg-4">Designation</label>
                    <div class="col-lg-8">
                        <input type="text" name="founder_designation" id="founder_designation" class="form-control" value="<?php echo $founder_profile->founder_designation ?>" placeholder="Designation">
                    </div>
                  </div>
                 </div>
                 <div class="row">
                     <div>
                      <label for="founder_email" class="control-label col-lg-4">E-mail</label>
                      <div class="col-lg-8">
                          <input type="email" name="founder_email" id="founder_email" class="form-control" placeholder="E-mail" value="<?php echo $founder_profile->founder_email ?>">
                      </div>
                    </div>
                  </div>
                 <div class="row">
                  <div>
                    <label for="founder_phone" class="control-label col-lg-4">Phone Number</label>
                    <div class="col-lg-8">
                        <input type="text" name="founder_phone" id="founder_phone" class="form-control" placeholder="Phone number" style="margin: 5px 0px" value="<?php echo $founder_profile->founder_phone ?>">
                    </div>
                    
                  </div>
                </div>
                <div class="row">
                  <div>
                    <label for="founder_image" class="control-label col-lg-4">Founder Image</label>
                    <div class="col-lg-6">
                       <input type="file" name="founder_image"> 
                    </div>
                    <div class="col-md-2">
                      <img src="<?php echo base_url().'assets/backend/images/emplyee_image/'.$founder_profile->founder_image ?>" style="width: 60px;height: 40px">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div>
                        <label for="emp_name" class="control-label col-lg-4"></label>
                        <div class="col-lg-8">
                          <input type="hidden" name="action" id="action" value="founder">
                          <input type="hidden" name="old_image" id="old_image" value="<?php echo $founder_profile->founder_image ?>">
                          <input type="hidden" name="action_id" id="action_id" value="<?php echo $founder_profile->id ?>">
                            <input type="submit" name="submit" id="submit" value="Update" class="btn btn-info ">
                          </div>
                    </div>
                </div>
              </div>
              <div class="col-md-7">
                <div>
                    <label for="founder_yourself" class="control-label col-lg-3"> Description</label>
                    <div class="col-lg-9">
                        <textarea id="founder_yourself" name="founder_yourself"><?php echo $founder_profile->founder_yourself ?></textarea>
                    </div>
                </div>  
              </div>
            </div>
        </div>
      </form>
      <div id="showdata"></div>
       
    </div>
  </div>
</div>
<script>
  CKEDITOR.replace( 'founder_yourself',{
   height: 150,
  });
 
  $(document).on('submit','#founderprofileForm',function(e){
    e.preventDefault();
    var action=$('#action','#founderprofileForm').val();
    var founde_name=$('#founde_name','#founderprofileForm').val();
    var founder_designation=$('#founder_designation','#founderprofileForm').val();
    var founder_yourself=$('#founder_yourself','#founderprofileForm').val();
    
    if (founde_name =='') {
      alert('Please fill up founder name !!');
    }
    else if (founder_designation ==0) {
      alert('Please fill up fonder designation !!');
    }
    else if (founder_yourself =='') {
      alert('Please fill up founder description !!');
    }
    else{
      $.ajax({
        url:'<?php echo base_url("update-founder") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){
          if (data.trim()=='update') {
           alert("Update successfully !!");
            location.href='<?php echo base_url("dashboard") ?>';
          }
          else{
            alert(data)
          }
        }
      })
    } 
  })


</script>
