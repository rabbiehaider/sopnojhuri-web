<section class="ftco-section bg-light" id="registerForm">
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
                        <div class="col-md-6 d-flex">
                            <div class="contact-wrap w-100 p-md-5 p-4">
                                <h3 class="mb-4">Customer Ragistration Form</h3>
                                <form @submit.prevent="saveCustomer" id="registerForm" class="registerForm">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-3">Name</label>                                                
                                                <div class="col-md-9">
                                                    <input type="text" class="form-control" v-model="customer.name" id="name" placeholder="Name" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-3">Email</label>                                                
                                                <div class="col-md-9">
                                                    <input type="email" class="form-control" v-model="customer.email" id="email" placeholder="Email" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-3">Phone</label>                                                
                                                <div class="col-md-9">
                                                    <input type="number" class="form-control" v-model="customer.phone" id="phone" placeholder="Phone" />
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
                                            <div class="form-group row">
                                                <label class="col-md-3">C. Password</label>                                                
                                                <div class="col-md-9">
                                                    <input type="password" class="form-control" v-model="customer.cpassword" id="cpassword" placeholder="Confirm Password" />
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="form-group text-right">
                                                <input type="submit" value="Submit Registration" class="btn btn-primary" />
                                                <div class="submitting"></div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <h6 class="mb-4">Already Register? <a href="<?php echo base_url().'customer-login'?>"> Login Now</a></h6>
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
        el: "#registerForm",
        data(){
            return {
                customer: {
                    id: 0,
                    name: '',
                    email: '',
                    phone: '',
                    password: '',
                    cpassword: '',
                },
                regMobile: /^01[13-9][\d]{8}$/,
            }
        },
        methods:{
            saveCustomer() {
                if(this.customer.name == '') {
                    $.notify('Please Enter Your Name', "error");
                    return;
                }
                if(this.customer.phone == '') {
                    $.notify('Enter Your phone number', "error");
                    return;
                }
                if(!this.validateMobile(this.customer.phone)) {
                    $.notify('Please Enter a valid phone number!', "error");
                    return;
                }
                axios.post('/save_customer', {customer: this.customer})
                .then(res => {
                    let r = res.data;
                    $.notify(r.message, "success");
                    this.clearregisterForm();
                })
            },
            clearregisterForm() {
                this.customer = {
                    id: 0,
                    name: '',
                    email: '',
                    phone: '',
                    subject: '',
                    message: '',
                }
            },
            validateMobile(mobile) {
                if(mobile == null || mobile == '') return true;
                return this.regMobile.test(mobile);
            }
        },
    })
</script>