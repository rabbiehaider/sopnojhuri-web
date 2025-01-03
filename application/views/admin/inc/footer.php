</section>
      
    </section> 
    <!--main content end-->
  </section>
  <!-- container section start -->

  <!-- javascripts -->

  <script src="<?php echo base_url().'assets/backend/' ?>js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="<?php echo base_url().'assets/backend/' ?>js/jquery.scrollTo.min.js"></script>
  <script src="<?php echo base_url().'assets/backend/' ?>js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="<?php echo base_url().'assets/backend/' ?>js/sweetalert.js"></script>
    <!--custome script for all page-->
    <script src="<?php echo base_url().'assets/backend/' ?>js/scripts.js"></script>
    <script src="<?php echo base_url().'assets/backend/' ?>js/datatable.js"></script>
    <script src="<?php echo base_url().'assets/backend/' ?>js/maincustome.js"></script>
    <script src="<?php echo base_url().'assets/backend/' ?>js/chosen.jquery.min.js"></script>
    <script src="<?php echo base_url().'assets/backend/' ?>js/jquery-ui.min.js"></script>
    

    <script>
$(document).ready(function(){
  $('#dataTable').DataTable();
  $(".select-box").chosen();
//add and update emplyee

});
  
   //admin profile update

   $(document).on('submit','#userproform',function(e){
      e.preventDefault();
      $.ajax({
              url:"<?php echo base_url().'update-user';?>",
              method:"POST",
              data:new FormData(this),
              contentType:false,
              processData:false,
              success:function(data){
                  
                  if (data.trim()=='updated') {
                    // $('#update').html(data);
                    $('#userproform')[0].reset();
                    window.location.reload();
                  }else{
                    $('#update').html(data);
                  }
                  
              }
          });
      })
   //admin password change
   $(document).on('submit','#userchangpass',function(e){
      e.preventDefault();
      var action = $('#action','#userchangpass').val();
      var id = $('#id','#userchangpass').val();
      var old_password = $('#old_password','#userchangpass').val();
      var new_password = $('#new_password','#userchangpass').val();
      var retype_pass = $('#retype_pass','#userchangpass').val();
      
        $.ajax({
              url:"<?php echo base_url().'change-pass';?>",
              method:"POST",
              data:new FormData(this),
              contentType:false,
              processData:false,
              success:function(data){
                  
                  if (data.trim()=='Successfully') {
                    $('#output').html(data);
                    $('#userchangpass')[0].reset();
                    window.location.reload();
                  }else{
                    $('#output').html(data);
                  }
                  
              }
             });
      
     });

</script>
</body>

</html>