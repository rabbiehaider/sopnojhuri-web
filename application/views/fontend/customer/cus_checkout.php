<div id="content">
    <div id="WEB_DATA">
        <section class="chheckout-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 cus-order-2 mb-4">
                        <div class="checkout-shipping">
                            <div class="card">
                                <div class="card-header">
                                    <h4>ক্যাশ অন ডেলিভারিতে অর্ডার করতে আপনার তথ্য দিন </h4>
                                </div>
                                <div class="card-body">
                                    <form action="https://www.ozybd.com/customer/order-save" id="checkoutForm" method="POST"
                                        data-parsley-validate="">
                                        <input type="hidden" name="_token" value="ugncRPvZXeZcAVzSWjERz0pZkSnprApBj3LbDrK3">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group customized-input-box mb-3">
                                                    <label for="name">আপনার নাম <span style="color: red">*</span></label>
                                                    <span class="input-icon-label">
                                                        <i class="fa fa-user"></i>
                                                    </span>
                                                    <input type="text" placeholder="আপনার নাম লিখুন" id="name" class="form-control" v-model="customer.customer_name" required />
                                                </div>
                                            </div>
                                            <!-- col-end -->
                                            <div class="col-sm-12">
                                                <div class="form-group customized-input-box mb-3">
                                                    <label for="phone">আপনার মোবাইল <span style="color: red">*</span></label>
                                                    <span class="input-icon-label">
                                                        <i class="fa fa-phone"></i>
                                                    </span>
                                                    <input placeholder="আপনার মোবাইল নাম্বার লিখুন" type="number" minlength="11"
                                                        id="number" maxlength="11" pattern="0[0-9]+"
                                                        title="please enter number only and 0 must first character"
                                                        title="Please enter an 11-digit number." id="phone"
                                                        class="form-control" v-model="customer.customer_mobile" required />
                                                </div>
                                            </div>
                                            <!-- col-end -->

                                            <div class="col-sm-12">
                                                <div class="form-group customized-input-box mb-3">
                                                    <label for="address">আপনার ঠিকানা (থানা ও জেলা সহ) <span style="color: red">*</span></label>
                                                    <span class="input-icon-label">
                                                        <i class="fa fa-map-location-dot"></i>
                                                    </span>
                                                    <input placeholder="আপনার ঠিকানা লিখুন" type="address" id="address" class="form-control" v-model="customer.customer_address" required />
                                                </div>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="form-group customized-input-box mb-3">
                                                    <label for="address">নোট লিখুন (যেমন: কালার, সাইজ) যদি থাকে</label>
                                                    <span class="input-icon-label">
                                                        <i class="fas fa-sticky-note"></i>
                                                    </span>
                                                    <input placeholder="নোট লিখুন (যেমন: কালার, সাইজ) যদি থাকে" type="address" id="address" class="form-control" v-model="customer.customer_notes" required />
                                                </div>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="form-group mb-3">
                                                    <label for="area">ডেলিভারি এরিয়া সিলেক্ট করুন <span style="color: red">*</span></label>
                                                    <div class="shipping-area-box">
                                                        <div :class="order.delivery_type == 'isd' ? 'area-item active' : 'area-item'">
                                                            <input name="delivery_type" type="radio" value="isd" v-model="order.delivery_type" v-on:change="calculateTotal" id="isd">
                                                            <label for="isd">ঢাকা সিটির ভিতরে {{ order.isd_charge }} টাকা</label>
                                                        </div>
                                                        <div :class="order.delivery_type == 'osd' ? 'area-item active' : 'area-item'">
                                                            <input name="delivery_type" type="radio" value="osd" v-model="order.delivery_type" v-on:change="calculateTotal" id="osd">
                                                            <label for="osd">ঢাকা সিটির বাইরে {{ order.osd_charge }} টাকা</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- col-end -->

                                            <div class="col-sm-12">
                                                <div class="radio_payment">
                                                    <label id="payment_method">পেমেন্ট মেথড </label>
                                                    <div class="payment_option">
                                                    </div>
                                                </div>
                                                <div class="payment-methods">
                                                    <div class="form-check p_cash payment_method" data-id="cod">

                                                        <input class="form-check-input" type="radio" name="payment_method"
                                                            id="inlineRadio1" value="cod" v-model="order.payment_method" checked required />
                                                        <label class="form-check-label" for="inlineRadio1"> ক্যাশ অন ডেলিভারি
                                                        </label>

                                                    </div>
                                                    <div class="form-check p_bkash payment_method" data-id="bkash">
                                                        <input class="form-check-input" type="radio"
                                                            name="payment_method" id="inlineRadio2" value="bkash" v-model="order.payment_method"
                                                            required />
                                                        <label class="form-check-label" for="inlineRadio2">
                                                            বিকাশ
                                                        </label>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- card end -->

                        </div>
                    </div>
                    <!-- col end -->
                    <div class="col-sm-7 cust-order-1">
                        <div class="cart_details table-responsive-sm">
                            <div class="card">
                                <div class="card-header">
                                    <h5>আপনার অর্ডার </h5>
                                </div>
                                <div class="card-body cartlist">
                                    <div class="checkout-cart-item" v-for="(item, index) in cart" :key="item.id">
                                        <div class="checkout-cart-image">
                                            <img :src="item.image" :alt="item.name" />
                                            <div class="checkout-cart-quantity">{{ item.qty }}</div>
                                        </div>
                                        <div class="checkout-cart-info">
                                            <a :href="`/product/${item.slug}`">{{ item.name }}</a>
                                        </div>
                                        <div class="checkout-cart-prices">
                                            <strong>৳ {{ (item.price * item.qty) | decimal }}</strong>
                                        </div>
                                        <div class="checkout-cart-remove">
                                            <a @click="deleteCartItem(item)" style="cursor: pointer;"><i class="fas fa-times"></i></a>
                                        </div>
                                    </div>

                                    <div class="checkout-cart-summary">
                                        <div class="checkout-summary-item">
                                            <div class="text-end px-4 left">সাব টোটাল</div>
                                            <div class="px-4 right"><strong>৳ {{ order.sub_total | decimal }}</strong></div>
                                        </div>
                                        <div class="checkout-summary-item">
                                            <div class="text-end px-4 left">ডেলিভারি চার্জ</div>
                                            <div class="px-4 right"><strong>৳ {{ order.delivery_charge | decimal }}</strong></div>
                                        </div>

                                        <div class="checkout-summary-item">
                                            <div class="text-end px-4 left">সর্বমোট</div>
                                            <div class="px-4 right"><strong>৳ {{ order.total_amount | decimal }}</strong></div>
                                        </div>
                                    </div>

                                </div>
                                <div class="p-3" style="padding-top: 0;">
                                    <form @submit.prevent="saveOrder">
                                        <div class="form-group">
                                            <button class="order_place" type="submit" v-bind:disabled="orderOnGoing ? true : false">আপনার অর্ডার কনফার্ম করতে ক্লিক করুন</button>
                                        </div>
                                    </form>
                                </div>
                                <div class="checkout-suggest-text">
                                    <h3>উপরের বাটনে ক্লিক করলে আপনার অর্ডারটি সাথে সাথে কনফার্ম হয়ে যাবে !</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- col end -->
                </div>
            </div>
        </section>
    </div>
