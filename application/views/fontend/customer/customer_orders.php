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
                                    <li><a href="<?= base_url('customer/orders') ?>" class="active"><i data-feather="database"></i> My Order</a></li>
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class=""><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class=""><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content">
                            <h5 class="account-title">My Order</h5>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Sl</th>
                                            <th>Date</th>
                                            <th>Amount</th>
                                            <th>Discount</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

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
                img_url: "<?php echo $iurl; ?>",
                customerId: '<?php echo $this->session->userdata("customer_id"); ?>',
                customerName: '<?php echo $this->session->userdata("customer_name"); ?>',
                customerType: '<?php echo $this->session->userdata("customer_type"); ?>',
                customerMobile: '<?php echo $this->session->userdata("customer_mobile"); ?>',
                customerEmail: '<?php echo $this->session->userdata("customer_email"); ?>',
                customerAddress: '<?php echo $this->session->userdata("customer_address"); ?>',
                districtId: '<?php echo $this->session->userdata("district_id"); ?>',
                districtName: '<?php echo $this->session->userdata("district_name"); ?>',
                thanaId: '<?php echo $this->session->userdata("thana_id"); ?>',
                thanaName: '<?php echo $this->session->userdata("thana_name"); ?>',
                customerImage: '',
                imageFile: '<?php echo $this->session->userdata("customer_image"); ?>',
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
            this.customerImage = this.imageFile == '' ? '/uploads/no_user.png' : this.img_url + this.imageFile;
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