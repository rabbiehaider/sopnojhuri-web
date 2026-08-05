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
                                    <li><a href="<?= base_url('customer/orders') ?>" class="active"><i data-feather="shopping-cart"></i> My Orders</a></li>
                                    <li><a href="<?= base_url('customer/account-edit') ?>" class=""><i data-feather="edit"></i> Profile Edit</a></li>
                                    <li><a href="<?= base_url('customer/change-password') ?>" class=""><i data-feather="lock"></i> Change Password</a></li>
                                    <li><a href="<?= base_url('customer/logout') ?>"><i data-feather="log-out"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="customer-content">
                            <h5 class="account-title">My Orders</h5>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">SL</th>
                                            <th style="text-align: center;">Invoice No</th>
                                            <th style="text-align: center;">Date</th>
                                            <th style="text-align: center;">Amount</th>
                                            <th style="text-align: center;">Status</th>
                                            <th style="text-align: center;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(sale, sl) in orders">
                                            <td style="text-align: center;">{{ sl + 1 }}</td>
                                            <td style="text-align: center;">{{ sale.SaleMaster_InvoiceNo }}</td>
                                            <td style="text-align: center;">{{ sale.SaleMaster_SaleDate }}</td>
                                            <td style="text-align: right;">৳ {{ sale.SaleMaster_TotalSaleAmount | decimal }}</td>
                                            <td style="text-align: center;"><button style="padding: 1px 5px; color: white; background-color: orange; border-radius: 5px;"><b>{{ sale.order_status }}</b></button></td>
                                            <td style="text-align: center;">
                                                <a href="" title="Order Invoice" v-bind:href="'/order-report/' + sale.SaleMaster_SlNo">
                                                    <button style="padding: 1px 5px; color: white; background-color: #167389; border-radius: 5px;"><i class="fa fa-file"></i> Invoice</button>
                                                </a>
                                            </td>
                                        </tr>
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
                orders: [],
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
            await this.getOrders();
        },
        methods: {
            async getOrders() {
                await axios.post('/get_corders', {
                    customerId: this.customerId
                }).then(async res => {
                    this.orders = res.data.orders;
                })
            }
        }
    })
</script>