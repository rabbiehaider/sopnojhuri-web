<section class="hero-wrap hero-wrap-2" style="background-image: url('assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Products <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Products</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
                <h2>Product List</h2>
            </div>
        </div>
        <div class="row">
            <?php
                if (!empty($products)) {
                    foreach ($products as $key => $item) {
                ?>
                    <div class="col-md-6 col-lg-2 ftco-animate">
                        <div class="block-7">
                            <div class="icon d-flex justify-content-center align-items-center pb-3">
                                <a class="prolink" href="<?php echo base_url() . 'product_details/' . $item->Product_SlNo ?>" title="Product Details">
                                    <?php $p_image = $item->Product_Image != '' ? $item->Product_Image : 'no_image.jpg' ?>
                                    <img class="proImg" style="height: 125px; width: 100%;" src="<?php echo $img_url . 'uploads/product_images/' . $p_image ?>" alt="">
                                </a>
                            </div>
                            <div class="text-center">
                                <a href="<?php echo base_url() . 'product_details/' . $item->Product_SlNo ?>" title="Product Details"><span class="d-block" style="font-size: 11px; height: 20px; overflow: hidden; color:black;"><?php echo $item->Product_Name ?></span></a>

                                <span class="price"><span class="number" style="font-size: 12px;">৳ <?php echo $item->Product_SellingPrice ?></span></span>

                                <a href="<?php echo base_url() . 'product_details/' . $item->Product_SlNo ?>"><button title="Product Details" class="view-btn btn-primary">View</button></a>
                                <button class="view-btn btn-secondary" onclick="javascript:addtocart(<?php echo $item->Product_SlNo ?>)">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                <?php
                    }
                }
            ?>
        </div>
    </div>
</section>

<script type="text/javascript">
    function addtocart(p_id) {
        $.ajax({
            type: "POST",
            url: "<?php echo base_url('save_cart'); ?>",
            data: "id=" + p_id,
            success: function(response) {
                $(".cartcount").text(response);
                toastr.success('Product Added to Cart Successfully.', {timeOut: 2000});
            }
        });
    }
</script>