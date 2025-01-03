<style>
    .cat-list a {
        color: #565050;
    }

    .nav-tabs {
        border-bottom: none;
    }
</style>
<script src="<?php echo base_url('assets/fontend/') ?>js/jquery-3.4.1.min.js"></script>
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
                                <p class="mb-0"><?php echo count($productcount); ?> items found in <?php echo $category->ProductCategory_Name; ?></p>
                        </div>
                    </div>
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="row pt-2" id="main">
                            <?php
                            if (!empty($products)) {
                                foreach ($products as $key => $item) {
                            ?>
                                    <div class="col-md-6 col-lg-2">
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
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    var SITEURL = "<?php echo base_url(); ?>";
    var page = 1;
    var category_id = "<?php echo $category_id; ?>";
    var is_more_data = true;
    var is_process_running = false;
    $(window).scroll(function() {
        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 1800) {
            if (is_process_running == false) {
                is_process_running = true;
                page++;
                if (is_more_data) {
                    load_more(page, category_id);
                }
            }
        }
    });

    function load_more(page, category_id) {
        $.ajax({
            url: SITEURL + "get_category_product_more?page=" + page + "&category_id=" + category_id,
            type: "GET",
            dataType: "html",
        }).done(function(data) {
            is_process_running = false;
            if (data.length == 0) {
                is_more_data = false;
                $('#loader').hide();
                return;
            }
            $('#loader').hide();
            $('#main').append(data).show('slow');
        }).fail(function(jqXHR, ajaxOptions, thrownError) {
            alert('No response from server');
        });
    }
</script>

<script type="text/javascript">
    function addtocart(p_id) {
        $.ajax({
            type: "POST",
            url: "<?php echo base_url('save_cart'); ?>",
            data: "id=" + p_id,
            success: function(response) {
                $(".cartcount").text(response);
                toastr.success('Product Added to Cart Successfully.', {
                    timeOut: 2000
                });
            }
        });
    }
</script>