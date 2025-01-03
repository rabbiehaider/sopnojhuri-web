<section class="hero-wrap hero-wrap-2" style="background-image: url('../assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Product Details <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread">Product Details</h1>
            </div>
        </div>
    </div>
</section>

<script src="<?php echo base_url('assets/fontend/') ?>js/product.min.js"></script>
<section class="ftco-section bg-light">

    <div class="container pt-3">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="images p-3">
                                <div class="text-center p-4">
                                    <?php $p_image = $products->Product_Image != '' ? $products->Product_Image : 'no_image.jpg' ?>
                                    <img id="main-image" style="border: 1px solid #ccc;" src="<?php echo $img_url . 'uploads/product_images/' . $p_image ?>" width="250" height="250" />
                                </div>
                                <div class="thumbnail text-center">
                                    <?php if (!empty($gallery)) {
                                        foreach ($gallery as $key => $item) { ?>
                                            <img style="border: 1px solid #ccc;" onclick="change_image(this)" src="<?php echo $img_url . 'uploads/product_gallery/' . $item->Product_Image ?>" width="70" height="50">
                                    <?php }
                                    } ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="product p-4">
                                <div class="mt-4 mb-3">
                                    <h5 class="text-uppercase"><?php echo $products->Product_Name; ?></h5>
                                    <label>Part No: <?php echo $products->part_no; ?></label>
                                    <div class="price d-flex flex-row align-items-center">
                                        <h4 class="act-price">৳ <?php echo $products->Product_SellingPrice; ?></h4>
                                    </div>
                                </div>
                                <!-- <p class="about"><?php echo $products->description; ?></p> -->

                                <div class="cart mt-4 align-items-center">
                                    <div class="product-count">
                                        <div class="row">
                                            <div class="col-sm-12 d-flex">
                                                <div class="qtyminus">-</div>
                                                <input type="text" id="quantity" name="quantity" value="1" class="quantity qty qnty<?php echo $products->Product_SlNo ?>">
                                                <div class="qtyplus">+</div>
                                            </div>
                                            <div class="col-sm-12">
                                                <button class="round-black-btn" onclick="javascript:addtocart(<?php echo $products->Product_SlNo ?>)">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-info-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                    <?php echo $products->description; ?>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    function addtocart(p_id) {
        var qnty = $('.qnty' + p_id).val();
        
        $.ajax({
            type: "POST",
            url: "<?php echo base_url('save_cart_details'); ?>",
            data: "id=" + p_id + "&qnty=" + qnty,
            success: function(response) {
                $(".cartcount").text(response);                
                toastr.success('Product Added to Cart Successfully.', {timeOut: 2000});
            }
        });
    }

    function change_image(image) {
        var container = document.getElementById("main-image");
        container.src = image.src;
    }
    document.addEventListener("DOMContentLoaded", function(event) {});
</script>