<div id="content">
    <div id="WEB_DATA">
        <section class="auth-section section-padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-sm-5">
                        <div class="form-content">
                            <p class="auth-title"> Customer Registration </p>
                            <form @submit.prevent="saveCustomer">
                                <div class="form-group mb-3">
                                    <label for="customer_name">Your Name </label>
                                    <input type="text" id="customer_name" class="form-control" v-model="customer.name" required placeholder="Type your name">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="customer_mobile">Your Phone Number </label>
                                    <input type="number" id="customer_mobile" class="form-control" v-model="customer.phone" required placeholder="Type your phone number">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="customer_email">Your Email (Optional)</label>
                                    <input type="email" id="customer_email" class="form-control" v-model="customer.email" placeholder="Type your email">
                                </div>
                                <!-- col-end -->
                                <div class="form-group mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" id="password" class="form-control" v-model="customer.password" required placeholder="Type your password">
                                </div>
                                <!-- col-end -->
                                <div class="form-group mb-3">
                                    <button type="submit" class="submit-btn"> Registration </button>
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
</div>

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                customer: {
                    name: '',
                    phone: '',
                    email: '',
                    password: ''
                },
                regMobile: /^01[13-9][\d]{8}$/,
            }
        },
        methods: {
            saveCustomer() {
                if (this.customer.name == '') {
                    toastr.error('Please enter your name');
                    return;
                }
                if (this.customer.phone == '') {
                    toastr.error('Enter your phone number');
                    return;
                }
                if (!this.validateMobile(this.customer.phone)) {
                    toastr.error('Please enter a valid phone number!');
                    return;
                }

                axios.post('/customer/create', {
                    customer: this.customer
                }).then(async res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        this.clearregisterForm();
                        await new Promise(r => setTimeout(r, 1000));
                        window.location = '/customer/login'
                    } else {
                        toastr.error(r.message);
                    }
                })
            },
            clearregisterForm() {
                this.customer = {
                    name: '',
                    phone: '',
                    email: '',
                    password: ''
                }
            },
            validateMobile(mobile) {
                if (mobile == null || mobile == '') return true;
                return this.regMobile.test(mobile);
            }
        }
    })
</script>