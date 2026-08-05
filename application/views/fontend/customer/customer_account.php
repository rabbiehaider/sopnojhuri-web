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
                                    <li><a href="<?= base_url('customer/account') ?>" class="active"><i data-feather="user"></i> My Account</a></li>
                                    <li><a href="<?= base_url('customer/orders') ?>" class=""><i data-feather="shopping-cart"></i> My Orders</a></li>
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class=""><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class=""><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content">
                            <h5 class="account-title">My Account</h5>
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>{{ customerName }}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone</td>
                                        <td>{{ customerMobile }}</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>{{ customerEmail }}</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>{{ customerAddress }}</td>
                                    </tr>
                                    <tr>
                                        <td>Disctrict</td>
                                        <td>{{ districtName }}</td>
                                    </tr>
                                    <tr>
                                        <td>Area</td>
                                        <td>{{ thanaName }}</td>
                                    </tr>
                                    <tr>
                                        <td>Image</td>
                                        <td><img :src="customerImage" alt="" class="backend_img"></td>
                                    </tr>
                                </tbody>
                            </table>
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
                customerType: <?php echo json_encode($this->session->userdata("customer_type")); ?>,
                customerMobile: <?php echo json_encode($this->session->userdata("customer_mobile")); ?>,
                customerEmail: <?php echo json_encode($this->session->userdata("customer_email")); ?>,
                customerAddress: <?php echo json_encode($this->session->userdata("customer_address")); ?>,
                districtId: <?php echo json_encode($this->session->userdata("district_id")); ?>,
                districtName: <?php echo json_encode($this->session->userdata("district_name")); ?>,
                thanaId: <?php echo json_encode($this->session->userdata("thana_id")); ?>,
                thanaName: <?php echo json_encode($this->session->userdata("thana_name")); ?>,
                customerImage: '',
                imageFile: <?php echo json_encode($this->session->userdata("customer_image")); ?>,
                product_slug: '',
            }
        },
        filters: {
            pDecimal(value) {
                return value == null || value == '' ? '0' : parseFloat(value).toFixed(0);
            },
            decimal(value) {
                return value == null || value == '' ? '0.00' : parseFloat(value).toFixed(2);
            }
        },
        async created() {
            this.customerImage = this.imageFile == '' || this.imageFile == null ? '/uploads/no_user.png' : this.imageFile;
            if (this.product_slug != '') {
                await this.getProducts();
            }
        },
        methods: {
            async getProducts() {
                await axios.post('/get_product_details', {
                    productSlug: this.product_slug
                }).then(async res => {
                    let product = res.data;
                    let shownProduct = product.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        pro.size_image = this.img_url + pro.Product_SizeImage;
                        return pro;
                    });

                    this.selectedProduct = shownProduct[0];
                })
            }
        }
    })
</script>