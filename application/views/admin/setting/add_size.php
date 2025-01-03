<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="sizeForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="size_name" class="control-label col-lg-4">Size Name</label>
                 <div class="col-lg-8">
                   <input type="text" name="size_name" id="size_name" class="form-control" placeholder="Color name">
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
      <div id="selectsize"></div>
	 
		</div>
	</div>
</div>

<script>
  selectsize();
	//  insert
$(document).on('submit','#sizeForm',function(e){
        e.preventDefault();
        var action=$('#action','#sizeForm').val();
        var size_name=$('#size_name','#sizeForm').val();
        if (size_name=='') {
          alert('Color name field is empty !!');
        }
        else{
          $.ajax({
              url:'<?php echo base_url("save-size") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                 if (data.trim()=='insert') {
                  
                  $('#output').html('Save successfully');
                  $('#sizeForm')[0].reset();
                  selectsize();
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
  function selectsize(){
    var action='selectcolor';
    $.ajax({
      url:'<?php echo base_url("show-size") ?>',
      method:'post',
      data:{action:action},
      success: function(data){
        $('#selectsize').html(data);
      }
    })
  }

  //edit 
    $(document).on('click','#edit-size',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
     
      $.ajax({
        url:'<?php echo base_url('edit-size') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#size_name','#sizeForm').val(data.size_name);
          $('#action','#sizeForm').val('update');
          $('#action_id','#sizeForm').val(id);
          $('#submit','#sizeForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-size',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-size') ?>',
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