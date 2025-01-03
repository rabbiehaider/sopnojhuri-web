<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="aboutForm" enctype="multipart/form-data">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
       
            <div class="row">
              <div class="col-md-9">
                <div class="row">
                    <label for="about_desc" class="control-label col-lg-3">About Description</label>
                    <div class="col-lg-9">
                        <textarea id="about_desc" name="about_desc"><?php echo $cominfo->about_desc ?></textarea>
                    </div>
                </div> 
                <div class="row"><br>
                  <label for="about_image" class="control-label col-lg-3"> About Images</label>
                    <div class="col-lg-6">
                        <input type="file" id="about_image" name="about_image"> 
                    </div>
                    <div class="col-lg-3">
                      <img src="<?php echo base_url().'assets/backend/images/emplyee_image/'.$cominfo->about_image ?>" style="height: 40px; width: 60px">
                    </div>
                </div> 
                <div class="row">
                  <br>
                        <label for="emp_name" class="control-label col-lg-3"></label>
                        <div class="col-lg-9">
                          <input type="hidden" name="action" id="action" value="update">
                          <input type="hidden" name="old_image" id="old_image" value="<?php echo $cominfo->about_image ?>">
                          <input type="hidden" name="action_id" id="action_id" value="<?php echo $cominfo->id ?>">
                            <input type="submit" name="submit" id="submit" value="Update" class="btn btn-info ">
                          </div>
                    </div>
              </div>
            </div>
        </div>
      </form>
      
       
    </div>
  </div>
</div>
<script>
  $(document).ready(function(){

  })
  CKEDITOR.replace( 'about_desc',{
   height: 250,
   filebrowserUploadUrl:"<?php echo base_url('upload-ckimage') ?>"
  });
 
  $(document).on('submit','#aboutForm',function(e){
     e.preventDefault();
    var action=$('#action','#aboutForm').val();
    var about_desc=$('#ser_desc','#aboutForm').val();
     if(about_desc==''){
      alert('Please fill up about description !!')
    }
    else{

      $.ajax({
        url:'<?php echo base_url("update-about") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){
          if(data.trim()=='update'){
            alert('Updated Successfully !!');
            location.reload();
          }
          else{
            alert(data);
          }
        }
      });
    } 
  })


</script>
