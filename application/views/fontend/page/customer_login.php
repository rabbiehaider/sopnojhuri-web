<section class="ftco-section bg-light" id="loginForm">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 mb-5">
                <div class="wrapper">
                    <div class="row no-gutters">
                        <div class="col-md-6 d-flex align-items-stretch">
                            <div class="info-wrap bg-primary w-100">
                                <img style="height: 450px; width: 100%;" src="<?php echo base_url() . 'assets/fontend/images/register-bike.jpg'?>" alt="Customer Registration Image">                                
                            </div>
                        </div>
                        <div class="col-md-6 d-flex align-items-center" style="background-color: #fff;">
                            <div class="contact-wrap w-100 p-md-5 p-4">
                                <h3 class="mb-4">Customer Login Form</h3>
                                <form @submit.prevent="checkLogin" id="loginForm" class="loginForm">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-3">Username</label>                                                
                                                <div class="col-md-9">
                                                    <input type="text" class="form-control" v-model="customer.phone" id="phone" placeholder="Username / Phone" />
                                                </div>
                                            </div>
                                        </div>                                        
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-3">Password</label>                                                
                                                <div class="col-md-9">
                                                    <input type="password" class="form-control" v-model="customer.password" id="password" placeholder="Password" />
                                                </div>
                                            </div>
                                        </div>                                        
                                        <div class="col-md-12">
                                            <div class="form-group text-right">
                                                <input type="submit" value="Login" class="btn btn-primary" />
                                                <div class="submitting"></div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <h6 class="mb-4">Want to Register? <a href="<?php echo base_url().'customer-register'?>"> Register Now</a></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var app = new Vue({
        el: "#loginForm",
        data(){
            return {
                customer: {
                    phone: '',
                    password: ''
                }
            }
        },
        methods:{
            checkLogin() {               
                axios.post('/login_check', {customer: this.customer})
                .then(res => {
                    let r = res.data;
					if(r.success){
                        $.notify(r.message, "success");                        
                        window.location = '/my_account';
					} else {
						$.notify(r.message, "success");
					}
                })
            }
        }
    })
</script>