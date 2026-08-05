<?php $this->load->view('admin/inc/header'); ?>
<?php
  if(isset($backend_content)){
    $this->load->view('admin/'.$backend_content);
  } 
?>     

<?php $this->load->view('admin/inc/footer'); ?>  
