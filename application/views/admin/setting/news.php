<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
       <form class="form-horizontal" id="newsForm" enctype="multipart/form-data">
        <div class="col-md-12">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
       
            <div class="row">
              <div class="col-md-7">
                <div class="row">
                  <label for="news_title" class="control-label col-lg-3"> News Title</label>
                    <div class="col-lg-9">
                        <input type="text" id="news_title" name="news_title" class="form-control" placeholder="News title"> 
                    </div>
                </div>
                <div class="row">
                    <label for="news_desc" class="control-label col-lg-3"> Description</label>
                    <div class="col-lg-9">
                        <textarea id="news_desc" name="news_desc"></textarea>
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
                      if (!empty($news_list)) {
                        foreach($news_list as $list){
                     ?>
                    <tr>
                      <td><?php echo $j++; ?></td>
                      <td><?php echo $list->news_title; ?></td>
                      <td>
                         <a href="" id="edit-news" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
                        <a href="" class="" id="delete-news" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
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
  CKEDITOR.replace( 'news_desc',{
   height: 170,
    filebrowserUploadUrl:"<?php echo base_url('upload-ckimage') ?>"
  });
 
  $(document).on('submit','#newsForm',function(e){
     e.preventDefault();
    var action=$('#action','#newsForm').val();
    var news_title=$('#news_title','#newsForm').val();
    var news_desc=$('#news_desc','#newsForm').val();
    if (news_title =='') {
      alert('Please fill up news title !!');
    }
    else if(news_desc==''){
      alert('Please fill up news description !!')
    }
    else{

      $.ajax({
        url:'<?php echo base_url("save-news") ?>',
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

  $(document).on('click','#edit-news',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
    $.ajax({
      url:'<?php echo base_url("edit-news") ?>',
      method:'post',
      data:{id:id},
      dataType:'json',
      success:function(data){
        $('#news_title','#newsForm').val(data.news_title);
         CKEDITOR.instances['news_desc'].setData(data.news_desc);

        $('#action','#newsForm').val('update');
        $('#action_id','#newsForm').val(id);
        $('#submit','#newsForm').val('Update');
      }
    })
  })

  $(document).on('click','#delete-news',function(e){
    e.preventDefault();
    var id=$(this).attr('data-id');
    if (confirm('Are you sure to delete this ?')) {
      $.ajax({
      url:'<?php echo base_url("delete-news") ?>',
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
