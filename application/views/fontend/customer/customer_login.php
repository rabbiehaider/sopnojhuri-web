<div id="content">
    <div id="WEB_DATA">
        <section class="auth-section section-padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-sm-5">
                        <div class="form-content">
                            <p class="auth-title"> Customer Login </p>
                            <form @submit.prevent="checkLogin">
                                <div class="form-group mb-3">
                                    <label for="mobile">Phone Number </label>
                                    <input type="number" id="mobile" class="form-control" v-model="customer.phone" placeholder="Type your phone number">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" id="password" class="form-control " v-model="customer.password" placeholder="Type your password">
                                </div>
                                <a href="forgot-password.html" class="forget-link"><i class="fa-solid fa-unlock"></i> Forgor Password?</a>
                                <div class="form-group mb-3">
                                    <button type="submit" class="submit-btn"> Login </button>
                                </div>
                            </form>
                            <div class="register-now no-account">
                                <p> If you don't have an account? </p>
                                <a href="<?= base_url('customer/register') ?>"><i data-feather="edit-3"></i> Register Now </a>
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
                    phone: '',
                    password: ''
                }
            }
        },
        methods: {
            checkLogin() {
                axios.post('/customer_signin', {
                    customer: this.customer
                }).then(res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        window.location = '/customer/account';
                    } else {
                        toastr.error(r.message);
                    }
                })
            }
        }
    })
</script>