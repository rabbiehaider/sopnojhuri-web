<?php
if (!empty($products)) {
    foreach ($products as $key => $item) {
?>
    <div class="col-md-6 col-lg-2">
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