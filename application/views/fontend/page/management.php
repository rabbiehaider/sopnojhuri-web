<div class="management-area">
	<div class="container">
		<div class="row">
			<h2 style="padding-bottom: 20px;text-align: center;">Managements</h2>
			<?php if(!empty($emplyeelist)){ foreach($emplyeelist as $value){ ?>
			<div class="col-md-3 col-sm-4 wow fadeInUp">
				<div class="thumbnail">
					<img src="<?php echo base_url().'assets/backend/images/emplyee_image/'.$value->image ?>" class="img-responsive" style="height: 200px">
					<div class="caption">
						<h4 class="text-center"><?php echo $value->emp_name ?></h4>
						<h5 class="text-center"><?php echo $value->designation ?></h5>
					</div>
				</div>
			</div>
			<?php }} ?>
		</div>
	</div>
</div>