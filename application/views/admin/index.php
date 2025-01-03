<!DOCTYPE html>
<html>

<head>
  <title>login page</title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/backend/login/') ?>css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/backend/login/') ?>css/style.css">
</head>

<body>
  <?php $cominfo = $this->db->query("select * from tbl_company")->row(); ?>
  <div class="container">

    <div class="contant">
      <h2 class="headding"><?php echo $cominfo->Company_Name ?> Admin Login</h2>
      <div class="login">
        <div class="left-cont">
          <!-- <div class="overlay-div"> -->
          <div class="company-feature">
            <div class="com-image">
              <img src="<?php echo $img_url . 'uploads/company_profile_org/' . $cominfo->Company_Logo_org ?>" style="width: 100%;height: 125px; border-radius:10px;padding-top: 5px;">
            </div>

          </div>
          <!-- </div> -->
          <div class="company-info">
            <h4><?php echo $cominfo->Company_Name ?></h4>
            <div class="com-add">
              <div class="com-profile">
                <strong>Address</strong> : <?php echo $cominfo->Repot_Heading ?> <br>
                <!-- <strong>Phone</strong> : <?php echo $cominfo->Repot_Heading ?> <br>
                <strong>E-mail</strong> : <?php echo $cominfo->Repot_Heading ?> -->
              </div>
            </div>
          </div>
          <div class="develop_by"><strong style="font-size: 10px">Developed By: </strong><a href="https://linktechbd.com/" target="_blank">Link Up Technology Ltd.</a></div>
          <div class="corcel">
            <div class="round">
              <div class="inner-round">
                <div class="inner-logo"><!-- ERP --></div>
              </div>
            </div>
          </div>

        </div>
        <div class="right-cont">
          <div class="login-form">
            <div class="form">
              <h4>Sign In Form</h4>
              <div id="output" class="text-success"></div>
              <div style="padding-bottom: 15px;" id="error" class="text-danger"></div>
              <form id="loginForm">
                <div class="form-group">
                  <input type="text" name="user_name" id="user_name" class="form-control" placeholder="User Name">
                </div>
                <div class="form-group">
                  <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="hidden" name="action" id="action" value="login">
                  <input type="submit" name="submit" class="btn btn-info btn-block" value="Login">
                </div>
              </form>
            </div>
          </div>

        </div>
        <div class="clr"></div>
      </div>
    </div>

  </div>
  <script src="<?php echo base_url('assets/backend/login/') ?>js/jquery.min.js"></script>
  <script src="<?php echo base_url('assets/backend/login/') ?>js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function() {
      $(document).on('submit', '#loginForm', function(e) {

        e.preventDefault();
        var action = $('#action', '#loginForm').val();
        var base_url = "<?php echo base_url('login-form') ?>";

        $.ajax({
          url: base_url,
          method: 'post',
          data: new FormData(this),
          contentType: false,
          processData: false,
          success: function(data) {
            if (data.trim() == 'success') {
              window.location.href = '<?php echo base_url('dashboard') ?>';
            } else {
              $('#error').html(data);
            }

          }
        });
      })
    })
  </script>
</body>

</html>