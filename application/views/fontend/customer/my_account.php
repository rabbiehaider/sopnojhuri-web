<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>My Account <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">My Account</h1>
            </div>
        </div>
    </div>
</section>
<div class="axil-dashboard-area axil-section-gap" id="CustomerForm">
    <div class="container">
        <div class="axil-dashboard-warp">
            <div class="row">
                <div class="col-xl-3 col-md-4">
                    <aside class="axil-dashboard-aside">
                        <nav class="axil-dashboard-nav">
                            <div class="nav nav-tabs" role="tablist">
                                <a class="nav-item nav-link active" data-toggle="pill" href="#nav-dashboard" role="tab" aria-selected="true"><i class="fa fa-th-large"></i> Dashboard</a>
                                <a class="nav-item nav-link" data-toggle="pill" href="#nav-orders" role="tab" aria-selected="false"><i class="fa fa-shopping-basket"></i> Orders</a>
                                <!-- <a class="nav-item nav-link" data-toggle="pill" href="#nav-address" role="tab" aria-selected="false"><i class="fa fa-home"></i> Addresses</a> -->
                                <a class="nav-item nav-link" data-toggle="pill" href="#nav-account" role="tab" aria-selected="false"><i class="fa fa-user"></i> Account Details</a>
                                <a class="nav-item nav-link" data-toggle="pill" href="#nav-password" role="tab" aria-selected="false"><i class="fa fa-key"></i> Change Password</a>
                                <a class="nav-item nav-link" href="<?php echo base_url('customer-logout'); ?>"><i class="fa fa-sign-out"></i> Logout</a>
                            </div>
                        </nav>
                    </aside>
                </div>
                <div class="col-xl-9 col-md-8">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="axil-dashboard-author">

                        </div>

                        <div class="tab-pane fade show active" id="nav-dashboard" role="tabpanel">
                            <div class="axil-dashboard-overview">
                                <div class="welcome-text">Hello <?php echo $this->session->userdata("name"); ?> (not <span><?php echo $this->session->userdata("name"); ?>?</span> <a href="<?php echo base_url('customer-logout'); ?>">Log Out</a>)</div>
                                <p>From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-orders" role="tabpanel">
                            <div class="axil-dashboard-order">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Order</th>
                                                <th scope="col">Date</th>
                                                <th scope="col">Status</th>
                                                <th scope="col">Total</th>
                                                <th scope="col">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php

                                            if (!empty($orders)) {
                                                foreach ($orders as $order) {
                                            ?>
                                                    <tr>
                                                        <th scope="row"><?= $order->invoice_no ?></th>
                                                        <td><?= $order->date ?></td>
                                                        <td><?= $order->order_status ?></td>
                                                        <td>৳ <?= $order->total_amount ?></td>
                                                        <td><a href="<?php echo base_url() . 'customer-invoice/' . $order->id ?>" target="_blank"> <i class="fa fa-file"></i> Invoice</a></td>
                                                    </tr>
                                            <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-downloads" role="tabpanel">
                            <div class="axil-dashboard-order">
                                <p>You don't have any download</p>
                            </div>
                        </div>
                        <!-- <div class="tab-pane fade" id="nav-address" role="tabpanel">
                            <div class="axil-dashboard-address">
                                <p class="notice-text">The following addresses will be used on the checkout page by default.</p>
                                <div class="row row--30">
                                    <div class="col-lg-6">
                                        <div class="address-info mb--40">
                                            <div class="addrss-header d-flex align-items-center justify-content-between">
                                                <h4 class="title mb-0">Shipping Address</h4>
                                                <a href="#" class="address-edit"><i class="fa fa-edit"></i></a>
                                            </div>
                                            <ul class="address-details">
                                                <li>Name: Annie Mario</li>
                                                <li>Email: annie@example.com</li>
                                                <li>Phone: 1234 567890</li>
                                                <li class="mt--30">7398 Smoke Ranch Road <br>
                                                    Las Vegas, Nevada 89128</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="address-info">
                                            <div class="addrss-header d-flex align-items-center justify-content-between">
                                                <h4 class="title mb-0">Billing Address</h4>
                                                <a href="#" class="address-edit"><i class="fa fa-edit"></i></a>
                                            </div>
                                            <ul class="address-details">
                                                <li>Name: <?php echo $this->session->userdata("name"); ?></li>
                                                <li>Email: annie@example.com</li>
                                                <li>Phone: 1234 567890</li>
                                                <li class="mt--30">7398 Smoke Ranch Road <br>
                                                    Las Vegas, Nevada 89128</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <div class="tab-pane fade" id="nav-account" role="tabpanel">
                            <div class="col-lg-12">
                                <div class="axil-dashboard-account">
                                    <form @submit.prevent="UpdateCustomer" id="detailsForm" class="detailsForm">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <h4>Account Information</h4><hr>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input type="text" class="form-control" v-model="customer.name" id="name" placeholder="Name" />
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" class="form-control" v-model="customer.email" id="email" placeholder="Email" />
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input type="text" class="form-control" v-model="customer.phone" id="phone" placeholder="Phone" />
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Shipping Address</label>
                                                    <input type="text" class="form-control" v-model="customer.shipping_address" id="shipping_address" placeholder="Shipping Address" />
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <label>Billing Address</label>
                                                    <input type="text" class="form-control" v-model="customer.billing_address" id="billing_address" placeholder="Billing Address" />
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group mb--0">
                                                    <input type="submit" value="Update Information" class="btn btn-primary" />
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-password" role="tabpanel">
                            <div class="col-lg-12">
                                <div class="axil-dashboard-account">
                                    <form @submit.prevent="UpdatePassword" id="passwordForm" class="passwordForm">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <h4>Change Your Password</h4><hr>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label>New Password</label>
                                                    <input type="password" class="form-control" v-model="password.password" id="password" />
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <label>Confirm New Password</label>
                                                    <input type="password" class="form-control" v-model="password.cpassword" id="cpassword" />
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group mb--0">
                                                    <input type="submit" value="Change Password" class="btn btn-primary" />
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // Update Information
    var app = new Vue({
        el: "#detailsForm",
        data() {
            return {
                customer: {
                    id: '<?php echo $details->id ?>',
                    name: '<?php echo $details->name ?>',
                    email: '<?php echo $details->email ?>',
                    phone: '<?php echo $details->phone ?>',
                    shipping_address: '<?php echo $details->shipping_address ?>',
                    billing_address: '<?php echo $details->billing_address ?>',
                },
                regMobile: /^01[13-9][\d]{8}$/,
            }
        },
        methods: {
            UpdateCustomer() {
                if (this.customer.name == '') {
                    $.notify('Please Enter Your Name', "error");
                    return;
                }
                if (this.customer.phone == '') {
                    $.notify('Enter Your phone number', "error");
                    return;
                }
                if (!this.validateMobile(this.customer.phone)) {
                    $.notify('Please Enter a valid phone number!', "error");
                    return;
                }
                axios.post('/update_details', {
                    customer: this.customer
                }).then(res => {
                    let r = res.data;
                    $.notify(r.message, "success");
                    // this.cleardetailsForm();
                })
            },
            cleardetailsForm() {
                this.customer = {
                    id: '<?php echo $details->id ?>',
                    name: '<?php echo $details->name ?>',
                    email: '<?php echo $details->email ?>',
                    phone: '<?php echo $details->phone ?>',
                    shipping_address: '<?php echo $details->shipping_address ?>',
                    billing_address: '<?php echo $details->billing_address ?>',
                }
            },
            validateMobile(mobile) {
                if (mobile == null || mobile == '') return true;
                return this.regMobile.test(mobile);
            }
        },
    });

    // Password Change
    var app = new Vue({
        el: "#passwordForm",
        data() {
            return {
                password: {
                    id: '<?php echo $details->id ?>',
                    password: '',
                    cpassword: ''
                }
            }
        },
        methods: {
            UpdatePassword() {
                axios.post('/update_password', {
                    password: this.password
                }).then(res => {
                    let r = res.data;
                    $.notify(r.message, "success");
                    this.clearpasswordForm();
                })
            },
            clearpasswordForm() {
                this.password = {
                    id: '<?php echo $details->id ?>',
                    password: '',
                    cpassword: ''
                }
            }
        }
    });
</script>