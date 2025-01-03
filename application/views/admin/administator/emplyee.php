<div class="container">
	<div class="row">
		<div class="well" style="min-height: 500px">
			<div class="col-md-10">
				<form class="form-horizontal" id="emplyeeForm">
					<div id="output" class="text-success text-center"></div>
					<div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>
					<?php 
						$code='E';
					    $Id = $code.'00001';
				        $lastCode = $this->db->query("select id from tbl_emplyee order by id desc limit 1");
				       
				        if (!empty($lastCode)) {
				        	 $lastCode = $lastCode->row()->id + 1;
				        $zeros = array('0', '00', '000', '0000');
				        $Id = "$code" . (strlen($lastCode) > count($zeros) ? $lastCode : $zeros[count($zeros) - strlen($lastCode)] . $lastCode);
				        }

					 ?>
					<div class="col-md-6">
		                <div>
		                    <label for="emp_name" class="control-label col-lg-4">Employee Id</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="emp_id" id="emp_id" class="form-control" value="<?php echo $Id ?>" style="margin-bottom: 5px" readonly>
	                        </div>
		                </div>
						<div>
		                    <label for="emp_name" class="control-label col-lg-4">Employee Name</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="emp_name" id="emp_name" class="form-control" placeholder="Name" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                <div>
		                    <label for="emp_name" class="control-label col-lg-4">Phone</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="emp_phone" id="emp_phone" class="form-control" placeholder="Phone" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                <div>
		                    <label for="emp_email" class="control-label col-lg-4">E-mail</label>
		                    <div class="col-lg-8">
	                        	<input type="email" name="emp_email" id="emp_email" class="form-control" placeholder="E-mail" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                
		                <div>
		                    <label for="designation" class="control-label col-lg-4">Designation</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="designation" id="designation" class="form-control" placeholder="Designation" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                 <div>
		                    <label for="gender" class="control-label col-lg-4">Gender</label>
		                    <div class="col-lg-8">
	                        	<select class="form-control select-box" id="gender" name="gender">
	                        		<option>Select Gender</option>
	                        		<option value="1">Male</option>
	                        		<option value="2">Female</option>
	                        	</select>
	                        </div>
		                </div>
		        
					</div>

					<div class="col-md-6">
						<div>
		                    <label for="date_of_birth" class="control-label col-lg-4">Date of Birth</label>
		                    <div class="col-lg-8">
	                        	<input type="date" name="date_of_birth" id="date_of_birth" class="form-control" placeholder="Phone" style="margin-bottom: 5px">
	                        </div>
		                </div>
						
						
						<div>
		                    <label for="father_name" class="control-label col-lg-4">Father's Name</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="father_name" id="father_name" class="form-control" placeholder="Father name" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                <div>
		                    <label for="mother_name" class="control-label col-lg-4">Mother's Name</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="mother_name" id="mother_name" class="form-control" placeholder="Mother name" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                <div>
		                    <label for="father_name" class="control-label col-lg-4">Present Address</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="present_address" id="present_address" class="form-control" placeholder="Present address" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                
		                <div>
		                    <label for="father_name" class="control-label col-lg-4">Permanent Address</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="permanent_address" id="permanent_address" class="form-control" placeholder="Permanent address" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                
		                
		                
					</div>
					<div class="row">
						<div class="col-md-6">
						<div>
		                    <label for="father_name" class="control-label col-lg-4">Join Date</label>
		                    <div class="col-lg-8">
	                        	<input type="date" name="emp_entry_date" id="emp_entry_date" class="form-control"style="margin-bottom: 5px">
	                        </div>
		                </div>
						<div>
		                    <label for="father_name" class="control-label col-lg-4">Salary Range</label>
		                    <div class="col-lg-8">
	                        	<input type="text" name="salary_range" id="salary_range" class="form-control" placeholder="Salary range" style="margin-bottom: 5px">
	                        </div>
		                </div>
		                <div>
		                	 <label for="image" class="control-label col-lg-4">Image</label>

		                	 <div class="col-lg-6">

		                	 	<input type="file" name="picture">

		                	 </div>
		                	 <div class="col-lg-2" id="image"></div>
		                </div>
		               
		                
					</div>
					<div class="col-md-12">
						
						
		                <div>
		                    <label for="emp_name" class="control-label col-lg-8"></label>
		                    <div class="col-lg-4">
		                    	<input type="hidden" name="action" id="action" value="create">
		                    	<input type="hidden" name="action_id" id="action_id">
		                    	<input type="hidden" name="old_image" id="old_image">
	                        	<input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
	                        </div>
		                </div>
		                
					</div>
					</div>
					

				</form>
			</div>

			<div class="row">
				<div class="col-md-10">
					<table class="table table-bordered" id="dataTable">
						<div id="delete" class="text-success"></div>
						<thead>
							<th>Serial</th>
							<th>Name</th>
							<th>Phone</th>
							<th>E-mail</th>
							<th>Designation</th>
							<th>Address</th>
							<th>Action</th>
						</thead>
						<tbody>
							<?php 
								$j=1;
							if(!empty($emp_list)){ foreach($emp_list as $list){?>
							<tr>
								<td><?php echo $j++; ?></td>
								<td><?php echo $list->emp_name; ?></td>
								<td><?php echo $list->emp_phone; ?></td>
								<td><?php echo $list->emp_email; ?></td>
								<td><?php echo $list->designation; ?></td>
								<td><?php echo $list->present_address; ?></td>
								<td>
									<a href="" id="edit-emp" data-id="<?php echo $list->id ?>" class=""><i class="fa fa-pencil-square-o text-success" aria-hidden="true"></i></a>
	                 				<a href="" class="" id="delete-emp" data-id="<?php echo $list->id ?>"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a>
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
	$(document).on('submit','#emplyeeForm',function(e){
 
        e.preventDefault();
        var action=$('#action','#emplyeeForm').val();
        var emp_id=$('#emp_id','#emplyeeForm').val(); 
        var emp_name=$('#emp_name','#emplyeeForm').val(); 
        var emp_email=$('#emp_email','#emplyeeForm').val(); 
        var gender=$('#gender','#emplyeeForm').val(); 
        var emp_phone=$('#emp_phone','#emplyeeForm').val(); 
        var father_name=$('#father_name','#emplyeeForm').val(); 
        var mother_name=$('#mother_name','#emplyeeForm').val(); 
        var present_address=$('#present_address','#emplyeeForm').val(); 
        var permanent_address=$('#permanent_address','#emplyeeForm').val(); 
        var emp_entry_date=$('#emp_entry_date','#emplyeeForm').val(); 
        var salary_range=$('#salary_range','#emplyeeForm').val(); 
        var designation=$('#designation','#emplyeeForm').val(); 
        var date_of_birth=$('#date_of_birth','#emplyeeForm').val(); 
        var emp_entry_date=$('#emp_entry_date','#emplyeeForm').val(); 
        var salary_range=$('#salary_range','#emplyeeForm').val(); 
        if(emp_name ==''){
          alert('Emplyee name is not empty !!');
        }
        else if(emp_phone ==''){
          alert('Emplyee phone is not empty !!');
        }
       
        else if(emp_email ==''){
          alert('Emplyee email is not empty !!');
        }

        else if(designation ==''){
          alert('Emplyee designation is not empty !!');
        }
        else if(gender ==''){
          alert('Gender is not empty !!');
        }
        else if(date_of_birth ==''){
          alert('Birth day is not empty !!');
        }
        else if(father_name ==''){
          alert('Father name is not empty !!');
        }
        else if(mother_name ==''){
          alert('Mother name is not empty !!');
        }
        else if(present_address ==''){
          alert('Present address is not empty !!');
        }
        else if(permanent_address ==''){
          alert('Permanent address email is not empty !!');
        }
        else if(emp_entry_date==''){
          alert('Join date is not empty !!');
        }
        else if(salary_range==''){
          alert('Salary is not empty !!');
        }
        else{
          $.ajax({
              url:'<?php echo base_url("save-emp") ?>',
              method:'post',
              data:new FormData(this),
              contentType:false,
              processData:false,
              success: function(data){
                 if (data.trim()=='success') {
                  alert('Save successfully');
                  //$('#output').html('Save successfully');
                  location.reload();
                 }
                 else if(data.trim()=='update'){
                  alert('Update successfully');
                  //$('#output').html('Update successfully');
                  location.reload();
                 }

                 else{
                  $('#error').html(data);
                 }
                 

              }
          });
        }
      })
  //edit emplyee
    $(document).on('click','#edit-emp',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      var img_url='<?php echo base_url("assets/backend/images/emplyee_image/") ?>';
      $.ajax({
        url:'<?php echo base_url('edit-emp') ?>',
        method:'post',
        data:{id:id},
        dataType:'json',
        success: function(data){
          $('#emp_id','#emplyeeForm').val(data.emp_id);
          $('#emp_name','#emplyeeForm').val(data.emp_name);
          $('#emp_phone','#emplyeeForm').val(data.emp_phone);
          $('#emp_email','#emplyeeForm').val(data.emp_email);
          $('#designation','#emplyeeForm').val(data.designation);
          $('#salary_range','#emplyeeForm').val(data.salary_range);
          $('#present_address','#emplyeeForm').val(data.present_address);
          $('#permanent_address','#emplyeeForm').val(data.permanent_address);
          $('#father_name','#emplyeeForm').val(data.father_name);
          $('#mother_name','#emplyeeForm').val(data.mother_name);
          $('#gender','#emplyeeForm').val(data.gender);
          $('#gender').trigger("chosen:updated");
          $('#date_of_birth','#emplyeeForm').val(data.date_of_birth);
          $('#image','#emplyeeForm').val(data.image);
          $('#image').html('<img src="'+img_url+data.image+'" style="height:40px;width:40px"/>');
          $('#emp_entry_date','#emplyeeForm').val(data.emp_entry_date);

          $('#action','#emplyeeForm').val('Update');
          $('#action_id','#emplyeeForm').val(id);
          $('#old_image','#emplyeeForm').val(data.image);
          $('#submit','#emplyeeForm').val('Update');
        }
      })
    })
    //delete emplyee
    $(document).on('click','#delete-emp',function(e){
      e.preventDefault();
      var id=$(this).attr('data-id');
      if (confirm('Are you sure to delete this ?')) {
        $.ajax({
          url:'<?php echo base_url('delete-emplyee') ?>',
          method:'post',
          data:{id:id},
          success: function(data){
          	alert('delete successfully');
          	location.reload();
            // if (data.trim()=='delete') {
            // 	alert("deleted successfully !!");
            // 	location.reload();
            // }
          }
        })
      }
    })

</script>

