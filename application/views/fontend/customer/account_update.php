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
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class="active"><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class=""><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content checkout-shipping">
                            <h5 class="account-title">Profile Update</h5>
                            <form @submit.prevent="saveProfile" class="row" enctype="multipart/form-data">
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="name">Full Name *</label>
                                        <input type="text" id="name" class="form-control " v-model="profile.name" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="phone">Phone Number *</label>
                                        <input type="number" id="phone" class="form-control " v-model="profile.phone" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="email">Email Address</label>
                                        <input type="email" id="email" class="form-control " v-model="profile.email" placeholder="Type your email">
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="address">Address *</label>
                                        <input type="text" id="address" class="form-control " v-model="profile.address" required>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="district">District *</label>
                                        <select id="district" class="form-control" v-model="profile.district_id" @change="loadThanas" required>
                                            <option value="">Select...</option>
                                            <option v-for="district in districts" :key="district.District_SlNo" :value="district.District_SlNo">{{ district.District_Name }}</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-6">
                                    <div class="form-group mb-3">
                                        <label for="area">Area *</label>
                                        <select id="area" class="form-control" v-model="profile.thana_id" required>
                                            <option value="">Select...</option>
                                            <option v-for="thana in thanas" :key="thana.Thana_SlNo" :value="thana.Thana_SlNo">{{ thana.Thana_Name }}</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- col-end -->
                                <div class="col-sm-12">
                                    <div class="form-group mb-3">
                                        <label for="image">Image</label>
                                        <input type="file" id="image" class="form-control " @change="onImageChange" accept="image/*">
                                        <img :src="customerImage" class="rounded-circle m-1" width="50px" alt="">
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
                profile: {
                    name: <?php echo json_encode($this->session->userdata("customer_name")); ?>,
                    phone: <?php echo json_encode($this->session->userdata("customer_mobile")); ?>,
                    email: <?php echo json_encode($this->session->userdata("customer_email")); ?>,
                    address: <?php echo json_encode($this->session->userdata("customer_address")); ?>,
                    district_id: <?php echo json_encode($this->session->userdata("district_id")); ?>,
                    thana_id: <?php echo json_encode($this->session->userdata("thana_id")); ?>,
                },
                districts: [],
                thanas: [],
                selectedImage: null,
                regMobile: /^01[3-9]\d{8}$/,
            }
        },
        async created() {
            this.customerImage = this.imageFile == '' || this.imageFile == null ? '/uploads/no_user.png' : this.img_url + this.imageFile;
            await this.getDistricts();
            if (this.profile.district_id != '') {
                await this.loadThanas();
            }
        },
        methods: {
            async getDistricts() {
                await axios.get('/get_districts').then(res => {
                    this.districts = res.data;
                })
            },
            async loadThanas() {
                this.thanas = [];
                this.profile.thana_id = '';
                if (this.profile.district_id == '') return;
                await axios.post('/get_thanas', {
                    district_id: this.profile.district_id
                }).then(res => {
                    this.thanas = res.data;
                })
            },
            onImageChange(event) {
                this.selectedImage = event.target.files[0];
                if (this.selectedImage) {
                    this.customerImage = URL.createObjectURL(this.selectedImage);
                }
            },
            saveProfile() {
                if (this.profile.name == '') {
                    toastr.error('Please enter your name');
                    return;
                }
                if (this.profile.phone == '') {
                    toastr.error('Enter your phone number');
                    return;
                }
                if (!this.regMobile.test(this.profile.phone)) {
                    toastr.error('Please enter a valid phone number!');
                    return;
                }
                if (this.profile.email != '' && !this.isValidEmail(this.profile.email)) {
                    toastr.error('Email is not valid!');
                    return;
                }
                if (this.profile.address == '') {
                    toastr.error('Enter your address');
                    return;
                }
                if (this.profile.district_id == '') {
                    toastr.error('Select your district');
                    return;
                }
                if (this.profile.thana_id == '') {
                    toastr.error('Select your area');
                    return;
                }

                let formData = new FormData();
                formData.append('name', this.profile.name);
                formData.append('phone', this.profile.phone);
                formData.append('email', this.profile.email);
                formData.append('address', this.profile.address);
                formData.append('district_id', this.profile.district_id);
                formData.append('thana_id', this.profile.thana_id);
                if (this.selectedImage) {
                    formData.append('image', this.selectedImage);
                }

                axios.post('/save_profile_update', formData).then(res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        setTimeout(() => {
                            window.location = '/customer/account';
                        }, 1000);
                    } else {
                        toastr.error(r.message);
                    }
                })
            },
            isValidEmail(email) {
                return /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/.test(email);
            }
        }
    })
</script>