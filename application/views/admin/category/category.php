<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="row">
				<div class="col-md-6">
  				<form class="form-horizontal" id="categoryForm">
  					<div id="output" class="text-success text-center"></div>
  					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>

  					<div class="col-md-10">
  		 
  						<div class="form-group ">
  		          <label for="emp_name" class="control-label col-lg-4">Parent</label>
  		          <div class="col-lg-8">
  	                 <select class="form-control select-box" name="parent_id" id="parent_id">
                       <option value="0">Parent</option>
                       <?php 
                         $categorys= $this->db->query("select * from tbl_category where status='a'")->result();
                          if (!empty($categorys)) { foreach($categorys as $category){
                           
                          
                        ?>
                        <option value="<?php echo $category->id?>"><?php echo $category->category_name ?></option>
                        <?php }}  ?>
                     </select>       	
  	             </div>
  		        </div>
  		                
  		                
  					</div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">Category Name</label>
                 <div class="col-lg-8">
                   <input type="text" name="category_name" id="category_name" class="form-control" placeholder="Category name">
                  </div>
              </div>
                      
                      
            </div>
            <div class="col-md-10">
       
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4">Category Image</label>
                    <div class="col-lg-6">
                        <input type="file" name="picture">
                    </div>
                    <div class="col-lg-2" id="image"></div>
              </div>
                      
                      
            </div>
            <div class="col-md-10">
              <div class="form-group ">
                    <label for="emp_name" class="control-label col-lg-4"></label>
                    <div class="col-lg-8">
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
			<table class="table table-bordered" id="dataTable">
				<div id="delete" class="text-success"></div>
				<thead>
					<th>Serial</th>
					<th>Name</th>
                    <th>Image</th>
					<th>Action</th>
				</thead>
				<tbody>
					<?php
					$j=1;
					 if(!empty($category_list)){ foreach($category_list as $list){?>
					<tr>
						<td><?php echo $j++; ?></td>
						<td><?php echo $list->category_name; ?></td>
            <td><img src="<?php echo base_url().'assets/backend/images/category/'.$list->category_image; ?>" style="height: 30px;width: 40px"></td>
            
            <td class="text-center">
							<a href="" id="edit-cat" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
             				<a href="" class="" id="delete-cat" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
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
$(document).ready(function(){
    //  insert
  $(document).on('submit','#categoryForm',function(e){
    e.preventDefault();
    var action=$('#action','#categoryForm').val();
    var cat_name=$('#category_name','#categoryForm')
    if (cat_name=='') {
      alert('Choose category name !!');
    }
    else{
      $.ajax({
          url:'<?php echo base_url("save-category") ?>',
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
    }
  })

  //edit 
    $(document).on('click','#edit-cat',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      var img_url='<?php echo base_url("assets/backend/images/category/") ?>';
      $.ajax({
        url:'<?php echo base_url('edit-cat') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#parent_id','#categoryForm').val(data.parent_id);
          $('#parent_id').trigger("chosen:updated");
          $('#category_name','#categoryForm').val(data.category_name);

          $('#image','#categoryForm').val(data.category_image);
          $('#image').html('<img src="'+img_url+data.category_image+'" style="height:40px;width:40px"/>');
          $('#old_image','#categoryForm').val(data.category_image);
          $('#action','#categoryForm').val('update');
          $('#action_id','#categoryForm').val(id);
          $('#submit','#categoryForm').val('Update');
        }
      })
    })
    //delete 
    $(document).on('click','#delete-cat',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-cat') ?>',
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
})
</script>