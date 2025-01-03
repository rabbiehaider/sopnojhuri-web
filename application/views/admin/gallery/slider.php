<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="sliderForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">Slider Image</label>
                    <div class="col-lg-6">
                        <input type="file" name="picture">
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
	 <div class="row">
		<div class="col-md-6">
      <br>
			<table class="table table-bordered" id="">
				<div id="delete" class="text-success"></div>
				<thead>
					<th>Serial</th>
          <th>Image</th>
					<th>Action</th>
				</thead>
				<tbody>
					<?php
					$j=1;
					 if(!empty($slider_list)){ foreach($slider_list as $list){?>
					<tr>
						<td><?php echo $j++; ?></td>
            <td><img src="<?php echo base_url().'assets/backend/images/gallery/'.$list->slider_image; ?>" style="height: 30px;width: 40px"></td>
						<td>
							<a href="" id="edit-slider" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
             				<a href="" class="" id="delete-slider" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
						</td>
					</tr>
				<?php }} ?>
				</tbody>
			</table>
		</div>	
	</div> 
			
		</div>
	</div>
</div>

<script>
	//  insert
$(document).on('submit','#sliderForm',function(e){
        e.preventDefault();
        var action=$('#action','#sliderForm').val();
          $.ajax({
              url:'<?php echo base_url("save-slider") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                 if (data.trim()=='success') {
                  
                  $('#output').html('Save successfully');
                  location.reload();
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
      })

  //edit 
    $(document).on('click','#edit-slider',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      var img_url='<?php echo base_url("assets/backend/images/gallery/") ?>';
      $.ajax({
        url:'<?php echo base_url('edit-slider') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#slider_image','#sliderForm').val(data.slider_image);

          $('#image','#sliderForm').val(data.slider_image);
          $('#image').html('<img src="'+img_url+data.slider_image+'" style="height:40px;width:40px"/>');
          $('#old_image','#sliderForm').val(data.slider_image);
          $('#action','#sliderForm').val('update');
          $('#action_id','#sliderForm').val(id);
          $('#submit','#sliderForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-slider',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-slider') ?>',
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