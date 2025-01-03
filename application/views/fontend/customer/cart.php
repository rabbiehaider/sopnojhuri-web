<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Cart <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Cart</h1>
            </div>
        </div>
    </div>
</section>

<div class="axil-product-cart-area axil-section-gap">
    <div class="container">
        <div class="axil-product-cart-wrap">
            <!-- <div class="product-table-heading">
                <h4 class="title">Your Cart</h4>
                <a href="#" class="cart-clear">Clear Shoping Cart</a>
            </div> -->
            <div class="table-responsive">
                <table class="table axil-product-table axil-cart-table mb--40">
                    <thead>
                        <tr>
                            <th scope="col" class="product-thumbnail">Product</th>
                            <th scope="col" class="product-title">Name</th>
                            <th scope="col" class="product-price">Price</th>
                            <th scope="col" class="product-quantity">Quantity</th>
                            <th scope="col" class="product-subtotal">Subtotal</th>
                            <th scope="col" class="product-remove"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($this->cart->total_items() > 0) {
                            foreach ($cartItems as $item) { ?>
                                <tr>
                                    <td>
                                        <?php $imageURL = !empty($item["image"]) ? $img_url . 'uploads/product_images/' . $item["image"] : $img_url . 'uploads/no_image.jpg'; ?>

                                        <img src="<?php echo $imageURL; ?>" width="50" />
                                    </td>

                                    <!-- <?php echo $img_url . 'uploads/Project/' . $project->image ?> -->


                                    <td><?php echo $item["name"]; ?></td>
                                    <td><?php echo '৳' . $item["price"]; ?></td>
                                    <td>
                                        <!-- <div class="pro-qty"><span class="dec qtybtn">-</span>
                                        <input type="number" class="quantity-input" value="1">
                                        <span class="inc qtybtn">+</span>
                                         -->
                                        <input type="number" class="form-control text-center" value="<?php echo $item["qty"]; ?>" onchange="updateCartItem(this, '<?php echo $item["rowid"]; ?>')">
                                    </td>
                                    <td class="text-right"><?php echo '৳' . $item["subtotal"]; ?></td>
                                    <td class="text-right">
                                        <button class="btn btn-sm btn-danger" onclick="removeCartItem('<?php echo $item["rowid"]; ?>')"><i class="fa fa-close"></i> </button>
                                    </td>
                                </tr>
                            <?php }
                        } else { ?>
                            <tr>
                                <td colspan="6">
                                    <p>Your cart is empty.....</p>
                                </td>
                            <?php } ?>
                            <?php if ($this->cart->total_items() > 0) { ?>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>Subtotal</strong></td>
                                <td class="text-right"><strong><?php echo '৳' . $this->cart->total(); ?></strong></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>Shipping Charge</strong></td>
                                <td class="text-right"><strong><?php echo '৳ 100'; ?></strong></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>Total</strong></td>
                                <td class="text-right"><strong><?php echo '৳' . $cartTotalwithShipping; ?></strong></td>
                                <td></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-xl-12 col-lg-12 offset-xl-12 offset-lg-12">
                    <a href="<?php base_url()?>products" class="btn btn-primary checkout-btn pull-left">Continue Shopping</a>
                    <a href="<?= $this->session->userdata('id') != '' ? base_url('checkout') : base_url('customer-login') ?>" class="btn btn-primary checkout-btn pull-right">Process to Checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
