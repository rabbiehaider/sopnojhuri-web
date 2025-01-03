<style type="text/css">
	.profile{
		padding: 20px;
		background: #ddd;
		border: 1px solid #f1f1f1;
		/*min-height: 200px;*/
	}
	#update-user{
		padding: 20px;
		background: #ddd;
		border: 1px solid #f1f1f1;
	}
	#change-pass{
		padding: 20px;
		background: #ddd;
		border: 1px solid #f1f1f1;
	}
</style>
<div class="container">
	<div class="row">
		<div class="col-md-6">

			<div class="text-success"><?php echo $this->session->flashdata('message');?></div>
			<div class="profile">
				<div class="row">
					<div class="col-md-6">
						<strong>Name</strong> : <?php echo $profile_info->full_name; ?><br><br>
						<strong>E-mail</strong> : <?php echo $profile_info->email; ?><br><br>
						<strong>Phone</strong> : <?php echo $profile_info->phone; ?><br><br>
						<strong>Address</strong> : <?php echo $profile_info->address; ?><br><br>
						<strong>Designation</strong> : <?php echo $profile_info->designation; ?><br><br>
						<a href="#update-user" class="btn btn-info" data-toggle="collapse">Edit</a>
						<a href="#change-pass" id="cpass" class="btn btn-success" data-toggle="collapse">Change Password</a>
					</div>
					<div class="col-md-6">
						<div class="img">
							<img src="<?php echo base_url().'assets/backend/images/administator/'.$profile_info->image ?>" class="img-responsive" style="">
						</div>
					</div>
			    </div>
			</div>

				
		</div>
		<div class="col-md-4">
			<div id="update-user" class="collapse uform">
						<h4 style="padding-bottom: 20px;" class="text-center text-success">Update Profile </h4>
							<div id="update"></div>
						<form id="userproform">
						<div class="form-group">
							
							<input type="text" name="full_name"  id="full_name" class="form-control" value="<?php echo $profile_info->full_name ?>">
						</div>
						<div class="form-group">
							<input type="text" name="email" id="email" class="form-control" value="<?php echo $profile_info->email ?>">
						</div>
						
						<div class="form-group">
							<input type="text" name="phone" id="phone"  class="form-control" placeholder="Phone" value="<?php echo $profile_info->phone ?>">
							
						</div>

						<div class="form-group">
							<input type="text" name="designation" id="designation" class="form-control" value="<?php echo $profile_info->designation ?>">
						</div>
						<div class="form-group">
							<input type="text" name="address" id="address" class="form-control" value="<?php echo $profile_info->address ?>">
						</div>
						<div class="form-group">
							<input type="file" name="image">
							<input type="hidden" name="old_image" id="old_image" value="<?php echo $profile_info->image ?>">
						</div>
						<input type="hidden" name="action" id="action" value="update">
						<input type="hidden" name="action_id" id="action_id" value="<?php echo $profile_info->id ?>">
						<input type="submit" class="btn btn-info" name="submit" value="Update">
					</form>
				</div>
				<div id="change-pass" class="cpass collapse">
							<h4 style="padding-bottom: 20px;" class="text-center text-success">Changes Password </h4>
							<div class="text-danger" id="output"></div>
						<form id="userchangpass">
				
						      
						      	<div class="form-group">
						          <input type="password" name="old_password" id="old_password" class="form-control" placeholder="Old Password" required="1">
						          <input type="hidden" name="id" value="">
						        </div>
						        <div class="form-group">
						          
						          <input type="password" name="new_password" id="new_password" class="form-control" placeholder="New Password" required="1">
						        </div>
						        <div class="form-group">
						         
						          <input type="password" name="retype_pass" id="retype_pass" class="form-control" placeholder=" Re-type password" required="1">
						          <input type="hidden" name="action" id="action" value="updatepass">
						          <input type="hidden" name="id" id="id" value="<?php echo $profile_info->id;?>">
						        </div>
						        <input type="submit" name="btn" class="btn btn-info" value="Update">
						      
						    </form> 
					</div>
		</div>
	</div>
</div>