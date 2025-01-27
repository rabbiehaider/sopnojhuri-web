<?php $this->load->view('fontend/inc/header'); ?>
<?php $this->load->view('fontend/inc/menu'); ?>

<?php
if (isset($front_content)) {
  $this->load->view('fontend/' . $front_content, true);
}
?>
<?php $this->load->view('fontend/inc/footer'); ?>