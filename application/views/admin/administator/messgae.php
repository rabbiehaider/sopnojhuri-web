<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="well">
				<form class="form-horizontal">
					
					<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2">Name</label>
	                      <div class="col-lg-10">
	                       <input type="text" name="" value="<?php echo $view_message->name ?>"  class="form-control" readonly>
	                      </div>
                	</div>
                	<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2">E-mail</label>
	                      <div class="col-lg-10">
	                       <input type="text" name="" value="<?php echo $view_message->email ?>"  class="form-control" readonly>
	                      </div>
                	</div>
                	<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2">Phone</label>
	                      <div class="col-lg-10">
	                       <input type="text" name="" value="<?php echo $view_message->phone ?>"  class="form-control" readonly>
	                      </div>
                	</div>
                	<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2">Subject</label>
	                      <div class="col-lg-10">
	                       <input type="text" name="" value="<?php echo $view_message->subject ?>"  class="form-control" readonly>
	                      </div>
                	</div>
                	<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2">Message</label>
	                      <div class="col-lg-10">
	           
	                       <textarea style="min-height: 80px !important" class="form-control" readonly><?php echo $view_message->message ?></textarea>
	                      </div>
                	</div>
                	<div class="form-group ">
	                      <label for="post_body" class="control-label col-lg-2"></label>
	                      <div class="col-lg-10">
	           
	                       <a href="<?php echo base_url('contact-us') ?>" class="btn btn-success">Ok</a>
	                      </div>
                	</div>
				</form>
			</div>
		</div>
	</div>
</div>