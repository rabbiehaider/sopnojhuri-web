<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="photogalleryForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">Gallery Image</label>
                    <div class="col-lg-6">
                        <input type="file" name="picture" id="">
                    </div>
                    <div class="col-lg-2" id="image"></div>
              </div>
                      
                      
            </div>
            <div class="col-md-2">
              <div class="form-group ">
                  <input type="hidden" name="action" id="action" value="create">
                  <input type="hidden" name="old_image" id="old_image">
                 <input type="hidden" name="action_id" id="action_id">
                 <input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
                    </div>   
                      
            </div>

  				</form>
  			</div>
			</div>
			<div id="showdata"></div>
		</div>
	</div>
</div>

<script>
	//  insert
selectImage();
$(document).on('submit','#photogalleryForm',function(e){
        e.preventDefault();
        var action=$('#action','#photogalleryForm').val();
          $.ajax({
              url:'<?php echo base_url("save-photo") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                 if (data.trim()=='insert') {
                  
                  $('#output').html('Save successfully');
                  location.reload();
                  selectImage();
                 }
                 else if(data.trim()=='update'){
                  $('#output').html('Update successfully');
                  location.reload();
                  selectImage();
                 }
                 else{
                  $('#error').html(data);
                 }
                 
              }  
           
          });
      })

  //select data

  function selectImage(){
    var action='selectdata';
    $.ajax({
      'url':'<?php echo base_url("show-gallery") ?>',
      method:'post',
      data:{action:action},
      success: function(data){
        $('#showdata').html(data);
      }
    })
  }

  //edit 
    $(document).on('click','#edit-gallery',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      var img_url='<?php echo base_url("assets/backend/images/gallery/") ?>';
      $.ajax({
        url:'<?php echo base_url('edit-gallery') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#image','#photogalleryForm').val(data.gallery_image);
          $('#image').html('<img src="'+img_url+data.gallery_image+'" style="height:40px;width:40px"/>');
          $('#old_image','#photogalleryForm').val(data.gallery_image);
          $('#action','#photogalleryForm').val('update');
          $('#action_id','#photogalleryForm').val(id);
          $('#submit','#photogalleryForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-gallery',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-gallery') ?>',
          method:'post',
          data:{id:id},
          success:function(data){
            if (data.trim()=='deleted') {
              $('#delete').html('Deleted successfully');
              location.reload();
            }
          }
        })
      }
    })
</script>
