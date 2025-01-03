<div class="container">
	<div class="row">
			<div class="text-success"><?php echo $this->session->flashdata('message'); ?></div>
		<div class="col-md-10">
			<table class="table table-bordered" id="dataTable">
				<thead>
					<th>Serial</th>
					<th>Name</th>
					<th>Subject</th>
					<th>Message</th>
					<th>Action</th>
				</thead>
				<tbody>
					<?php 
						$j=1;
						if(!empty($contact_user)) { foreach($contact_user as $value){?>
					<tr>
						<td width="5%"><?php echo $j++; ?></td>
						<td width="15%"><?php echo $value->name ?></td>
						<td width="20%"><?php echo $value->subject ?></td>
						<td width="45%"><?php echo substr($value->message, 0,100) ?></td>
						<td width="15%">
							<a href="<?php echo base_url().'view-message/'.$value->id ?>" class="btn btn-sm btn-info">View</a>
							<a href="<?php echo base_url().'delete-message/'.$value->id ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete this ?')">Delete</a>

						</td>
					</tr>
				<?php }} ?>
				</tbody>
			</table>
		</div>
	</div>
</div>