</div>
<!-- content end -->

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                order: {
                    sub_total: '',
                    delivery_charge: 0,
                    total_amount: 0,
                    delivery_type: 'isd',
                    payment_method: 'cod',
                    isd_charge: parseFloat('<?php echo $isd_charge; ?>'),
                    osd_charge: parseFloat('<?php echo $osd_charge; ?>'),
                },
                customer: {
                    customer_id: '<?php echo $this->session->userdata("customer_id"); ?>',
                    customer_name: '<?php echo $this->session->userdata("customer_name"); ?>',
                    customer_mobile: '<?php echo $this->session->userdata("customer_mobile"); ?>',
                    customer_address: '<?php echo $this->session->userdata("customer_address"); ?>',
                    customer_notes: '',
                },
                regMobile: /^01[3-9]\d{8}$/,
                cart: [],
                orderOnGoing: false,
            }
        },
        filters: {
            decimal(value) {
                return value == null || value == '' ? '0.00' : parseFloat(value).toFixed(2);
            }
        },
        async created() {
            this.fetchCartData();
            setInterval(() => {
                // this.fetchCartData();
            }, 5000);
        },
        methods: {
            async fetchCartData() {
                await axios.get('/get_cart_contents').then(res => {
                    let data = res.data;
                    this.cart = data.cart;
                    this.order.sub_total = data.sub_total;
                })
                let dCharge = this.order.delivery_type == 'isd' ? this.order.isd_charge : this.order.osd_charge;
                this.order.delivery_charge = dCharge.toFixed(2);
                this.calculateTotal();
            },
            calculateTotal() {
                let dCharge = this.order.delivery_type == 'isd' ? this.order.isd_charge : this.order.osd_charge;
                this.order.delivery_charge = dCharge.toFixed(2);

                let subTotal = this.order.sub_total ?? 0;
                let deliveryCharge = this.order.delivery_charge ?? 0;

                let totalAmount = (parseFloat(subTotal) + parseFloat(deliveryCharge)).toFixed(2);
                this.order.total_amount = totalAmount;
            },

            deleteCartItem(item) {
                axios.post('/remove_cart_item', {
                    id: item.id
                }).then(res => {
                    let r = res.data;
                    if (r.success) {
                        this.fetchCartData();
                        this.calculateTotal();
                        $(".cartMainCount").text(r.cartMainCount);
                    } else {
                        toastr.error('Item remove error!');
                    }

                })
            },
            async saveOrder() {
                if (this.customer.customer_name == '') {
                    toastr.error('আপনার নাম লিখুন');
                    return;
                }
                if (this.customer.customer_mobile == '') {
                    toastr.error('আপনার মোবাইল নাম্বার লিখুন');
                    return;
                }
                if (this.customer.customer_address == '') {
                    toastr.error('আপনার ঠিকানা লিখুন');
                    return;
                }

                if (this.cart.length == 0) {
                    toastr.error('আপনার কার্টে কোন প্রোডাক্ট নেই!');
                    return;
                }

                if (!this.validateMobile(this.customer.customer_mobile)) {
                    toastr.error('আপনার সঠিক নাম্বার লিখুন');
                    return;
                }
                
                let data = {
                    order: this.order,
                    cart: this.cart,
                    customer: this.customer
                }
                this.orderOnGoing = true;
                axios.post('/place_order', data).then(async res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        window.location = '/order-success/' + r.orderId;
                        // window.open('/order-success/' + r.orderId);
                    } else {
                        this.orderOnGoing = false;
                        toastr.error(r.message);
                    }
                })
            },
            validateMobile(mobile) {
                if (mobile == null || mobile == '') return true;
                return this.regMobile.test(mobile);
            }
        }
    })
</script>