<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="serviceForm" enctype="multipart/form-data" method="post">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
       
            <div class="row">
              <div class="col-md-7">
                <div class="row">
                  <label for="ser_title" class="control-label col-lg-3"> Service Title</label>
                    <div class="col-lg-9">
                        <input type="text" id="ser_title" name="ser_title" class="form-control" placeholder="Service title"> 
                    </div>
                </div>
                <div class="row">
                    <label for="ser_desc" class="control-label col-lg-3"> Description</label>
                    <div class="col-lg-9">
                        <textarea id="ser_desc" name="ser_desc"></textarea>
                    </div>
                </div>  
                <div class="row">
                  <br>
                        <label for="emp_name" class="control-label col-lg-3"></label>
                        <div class="col-lg-9">
                          <input type="hidden" name="action" id="action" value="create">
                          <input type="hidden" name="action_id" id="action_id" value="">
                            <input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
                          </div>
                    </div>
              </div>
              <div class="col-md-5">
                <table class="table-bordered" id="dataTable">
                  <thead>
                    <th>Serial</th>
                    <th>Title</th>
                    <th class="text-center">Action</th>
                  </thead>
                  <tbody>
                    <?php 
                      $j=1;
                      if (!empty($service_list)) {
                        foreach($service_list as $list){
                     ?>
                    <tr>
                      <td><?php echo $j++; ?></td>
                      <td><?php echo $list->ser_title; ?></td>
                      <td>
                         <a href="" id="edit-service" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
                        <a href="" class="" id="delete-service" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
                      </td>
                    </tr>
                  <?php }} ?>
                  </tbody>
                </table>
              </div>
            </div>
        </div>
      </form>
      
       
    </div>
  </div>
</div>
<script>
  CKEDITOR.replace( 'ser_desc',{
   height: 170,
    filebrowserUploadUrl:"<?php echo base_url('upload-ckimage') ?>"
  });
 
  $(document).on('submit','#serviceForm',function(e){
     e.preventDefault();
    var action=$('#action','#serviceForm').val();
    var ser_title=$('#ser_title','#serviceForm').val();
    var ser_desc=$('#ser_desc','#serviceForm').val();
    if (ser_title =='') {
      alert('Please fill up service title !!');
    }
    else if(ser_desc==''){
      alert('Please fill up service description !!')
    }
    else{

      $.ajax({
        url:'<?php echo base_url("save-service") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){
         if(data.trim()=='insert'){
           alert("Insert Successfully !!");
            location.reload();
          }
          else if(data.trim()=='update'){
            alert('Updated Successfully !!');
            location.reload();
          }
        }
      });
    } 
  })

  $(document).on('click','#edit-service',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
    $.ajax({
      url:'<?php echo base_url("edit-service") ?>',
      method:'post',
      data:{id:id},
      dataType:'json',
      success:function(data){
        $('#ser_title','#serviceForm').val(data.ser_title);
         CKEDITOR.instances['ser_desc'].setData(data.ser_desc);

        $('#action','#serviceForm').val('update');
        $('#action_id','#serviceForm').val(id);
        $('#submit','#serviceForm').val('Update');
      }
    })
  })

  $(document).on('click','#delete-service',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
    if (confirm('Are you sure to delete this ?')) {
      $.ajax({
      url:'<?php echo base_url("delete-service") ?>',
      method:'post',
      data:{id:id},
      success:function(data){
        if (data.trim()=='delete') {
          alert("Deleted Successfully !!");
          location.reload();
        }
      }
    })
    }
  })
</script>
