<style>
    .cat-list a{
      color: #565050;
    }
    .nav-tabs {
        border-bottom: none;
    }
</style>
<section class="hero-wrap hero-wrap-2" style="background-image: url('../assets/fontend/images/top-banner.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs mb-2">
                    <span class="mr-2">
                        <a href="/">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Category Product <i class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread"><?php echo $category->ProductCategory_Name; ?></h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">

    <div class="container py-3">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <div class="card px-2" style="background: #f8f9fd;">
                    
                    <div class="row pt-2">
                        <div class="col-md-10">
                            <h5 class="mb-0">Category: <?php echo $category->ProductCategory_Name; ?></h4>
                            <p class="mb-0"><?php echo count($products); ?> items found in <?php echo $category->ProductCategory_Name; ?></p>
                        </div>
                        <div class="col-md-2">
                            <div class="cat-list">
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="pill" href="#nav-productCart" role="tab" aria-selected="true"><i class="fa fa-th-large"></i></a>
                                
                                    <a class="nav-item nav-link" data-toggle="pill" href="#nav-productDtls" role="tab" aria-selected="false"><i class="fa fa-list"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="nav-productCart" role="tabpanel">
                            <div class="row pt-2">
                                <?php
                                if (!empty($products)) {
                                    foreach ($products as $key => $item) {
                                ?>
                                        <div class="col-md-6 col-lg-2 ftco-animate">
                                            <div class="block-7">
                                                <div class="icon d-flex justify-content-center align-items-center">
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
                                } else {

                                    ?>
                                    <div class="col-md-12 text-center">
                                        <h3>No Product Found!</h3>
                                    </div>

                                <?php
                                    }
                                ?>
                            </div>
                        </div>
                        <div class="tab-pane fade show" id="nav-productDtls" role="tabpanel">
                            <?php
                                if (!empty($products)) {
                                    foreach ($products as $key => $item) {
                            ?>
                            <div class="col-lo-12 py-2">
                                <div class="card">
                                    <div class="row px-4 py-2">
                                        <div class="col-lg-4">
                                            <?php $p_image = $item->Product_Image != '' ? $item->Product_Image : 'no_image.jpg' ?>
                                            <img id="main-image" style="border: 1px solid #ccc;" src="<?php echo $img_url . 'uploads/product_images/' . $p_image ?>" width="250" height="250" />
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="mt-4 mb-3">
                                                <h5 class="text-uppercase"><?php echo $item->Product_Name ?></h5>
                                                <div class="price d-flex flex-row align-items-center">
                                                    <h6 class="act-price">৳ <?php echo $item->Product_SellingPrice ?></h6>
                                                </div>
                                                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                                    <?php echo $item->description; ?>
                                                </div>

                                                <a href="<?php echo base_url() . 'product_details/' . $item->Product_SlNo ?>"><button title="Product Details" class="view-btn btn-primary">View</button></a>
                                                    <button class="view-btn btn-secondary" onclick="javascript:addtocart(<?php echo $item->Product_SlNo ?>)">Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php 
                                    }
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
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