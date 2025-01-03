 <div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="conditionForm" enctype="multipart/form-data">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
       
            <div class="row">
              <div class="col-md-9">
                <div class="row">
                    <label for="terms_desc" class="control-label col-lg-3">Terms & Condition</label>
                    <div class="col-lg-9">
                        <textarea id="terms_desc" name="terms_desc"><?php echo $cominfo->terms_desc ?></textarea>
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

  })
  CKEDITOR.replace('terms_desc',{
   height: 250,
   filebrowserUploadUrl:"<?php echo base_url('upload-ckimage') ?>"
  });
 
  $(document).on('submit','#conditionForm',function(e){
     e.preventDefault();
    var action=$('#action','#conditionForm').val();
    var terms_desc=$('#ser_desc','#conditionForm').val();
     if(terms_desc==''){
      alert('Please fill up condition !!');
    }
    else{

      $.ajax({
        url:'<?php echo base_url("update-condition") ?>',
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
