<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="colorForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="color_name" class="control-label col-lg-4">Color Name</label>
                 <div class="col-lg-8">
                   <input type="text" name="color_name" id="color_name" class="form-control" placeholder="Color name">
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
      <div id="selectcolor"></div>
	 
		</div>
	</div>
</div>

<script>
  selectcolor();
	//  insert
$(document).on('submit','#colorForm',function(e){
        e.preventDefault();
        var action=$('#action','#colorForm').val();
        var color_name=$('#color_name','#colorForm').val();
        if (color_name=='') {
          alert('Color name field is empty !!');
        }
        else{
          $.ajax({
              url:'<?php echo base_url("save-color") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                 if (data.trim()=='insert') {
                  
                  $('#output').html('Save successfully');
                  $('#colorForm')[0].reset();
                  selectcolor();
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

  //select
  function selectcolor(){
    var action='selectcolor';
    $.ajax({
      url:'<?php echo base_url("show-color") ?>',
      method:'post',
      data:{action:action},
      success: function(data){
        $('#selectcolor').html(data);
      }
    })
  }

  //edit 
    $(document).on('click','#edit-color',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
     
      $.ajax({
        url:'<?php echo base_url('edit-color') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#color_name','#colorForm').val(data.color_name);
          $('#action','#colorForm').val('update');
          $('#action_id','#colorForm').val(id);
          $('#submit','#colorForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-color',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-color') ?>',
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