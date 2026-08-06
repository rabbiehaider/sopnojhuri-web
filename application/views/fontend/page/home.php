<div id="content">
    <div id="WEB_DATA">
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

        <!-- Category Section ~ 14102 -->
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
                        <div class="topcategory owl-carousel" v-if="categories.length > 0">
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

        <!-- Treding Products Section ~ 14102 -->
        <section class="homeproduct">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Trending Products</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="<?= base_url('trending-products') ?>" class="view_more_btn">View More</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-2" v-for="(tproduct, hpi) in trendings" :key="hpi">
                                <div class="product_item wist_item">
                                    <div class="product_item_inner">
                                        <div class="sale-badge">
                                            <div class="sale-badge-inner">
                                                <div class="sale-badge-box">
                                                    <span class="sale-badge-text">
                                                        <p> {{ tproduct.discount_percent | pDecimal }}%</p> Off
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pro_img">
                                            <a :href="`/product/${tproduct.slug}`">
                                                <img :src="tproduct.pro_image" :alt="tproduct.Product_Name" />
                                            </a>
                                        </div>
                                        <div class="pro_des">
                                            <div class="pro_name">
                                                <a :href="`/product/${tproduct.slug}`">{{ tproduct.Product_Name }}</a>
                                            </div>
                                            <div class="pro_price">
                                                <p>
                                                    <del>৳ {{ tproduct.Product_PreviousPrice }}</del>
                                                    ৳ {{ tproduct.Product_SellingPrice }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="pro_btn">
                                        <div class="cart_btn order_button">
                                            <button @click="orderNow(tproduct)">Order Now </button>
                                        </div>
                                    </div>
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
                                <span class="section-title-name">Hot Deals</span>
                            </h3>
                            <div class="show_more_btn">
                                <a href="<?= base_url('hot-deals') ?>" class="view_more_btn">View More</a>
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
                                            <button @click="orderNow(hproduct)">Order Now </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- All Products Section -->
        <div v-if="mproducts.length > 0" style="display:none" v-bind:style="{display: mproducts.length > 0 ? '' : 'none'}">
            <section class="homeproduct" v-for="(mpro, mpi) in mproducts" :key="mpi">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12">
                            <div class="sec_title">
                                <h3 class="section-title-header">
                                    <span class="section-title-name">{{ mpro.SubCategory_Name }}</span>
                                </h3>
                                <div class="show_more_btn">
                                    <a :href="`/scategory/${mpro.route}`" class="view_more_btn">View More</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-2" v-for="(mppro, mppi) in mpro.products" :key="mppi">
                                    <div class="product_item wist_item">
                                        <div class="product_item_inner">
                                            <div class="sale-badge">
                                                <div class="sale-badge-inner">
                                                    <div class="sale-badge-box">
                                                        <span class="sale-badge-text">
                                                            <p> {{ mppro.discount_percent | pDecimal }}%</p> Off
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="pro_img">
                                                <a :href="`/product/${mppro.slug}`">
                                                    <img :src="mppro.pro_image" :alt="mppro.Product_Name" />
                                                </a>
                                            </div>
                                            <div class="pro_des">
                                                <div class="pro_name">
                                                    <a :href="`/product/${mppro.slug}`">{{ mppro.Product_Name }}</a>
                                                </div>
                                                <div class="pro_price">
                                                    <p>
                                                        <del>৳ {{ mppro.Product_PreviousPrice }}</del>
                                                        ৳ {{ mppro.Product_SellingPrice }}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="pro_btn">
                                            <div class="cart_btn order_button">
                                                <button @click="orderNow(mppro)">Order Now </button>
                                            </div>
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
</div>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                categories: [],
                trendings: [],
                hotProducts: [],
                mproducts: [],
            }
        },
        filters: {
            pDecimal(value) {
                return value == null || value == '' ? '0' : parseFloat(value).toFixed(0);
            },
            decimal(value) {
                return value == null || value == '' ? '0.00' : parseFloat(value).toFixed(2);
            }
        },
        async created() {
            await this.getCategories();
            await this.getTrendingPros();
            await this.getHotDeals();
            await this.getMainProducts();
        },
        methods: {
            async getCategories() {
                await axios.get('/get_categories').then(async res => {
                    this.categories = res.data.map((item, index) => {
                        item.cat_image = this.img_url + item.Category_Image;
                        return item;
                    });
                    this.$nextTick(() => {
                        let $topcat = $(".topcategory");
                        if ($topcat.hasClass('owl-loaded')) {
                            $topcat.trigger('destroy.owl.carousel').removeClass('owl-loaded');
                        }
                        $topcat.owlCarousel({
                            margin: 15,
                            loop: this.categories.length > 8,
                            dots: false,
                            autoplay: true,
                            autoplayTimeout: 6000,
                            autoplayHoverPause: true,
                            responsiveClass: true,
                            responsive: {
                                0: {
                                    items: 2,
                                    nav: true,
                                },
                                600: {
                                    items: 5,
                                    nav: false,
                                },
                                1000: {
                                    items: 8,
                                    nav: false,
                                    loop: this.categories.length > 8,
                                },
                            },
                        });
                    });
                })
            },
            async getTrendingPros() {
                await axios.post('/get_products', {
                    isTrending: 'true'
                }).then(async res => {
                    let products = res.data;
                    this.trendings = products.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        return pro;
                    });
                })
            },
            async getHotDeals() {
                await axios.post('/get_products', {
                    isOffer: 'true'
                }).then(async res => {
                    let products = res.data;
                    this.hotProducts = products.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        return pro;
                    });
                })
            },
            async getMainProducts() {
                await axios.get('/get_scategory_products').then(async res => {
                    let products = res.data;

                    products.forEach(cat => {
                        cat.products.map((pro, index) => {
                            pro.pro_image = this.img_url + pro.Product_Image;
                            return pro;
                        });
                    })

                    this.mproducts = products;
                })
            },
            orderNow(product) {
                axios.post('/add_to_cart', {
                    productId: product.Product_SlNo,
                    productName: product.Product_Name,
                    saleRate: product.Product_SellingPrice,
                    quantity: 1,
                    productSlug: product.slug,
                    productImage: product.pro_image,
                }).then(res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        window.location = '/customer/checkout';
                    } else {
                        toastr.error(r.message);
                    }
                })
            }
        }
    })
</script>