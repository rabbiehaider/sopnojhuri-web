<div class="container">
  <div class="row">
    <div class="well" style="min-height: 500px">
      <div class="col-md-10">
        <form class="form-horizontal" id="createadministatorForm" enctype="multipart/form-data">
          <div id="output" class="text-success text-center"></div>
          <div style="padding: 10px 0px" id="error" class="text-danger text-center"></div>

          <div class="col-md-6">
                    
                     <div>
                        <label for="full_name" class="control-label col-lg-4">Full Name</label>
                        <div class="col-lg-8">
                            <input type="text" name="full_name" id="full_name" class="form-control" placeholder="Administator Full Name" style="margin-bottom: 5px">
                          </div>
                    </div>
                    <div>
                        <label for="email" class="control-label col-lg-4">E-mail</label>
                        <div class="col-lg-8">
                            <input type="email" name="email" id="email" class="form-control" placeholder="E-mail" style="margin-bottom: 5px">
                          </div>
                    </div>
                    <div>
                        <label for="phone" class="control-label col-lg-4">Phone</label>
                        <div class="col-lg-8">
                            <input type="text" name="phone" id="phone" class="form-control" placeholder="Phone" style="margin-bottom: 5px">
                          </div>
                    </div>
                    
                    
                    <div>
                        <label for="designation" class="control-label col-lg-4">Designation</label>
                        <div class="col-lg-8">
                            <input type="text" name="designation" id="designation" class="form-control" placeholder="Designation" style="margin-bottom: 5px">
                          </div>
                    </div>
                    <div>
                        <label for="image" class="control-label col-lg-4">Image</label>
                        <div class="col-lg-8">
                          <input type="file" name="picture">    
                        </div>
                    </div>
          </div>

          <div class="col-md-6">
                    <div>
                        <label for="user_name" class="control-label col-lg-4">User Name</label>
                        <div class="col-lg-8">
                            <input type="text" name="user_name" id="user_name" class="form-control" placeholder="User name" style="margin-bottom: 5px">
                          </div>
                    </div>
                    <div>
                        <label for="password" class="control-label col-lg-4">Password</label>
                        <div class="col-lg-8">
                            <input type="password" name="password" id="password" class="form-control" placeholder="Password" style="margin-bottom: 5px">
                          </div>
                    </div>
                    <div>
                        <label for="password" class="control-label col-lg-4">Re-type Password</label>
                        <div class="col-lg-8">
                            <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="Re-type Password" style="margin-bottom: 5px" required>
                          </div>
                    </div>
                    <div>
                        <label for="address" class="control-label col-lg-4">Address</label>
                        <div class="col-lg-8">
                            <input type="text" name="address" id="address" class="form-control" placeholder="Present address" style="margin-bottom: 5px">
                          </div>
                    </div>
                     <div>
                        <label for="type" class="control-label col-lg-4">Choose Type</label>
                        <div class="col-lg-8">
                            <select class="form-control select-box" id="type" name="type">
                              
                              <option value="1">Genaral Admin</option>
                              <option value="2">Supper Admin</option>
                            </select>
                          </div>
                    </div> 
          </div>

           
          <div class="col-md-12">

                    <div>
                        <label for="emp_name" class="control-label col-lg-8"></label>
                        <div class="col-lg-4">
                          <input type="hidden" name="action" id="action" value="create">
                            <input type="submit" name="submit" id="submit" value="Save" class="btn btn-info ">
                          </div>
                    </div>
                    
          </div>

          

        </form>
        <hr>
      </div>

      <div id="showlist"></div>
    </div>
  </div>
</div>
<script>
    show_list();
  $(document).on('submit','#createadministatorForm',function(e){
    e.preventDefault();
    var action=$('#action','#createadministatorForm').val();
    var full_name=$('#full_name','#createadministatorForm').val();
    var email=$('#email','#createadministatorForm').val();
    var phone=$('#phone','#createadministatorForm').val();
    var user_name=$('#user_name','#createadministatorForm').val();
    var password=$('#password','#createadministatorForm').val();

    if (full_name=='') {
      alert('Please fill up full name!!');
    }
    else if(user_name ==''){
      alert('Please fill up user name !!');
    }
    else if(email==''){
      alert('Please fill up email !!');
    }
    else if(password ==''){
      alert('Please fill up password !!');
    }
    else if(phone==''){
      alert('Please fill up phone !!');
    }
    else {
      $.ajax({
        url:'<?php echo base_url("save-admin") ?>',
        method:'post',
        data:new FormData(this),
        contentType:false,
        processData:false,
        success: function(data){
          if (data.trim()=='created') {
            $('#output').html(data);
            $('#createadministatorForm')[0].reset();
            location.reload();
             show_list();
          }
          else{
            $('#error').html(data);
          }
        }
      })
    }

  })

  function show_list(){
    var action='showdata';
    $.ajax({
      url:'<?php echo base_url("show-info") ?>',
      method:'post',
      data:{action:action},
      success: function(data){
     
        $('#showlist').html(data);
      }
    })
  }

  // $(document).on('click','#view',function(e){
  //   e.preventDefault();
  //   var id=$(this).attr('data-id');
    
  // })
</script>
