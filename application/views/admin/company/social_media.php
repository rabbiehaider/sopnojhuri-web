<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="socialForm" method="post">
        <div class="col-md-10">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
       
            <div class="row">
              <div class="col-md-8">
                <div class="row">
                    <label for="about_desc" class="control-label col-lg-3">Facebook Link</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="fb_link" placeholder="Facebook" id="fb_link" value="<?php echo $cominfo->fb_link ?>">
                    </div>
                </div> 
                <div class="row">
                    <label for="about_desc" class="control-label col-lg-3">Twitter Link</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="tw_link" placeholder="Twitter" id="tw_link" value="<?php echo $cominfo->tw_link ?>">
                    </div>
                </div> 
                <div class="row">
                    <label for="about_desc" class="control-label col-lg-3">Linkedin Link</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="ln_link" placeholder="Linkedin" id="ln_link" value="<?php echo $cominfo->ln_link ?>">
                    </div>
                </div>
                <div class="row">
                    <label for="about_desc" class="control-label col-lg-3">We Chat Link</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="we_chat" placeholder="We Chat" id="we_chat" value="<?php echo $cominfo->we_chat ?>">
                    </div>
                </div> 
                <div class="row">
                  <br>
                        <label for="emp_name" class="control-label col-lg-3"></label>
                        <div class="col-lg-9">
                          <input type="hidden" name="action" id="action" value="update">
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
    $(document).on('submit','#socialForm',function(e){
         e.preventDefault();
          var action=$('#action','#socialForm').val();
          $.ajax({
            url:'<?php echo base_url("update-social") ?>',
            method:'post',
            data:new FormData(this),
            contentType:false,
            processData:false,
            success: function(data){
              if(data.trim()=='update'){
                alert('Updated Successfully !!');
                location.reload();
              }
            }
          }); 
      })
  })
 
  


</script>
