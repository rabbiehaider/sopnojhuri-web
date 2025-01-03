<style>
    .form-groupp {
        margin-bottom: 15px;
    }
    .axil-checkout-billing .form-groupp input {
        height: 45px;
        padding: 0 20px;
    }
    .form-groupp label {
        left: 10px;
    }
    .form-groupp textarea {
        min-height: 120px;
    }
    .table thead th {
        border-bottom: 1px solid #ccc;
        padding: 5px 0px;
        color: #01216A;
        border-top: none;
    }
</style>
<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Checkout <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Checkout</h1>
            </div>
        </div>
    </div>
</section>


<div class="axil-checkout-area axil-section-gap">
    <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="axil-checkout-billing">
                        <h4 class="title mb-3">Shipping Details</h4>                        
                        <div class="form-groupp">
                            <label>Name <span>*</span></label>
                            <input type="text" class="cus_name" id="name" name="name" value="<?php echo $this->session->userdata("name"); ?>">
                        </div>
                        <div class="form-groupp">
                            <label>Phone <span>*</span></label>
                            <input type="text" class="phone" id="phone" name="phone" value="<?php echo $this->session->userdata("phone"); ?>">
                        </div>
                        <div class="form-groupp">
                            <label>Email Address <span>*</span></label>
                            <input type="email" class="email" id="email" name="email" value="<?php echo $this->session->userdata("email"); ?>">
                        </div>
                        
                        <div class="form-groupp">
                            <label>Shipping Address <span>*</span></label>
                            <input type="text" class="address" id="address" name="address" class="mb--15" value="<?php echo $this->session->userdata("shipping_address"); ?>" required>
                        </div>

                        <div class="form-groupp">
                            <label>Other Notes (optional)</label>
                            <textarea id="note" class="note" name="note" rows="2" placeholder=""></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="axil-order-summery order-checkout-summery">
                        <h5 class="title mb-2">Your Order</h5>
                        <div class="summery-table-wrap">
                            <table class="table summery-table table-responsive">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th class="text-right">Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php if ($this->cart->total_items() > 0) {
                                     foreach ($cartItems as $item) { ?>
                                    <tr class="order-product">
                                        <td><?php echo $item["name"]; ?> <span class="quantity">x<?php echo $item["qty"]; ?></span></td>
                                        <td class="text-right"><?php echo '৳' . $item["subtotal"]; ?></td>
                                    </tr>
                                    <?php }
                                      } ?>
                                    <tr>
                                        <td><strong>Subtotal</strong></td>
                                        <td class="text-right"><strong><?php echo '৳' . $this->cart->total(); ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Shipping Charge</strong></td>
                                        <td class="text-right"><strong><?php echo '৳ 100'; ?></strong></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Total</strong></td>
                                        <td class="text-right"><strong><?php echo '৳' . $cartTotalwithShipping; ?></strong></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="order-payment-method">                            
                            <div class="single-payment">
                                <div class="input-group ">
                                    <input type="radio" id="radio5" name="payment">
                                    <label style="line-height: 15px;" for="radio5">Cash on delivery</label>
                                </div>
                                <p class="mb-2">Pay with cash upon delivery.</p>
                            </div>

                        </div>
                        <button style="padding: 7px; font-size: 14px;" class="btn btn-success btn-lg btn-block" onclick="javascript:addtocart()">Place Order</button>
                    </div>
                </div>
            </div>
    </div>
</div>

<script type="text/javascript">
    function addtocart() {
        var name = $('.cus_name').val();
        var phone = $('.phone').val();
        var email = $('.email').val();
        var address = $('.address').val();
        var note = $('.note').val();

        if(address == '') {
            alert('Enter shipping address!');
            return;
        }

        $.ajax({
            type: "POST",
            url: "<?php echo base_url('insertCheckout'); ?>",
            data: "name=" + name + "&phone=" + phone + "&email=" + email + "&address=" + address + "&note=" + note,
            success: function(response) {
                alert('Order Placed Successfully.');
                location.href = "my_account";
            }
        });
    }
</script>