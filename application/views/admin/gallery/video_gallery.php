<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="videogalleryForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="video_link" class="control-label col-lg-4">Embed Video</label>
                 <div class="col-lg-8">
                   <input type="text" name="video_link" id="video_link" class="form-control" placeholder="Youtube video link">
                  </div>
              </div>
                      
                      
            </div>
            <div class="col-md-2">
              <div class="form-group ">
                <input type="hidden" name="action" id="action" value="create">
                <input type="hidden" name="action_id" id="action_id">
                <input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
              </div>   
                     
            </div>

  				</form>
  			</div>
			</div>
      <div id="show-data"></div>	

		</div>
	</div>
</div>

<script>
	//  insert
  selectData();
$(document).on('submit','#videogalleryForm',function(e){
        e.preventDefault();
        var action=$('#action','#videogalleryForm').val();
        //alert(action)
        var video_link=$('#video_link','#videogalleryForm').val();
        if (video_link =='') {
          alert('Video link field is empty !!');
        }
        else{
          $.ajax({
              url:'<?php echo base_url("save-video") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                alert(data);
                 if (data.trim()=='insert') {
                  
                  $('#output').html('Save successfully');
                  $('#videogalleryForm')[0].reset();
                  selectData();
                  
                 }
                 else if(data.trim()=='update'){
                  $('#output').html('Update successfully');
                  location.reload();
                 }
                 else{
                  $('#error').html(data);
                 }
                 
              }  
           
          });
        }
      })

  //edit 
    $(document).on('click','#edit-video',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
     
      $.ajax({
        url:'<?php echo base_url('edit-video') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#video_link','#videogalleryForm').val(data.video_link);
          $('#action','#videogalleryForm').val('update');
          $('#action_id','#videogalleryForm').val(id);
          $('#submit','#videogalleryForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-video',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-video') ?>',
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

    function selectData(){
      var action='showvideo';
      $.ajax({
        url:'<?php echo base_url("show-video") ?>',
        method:'post',
        data:{action:action},
        success:function(data){
          $('#show-data').html(data);
        }
      }) 
    }
</script>
