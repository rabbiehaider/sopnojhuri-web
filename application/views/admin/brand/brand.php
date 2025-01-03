<div class="container"> 
  <div class="row">
    <div class="well" style="min-height: 500px">
      <div class="row">
        <div class="col-md-6">
          <form class="form-horizontal" id="brandForm" method="post">
            <div id="output" class="text-success text-center"></div>
            <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">Brand Image</label>
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
           if(!empty($brand_list)){ foreach($brand_list as $list){?>
          <tr>
            <td><?php echo $j++; ?></td>
            <td><img src="<?php echo base_url().'assets/backend/images/gallery/'.$list->brand_image; ?>" style="height: 30px;width: 40px"></td>
            <td>
              <a href="" id="edit-brand" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
                    <a href="" class="" id="delete-brand" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
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
$(document).on('submit','#brandForm',function(e){
        e.preventDefault();
        var action=$('#action','#brandForm').val();
          $.ajax({
              url:'<?php echo base_url("save-brand") ?>',
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
    $(document).on('click','#edit-brand',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      var img_url='<?php echo base_url("assets/backend/images/gallery/") ?>';
      $.ajax({
        url:'<?php echo base_url('edit-brand') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#brand_image','#brandForm').val(data.brand_image);

          $('#image','#brandForm').val(data.brand_image);
          $('#image').html('<img src="'+img_url+data.brand_image+'" style="height:40px;width:40px"/>');
          $('#old_image','#brandForm').val(data.brand_image);
          $('#action','#brandForm').val('update');
          $('#action_id','#brandForm').val(id);
          $('#submit','#brandForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-brand',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-brand') ?>',
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