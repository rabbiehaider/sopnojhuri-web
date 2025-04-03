<div id="content">
    <div id="NEXT_DATA">
        <section class="slider-section">
            <!-- <div class="container"> -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="home-slider-container">
                        <div class="main_slider owl-carousel">
                            <div class="slider-item">
                                <img src="<?php echo base_url('assets/fontend/') ?>uploads/banner/1737353259Banner%201%20copy_Original.jpg" alt="" />
                            </div>
                            <div class="slider-item">
                                <img src="<?php echo base_url('assets/fontend/') ?>uploads/banner/1737353259Banner%201%20copy_Original.jpg" alt="" />
                            </div>
                            <div class="slider-item">
                                <img src="<?php echo base_url('assets/fontend/') ?>uploads/banner/1737353259Banner%201%20copy_Original.jpg" alt="" />
                            </div>
                            <!-- slider item -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- </div> -->
        </section>

        <!-- Category Section -->
        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <div class="timer_inner">
                                    <div class="">
                                        <span class="section-title-name"> All Categories </span>
                                    </div>
                                </div>
                            </h3>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="topcategory owl-carousel">
                            <div class="cat_item" v-for="(category, index) in categories" :key="index">
                                <div class="cat_img">
                                    <a :href="`/category/${category.route}`">
                                        <img :src="category.cat_image" :alt="category.Category_Name" />
                                    </a>
                                </div>
                                <div class="cat_name">
                                    <a :href="`/category/${category.route}`">
                                        {{ category.Category_Name }}
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Hot Products Section -->
        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Hot Deal</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="category/shoulder-bag.html" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-2" v-for="(hproduct, hpi) in hotProducts" :key="hpi">
                                <div class="product_item wist_item">
                                    <div class="product_item_inner">
                                        <div class="sale-badge">
                                            <div class="sale-badge-inner">
                                                <div class="sale-badge-box">
                                                    <span class="sale-badge-text">
                                                        <p> {{ hproduct.discount_percent | pDecimal }}%</p> Off
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pro_img">
                                            <a :href="`/product/${hproduct.slug}`">
                                                <img :src="hproduct.pro_image" :alt="hproduct.Product_Name" />
                                            </a>
                                        </div>
                                        <div class="pro_des">
                                            <div class="pro_name">
                                                <a :href="`/product/${hproduct.slug}`">{{ hproduct.Product_Name }}</a>
                                            </div>
                                            <div class="pro_price">
                                                <p>
                                                    <del>৳ {{ hproduct.Product_PreviousPrice }}</del>
                                                    ৳ {{ hproduct.Product_SellingPrice }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="pro_btn">
                                        <div class="cart_btn order_button">
                                            <button class="" data-id="106">Order Now </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Hand Bag</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="category/shoulder-bag.html" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="product_sliders">
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 18%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/oz-special-premium-hand-bag-106.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737714550-22.webp"
                                                alt="OZ-Special Premium Hand bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/oz-special-premium-hand-bag-106.html">OZ-Special Premium
                                                Hand bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 2499</del>

                                                ৳ 2050

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">
                                    <div class="cart_btn order_button">
                                        <button class="" data-id="106">Order Now </button>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 24%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/elegant-premium-crocodile-pattern-handbag-101.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737560163-40.webp"
                                                alt="Elegant Premium Crocodile Pattern Handbag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/elegant-premium-crocodile-pattern-handbag-101.html">Elegant
                                                Premium Crocodile Pattern Handbag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 4199</del>

                                                ৳ 3199

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/elegant-premium-crocodile-pattern-handbag-101.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Tote Bag</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="category/shoulder-bag.html" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="product_sliders">
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 20%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/signature-classic-totebag-104.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737558220-34.webp"
                                                alt="Signature Classic Totebag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/signature-classic-totebag-104.html">Signature Classic
                                                Totebag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 1999</del>

                                                ৳ 1599

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/signature-classic-totebag-104.html" class="">Quick
                                            Add
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 25%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/oz-premium-oxford-totebag-olive-102.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737558829-37.webp"
                                                alt="OZ Premium Oxford Totebag Olive" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/oz-premium-oxford-totebag-olive-102.html">OZ Premium Oxford
                                                Totebag Olive</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 1599</del>

                                                ৳ 1199

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/oz-premium-oxford-totebag-olive-102.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 42%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/new-large-capacity-portable-tote-bag-94.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737563750-1.webp"
                                                alt="New Large Capacity Portable Tote Bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/new-large-capacity-portable-tote-bag-94.html">New Large
                                                Capacity Portable Tote Bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 3599</del>

                                                ৳ 2100

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/new-large-capacity-portable-tote-bag-94.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Shoulder Bag</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="category/shoulder-bag.html" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="product_sliders">
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 20%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/women%27s-stylish-shoulder-bag-105.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737538770-19.webp"
                                                alt="Women's Stylish Shoulder Bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/women%27s-stylish-shoulder-bag-105.html">Women's
                                                Stylish Shoulder Bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 2499</del>

                                                ৳ 1999

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/women%27s-stylish-shoulder-bag-105.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 19%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/elegance-shoulder-bag-103.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737558251-30.webp"
                                                alt="Elegance Shoulder Bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/elegance-shoulder-bag-103.html">Elegance Shoulder Bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 1799</del>

                                                ৳ 1450

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/elegance-shoulder-bag-103.html" class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 18%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/casual-shoulder-bag-100.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737538793-15.webp"
                                                alt="Casual Shoulder Bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/casual-shoulder-bag-100.html">Casual Shoulder Bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 2199</del>

                                                ৳ 1799

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/casual-shoulder-bag-100.html" class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 25%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/versatile-fashion-shoulder-bag-96.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737558410-27.webp"
                                                alt="Versatile Fashion Shoulder Bag" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/versatile-fashion-shoulder-bag-96.html">Versatile Fashion
                                                Shoulder Bag</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 1599</del>

                                                ৳ 1199

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/versatile-fashion-shoulder-bag-96.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 24%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/premium-shoulder-bag-with-teddy-charm-95.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1737558456-17.webp"
                                                alt="Premium Shoulder Bag with Teddy Charm" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/premium-shoulder-bag-with-teddy-charm-95.html">Premium
                                                Shoulder Bag with Teddy Charm</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 2499</del>

                                                ৳ 1899

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/premium-shoulder-bag-with-teddy-charm-95.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Winter Shawl & Cardigan</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="category/shoulder-bag.html" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="product_sliders">
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="pro_img">
                                        <a href="product/oz-cross-border-knitted-tassel-shawl-92.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1731401850-2.jpg"
                                                alt="OZ Cross-Border Knitted Tassel Shawl" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/oz-cross-border-knitted-tassel-shawl-92.html">OZ
                                                Cross-Border Knitted Tassel Shawl</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>

                                                ৳ 1799

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/oz-cross-border-knitted-tassel-shawl-92.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product_item wist_item">
                                <div class="product_item_inner">

                                    <div class="sale-badge">
                                        <div class="sale-badge-inner">
                                            <div class="sale-badge-box">
                                                <span class="sale-badge-text">
                                                    <p> 15%</p>
                                                    Off
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro_img">
                                        <a href="product/fashion-women%27s-wool-shawl-coat-91.html">
                                            <img src="<?php echo base_url('assets/fontend/') ?>uploads/product/1733375327-14.jpg"
                                                alt="Fashion Women's Wool Shawl Coat" />
                                        </a>
                                    </div>
                                    <div class="pro_des">
                                        <div class="pro_name">
                                            <a href="product/fashion-women%27s-wool-shawl-coat-91.html">Fashion
                                                Women's Wool Shawl Coat</a>
                                        </div>
                                        <div class="pro_price">
                                            <p>
                                                <del>৳ 1590</del>

                                                ৳ 1350

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="pro_btn">

                                    <div class="cart_btn order_button">
                                        <a href="product/fashion-women%27s-wool-shawl-coat-91.html"
                                            class="">Order Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#NEXT_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                categories: [],
                hotProducts: [],
            }
        },
        filters: {
            pDecimal(val) {
                return parseFloat(val).toFixed(0);
            },
            decimal(val) {
                return parseFloat(val).toFixed(2);
            }
        },
        async created() {
            await this.getCategories();
            await this.getHotDeals();
        },
        methods: {
            async getCategories() {
                await axios.get('/get_categories').then(async res => {
                    this.categories = res.data.map((item, index) => {
                        item.cat_image = this.img_url + item.Category_Image;
                        return item;
                    });
                    // console.log(res.data);
                })
            },
            async getHotDeals() {
                await axios.get('/get_products').then(async res => {
                    let products = res.data.filter(p => p.is_offer == 'true');
                    this.hotProducts = products.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        return pro;
                    });
                })
            }
        }
    })
</script>