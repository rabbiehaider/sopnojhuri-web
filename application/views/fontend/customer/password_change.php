<div id="content">
    <div id="WEB_DATA">
        <section class="customer-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="customer-sidebar">
                            <div class="customer-auth">
                                <div class="customer-img">
                                    <img :src="customerImage" alt="">
                                </div>
                                <div class="customer-name">
                                    <p><small>Hello</small></p>
                                    <p>{{ customerName }}</p>
                                </div>
                            </div>
                            <div class="sidebar-menu">
                                <ul>
                                    <li><a href="<?= base_url('customer/account') ?>" class=""><i data-feather="user"></i> My Account</a></li>
                                    <li><a href="<?= base_url('customer/orders') ?>" class=""><i data-feather="shopping-cart"></i> My Orders</a></li>
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class=""><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class="active"><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content checkout-shipping">
                            <h5 class="account-title">Change Password</h5>
                            <form @submit.prevent="savePassword" class="row justify-content-center">
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <label for="old_password">Old Password *</label>
                                        <span data-feather="folder"></span>
                                        <input type="password" id="old_password" class="form-control " v-model="password.old_password" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <label for="new_password">New Password *</label>
                                        <span data-feather="lock"></span>
                                        <input type="password" id="new_password" class="form-control " v-model="password.new_password" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <label for="confirm_password">Confirmed Password *</label>
                                        <span data-feather="key"></span>
                                        <input type="password" id="confirm_password" class="form-control " v-model="password.confirm_password" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <button type="submit" class="submit-btn">Update</button>
                                    </div>
                                </div>
                                <!-- col-end -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                img_url: <?php echo json_encode($iurl); ?>,
                customerId: <?php echo json_encode($this->session->userdata("customer_id")); ?>,
                customerName: <?php echo json_encode($this->session->userdata("customer_name")); ?>,
                customerImage: '',
                imageFile: <?php echo json_encode($this->session->userdata("customer_image")); ?>,
                password: {
                    old_password: '',
                    new_password: '',
                    confirm_password: ''
                }
            }
        },
        created() {
            this.customerImage = this.imageFile == '' || this.imageFile == null ? '/uploads/no_user.png' : this.imageFile;
        },
        methods: {
            savePassword() {
                if (this.password.old_password == '') {
                    toastr.error('Enter your old password');
                    return;
                }
                if (this.password.new_password == '') {
                    toastr.error('Enter your new password');
                    return;
                }
                if (this.password.new_password.length < 6) {
                    toastr.error('New password must be at least 6 characters');
                    return;
                }
                if (this.password.new_password != this.password.confirm_password) {
                    toastr.error('New password and confirm password do not match');
                    return;
                }

                axios.post('/save_password_change', {
                    password: this.password
                }).then(res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        this.clearPasswordForm();
                        setTimeout(() => {
                            window.location = '/customer/account';
                        }, 1000);
                    } else {
                        toastr.error(r.message);
                    }
                })
            },
            clearPasswordForm() {
                this.password = {
                    old_password: '',
                    new_password: '',
                    confirm_password: ''
                }
            }
        }
    })
</script>