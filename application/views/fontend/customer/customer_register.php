<div id="content">
    <section class="auth-section section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-5">
                    <div class="form-content">
                        <p class="auth-title"> Customer Registration </p>
                        <form action="https://www.ozybd.com/customer/signin" method="POST" data-parsley-validate="">
                            <input type="hidden" name="_token" value="G3MYR7oERhJ74qLw7kn7hJhWCWaDitFIkh5PZtQB">
                            <div class="form-group mb-3">
                                <label for="customer_name">Your Name </label>
                                <input type="text" id="customer_name" class="form-control " name="customer_name" value="" required placeholder="Type your name">
                            </div>
                            <div class="form-group mb-3">
                                <label for="customer_mobile">Phone Number </label>
                                <input type="number" id="customer_mobile" class="form-control " name="customer_mobile" value="" required placeholder="Type your phone number">
                            </div>
                            <!-- col-end -->
                            <div class="form-group mb-3">
                                <label for="password">Password</label>
                                <input type="password" id="password" class="form-control " name="password" value="" required placeholder="Type your password">
                            </div>
                            <!-- col-end -->
                            <div class="form-group mb-3">
                                <button class="submit-btn"> Registration </button>
                            </div>
                            <!-- col-end -->
                        </form>
                        <div class="register-now no-account">
                            <p> <i class="fa-solid fa-user"></i> If already registered? </p>
                            <a href="<?= base_url('customer/login') ?>"><i class="fa-solid fa-key"></i> Login </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>