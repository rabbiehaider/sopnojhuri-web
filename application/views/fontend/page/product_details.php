<div id="content">
    <div id="WEB_DATA">
        <div class="homeproduct main-details-page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <section class="product-section">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-6 position-relative">

                                        <div class="product-details-discount-badge">
                                            <div class="sale-badge">
                                                <div class="sale-badge-inner">
                                                    <div class="sale-badge-box">
                                                        <span class="sale-badge-text">
                                                            <p> {{ selectedProduct.discount_percent | pDecimal }}%</p> Discount
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="details_slider owl-carousel">
                                            <div class="dimage_item" v-for="(pimage, pi) in selectedProduct.product_images" :key="pi">
                                                <a :href="pimage.product_image" data-lightbox="roadtrip" data-title="" style="cursor:zoom-in;">
                                                    <img :src="pimage.product_image" style="cursor: zoom-in;" />
                                                </a>
                                            </div>
                                        </div>

                                        <div class="indicator_thumb ">
                                            <div class="indicator-item" v-for="(pimg2, pid) in selectedProduct.product_images" :key="pid" :data-id="pid">
                                                <img :src="pimg2.product_image" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="details_right">
                                            <div class="breadcrumb">
                                                <ul>
                                                    <li><a href="<?php echo base_url(); ?>">Home</a></li>
                                                    <li><span>/</span></li>
                                                    <li>
                                                        <a :href="`/category/${selectedProduct.cat_route}`">
                                                            {{ selectedProduct.Category_Name }}
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="product">
                                                <div class="product-cart">
                                                    <p class="name">{{ selectedProduct.Product_Name }}</p>
                                                    <div class="details-price-wrapper">
                                                        <p class="details-price">
                                                            ৳ <span class="new_price">{{ selectedProduct.Product_SellingPrice }}</span>
                                                            <del>৳ <span class="old_price">{{ selectedProduct.Product_PreviousPrice }}</span></del>
                                                        </p>
                                                        <div class="in-stock-box">
                                                            <span>In Stock (20)</span>
                                                        </div>
                                                    </div>

                                                    <!-- <div class="details-ratting-wrapper">
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                    <i class="far fa-star"></i>

                                                    <span>0.00/5</span>
                                                    <a class="all-reviews-button" href="#writeReview">See Reviews</a>
                                                </div> -->

                                                    <div class="product-code">
                                                        <p class=""><span>SKU : </span>{{ selectedProduct.Product_Code }}</p>
                                                        <button type="button" class="size-chart-button"
                                                            data-bs-toggle="modal" data-bs-target="#sizeChartModal">
                                                            <i class="fa fa-chart-area"></i> Size Chart
                                                        </button>
                                                    </div>

                                                    <input type="hidden" name="id" value="105" />
                                                    <!-- <div class="pro-color" style="width: 100%;">
                                                    <div class="color_inner">
                                                        <p>Color -</p>
                                                        <div class="size-container">
                                                            <div class="selector">
                                                                <div class="selector-item color-item" data-id="0">

                                                                    <input type="radio" id="fc-optionBlack"
                                                                        value="Black" name="product_color"
                                                                        class="selector-item_radio emptyalert variable_color stock_color stock_check"
                                                                        required data-color="Black" />
                                                                    <label for="fc-optionBlack"
                                                                        class="selector-item_label">Black
                                                                    </label>
                                                                </div>
                                                                <div class="selector-item color-item" data-id="1">

                                                                    <input type="radio" id="fc-optionChocolate"
                                                                        value="Chocolate" name="product_color"
                                                                        class="selector-item_radio emptyalert variable_color stock_color stock_check"
                                                                        required data-color="Chocolate" />
                                                                    <label for="fc-optionChocolate"
                                                                        class="selector-item_label">Chocolate
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> -->

                                                    <div class="pro_brand">
                                                        <p>Brand : {{ selectedProduct.brand_name }}</p>
                                                    </div>

                                                    <div class="row">
                                                        <div class="qty-cart col-6 col-xs-6 col-sm-6">
                                                            <div class="quantity">
                                                                <button @click="decrement" class="minus">-</button>
                                                                <input type="text" v-model="selectedProduct.quantity" readonly />
                                                                <button @click="increment" class="plus">+</button>
                                                            </div>
                                                        </div>
                                                        <div class="col-6 col-xs-6 col-sm-6">
                                                            <button type="button" class="btn px-4 add_cart_btn" @click="addToCart(selectedProduct)">
                                                                <!-- <i class="fa fa-shopping-cart"></i> -->
                                                                কার্ট-এ রাখুন
                                                            </button>
                                                        </div>
                                                        <div class="d-flex single_product col-sm-12">
                                                            <button type="button" class="btn px-4 p_order_now">
                                                                <!-- <i class="fa fa-shopping-cart"></i> -->
                                                                ক্যাশ অন ডেলিভারিতে অর্ডার করুন</button>
                                                        </div>
                                                    </div>

                                                    <!-- <div class="row">
                                                    <div class="col-sm-6">
                                                        <h4 class="font-weight-bold">
                                                            <a class="btn btn-dark w-100 call_now_btn" target="_blank"
                                                                href="https://m.me/sopnojhuribd/">
                                                                <img src="<?php echo base_url('assets/fontend/') ?>frontEnd/images/messenger.png"
                                                                    alt="">
                                                                Chat with us
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <h4 class="font-weight-bold mt-2">
                                                            <a class="btn btn-success w-100 call_now_btn"
                                                                target="_blank" href="https://wa.me/8801877702077">
                                                                <img src="<?php echo base_url('assets/fontend/') ?>frontEnd/images/whatsapp.png"
                                                                    alt="">
                                                                Whatsapp Us
                                                            </a>
                                                        </h4>
                                                    </div>
                                                </div> -->

                                                    <div class="mt-md-2 mt-2">
                                                        <div class="del_charge_area">
                                                            <div class="alert alert-info text-xs">
                                                                <div class="flext_area">
                                                                    <i class="fa-solid fa-truck"></i>
                                                                    <div>
                                                                        <span>ঢাকা সিটির ভিতরে ৮০ টাকা <br /></span>
                                                                        <span>ঢাকা জেলা ১২০ টাকা <br /></span>
                                                                        <span>ঢাকা সিটির বাইরে ১২০ টাকা <br /></span>
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
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

        <div class="description-nav-wrapper">
            <div class="container">
                <div class="row">

                    <div class="col-sm-12">
                        <div class="description-nav">
                            <ul class="desc-nav-ul">

                                <li>
                                    <a href="#description" target="_self">Description</a>
                                </li>

                                <!-- <li>
                                <a href="#writeReview" target="_self">Reviews (0) </a>
                            </li> -->

                                <li>
                                    <a href="#shipping" target="_self">Shipping & Delivery </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="pro_details_area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="description tab-content details-action-box" id="description">
                            <h2>Description</h2>
                            <p>
                            <div style="line-height: 10px;" v-html="selectedProduct.Product_Description"></div>
                            </p>
                        </div>
                        <!-- <div class="tab-content details-action-box" id="writeReview">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="section-head">
                                        <div class="title">
                                            <h2>Reviews (0)</h2>
                                            <p>Get specific details about this product from customers who own it.
                                            </p>
                                        </div>
                                        <div class="action">
                                            <div>
                                                <button type="button"
                                                    class="details-action-btn question-btn btn-overlay"
                                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                    Write a review
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="empty-content">
                                        <i class="fa fa-clipboard-list"></i>
                                        <p class="empty-text">This product has no reviews yet. Be the first one to
                                            write a review.</p>
                                    </div>
                                    <div class="modal fade" id="exampleModal" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Your review
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="insert-review">
                                                        <a class="customer-login-redirect"
                                                            href="../customer/login.html">Login
                                                            to Post
                                                            Your Review</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                        <div class="description tab-content details-action-box" id="shipping">
                            <h2>Shipping & Delivery</h2>
                            <p>
                            <p><b style="font-size: 14px;font-family: inherit;">ডেলিভারি তথ্য:</b></p>
                            <p>- ঢাকার ভেতর: সাধারণ ডেলিভারি ২৪-৪৮ ঘণ্টার মধ্যে। নির্দিষ্ট কিছু এলাকায় রয়েছে জরুরি ডেলিভারির (২৪ ঘণ্টার মধ্যে) ব্যবস্থা রয়েছে। </p>
                            <p>- ঢাকার বাইরে: ডেলিভারি ২-৩ দিনের মধ্যে। </p>
                            <p><b style="font-size: 14px;font-family: inherit;">ডেলিভারি চার্জ:</b></p>
                            <p>- ঢাকার ভেতর: ৬০ টাকা (জরুরি ডেলিভারি: ১২০ টাকা)। </p>
                            <p>- ঢাকার বাইরে: ১২০ টাকা। </p>
                            <p><b style="font-size: 14px;font-family: inherit;">রিটার্ন নীতি:</b></p>
                            <p>- ত্রুটিপূর্ণ/ভুল পণ্য: ডেলিভারিম্যানের কাছে সঙ্গে সঙ্গে ফেরত দিন। </p>
                            <p>- মত পরিবর্তন: পণ্য ফেরত দেওয়া যাবে; তবে ডেলিভারি চার্জ ক্রেতাকে বহন করতে হবে। </p>
                            <p><b style="font-size: 14px;font-family: inherit;">ওয়ারেন্টি নীতি: </b></p>
                            <p>- নির্ধারিত পণ্যে প্রস্তুতকারকের শর্তানুসারে অফিসিয়াল ওয়ারেন্টি প্রদান করা হয়। </p>
                            <br>
                            <p><a href="<?php echo base_url() . 'contact_us' ?>" style="color: var(--wd-link-color);font-size: 14px;font-family: inherit;"><b style="font-size: 14px;font-family: inherit;">বিস্তারিত আরো তথ্যের জন্য আমাদের সাথে যোগাযোগ করুন!</b></a></p>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="pro_vide">
                            <h2>Video</h2>
                            <iframe width="100%" height="315" :src="selectedProduct.Video_Url"
                                title="YouTube video player" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="related-product-section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12">
                        <div class="sec_title">
                            <h3 class="section-title-header">
                                <span class="section-title-name">Related Products</span>
                            </h3>
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

        <!-- Modal -->
        <div class="modal fade" id="sizeChartModal" tabindex="-1" aria-labelledby="sizeChartModalHeader"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <img style="height: auto; width: 100%;" :src="selectedProduct.size_image" :alt="selectedProduct.Product_Name" />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo base_url('assets/fontend/') ?>js/vue/vue.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/axios.min.js"></script>
<script src="<?php echo base_url('assets/fontend/') ?>js/vue/moment.min.js"></script>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                product_slug: '<?php echo $product_slug; ?>',
                selectedProduct: {
                    Product_SlNo: '',
                    Product_Code: '',
                    Product_Name: '',
                    discount_percent: '',
                    Category_Name: '',
                    SubCategory_Name: '',
                    brand_name: '',
                    color_name: '',
                    Unit_Name: '',
                    short_description: '',
                    Product_Description: '',
                    Video_Url: '',
                    Product_Image: '',
                    pro_image: '',
                    size_image: '',
                    Product_SellingPrice: 0.00,
                    Product_PreviousPrice: 0.00,
                    quantity: 1,
                }
            }
        },
        computed: {
            fullImageUrl() {
                return `${this.img_url.replace(/\/$/, '')}/${this.pimage.Gallery_Image.replace(/^\//, '')}`;
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
            if (this.product_slug != '') {
                await this.getProducts();
            }
        },
        methods: {
            increment() {
                this.selectedProduct.quantity++;
            },
            decrement() {
                if (this.selectedProduct.quantity > 1) this.selectedProduct.quantity--;
            },
            async getProducts() {
                await axios.post('/get_product_details', {
                    productSlug: this.product_slug
                }).then(async res => {
                    let product = res.data;
                    let shownProduct = product.map((pro, index) => {
                        pro.quantity = 1;
                        pro.pro_image = this.img_url + pro.Product_Image;
                        pro.size_image = this.img_url + pro.Product_SizeImage;
                        return pro;
                    });

                    shownProduct[0].product_images.forEach(pi => {
                        pi.product_image = this.img_url + 'uploads/product_gallery/' + pi.Gallery_Image;
                    });

                    this.selectedProduct = shownProduct[0];
                })
            },
            addToCart(product) {
                axios.post('/add_to_cart', {
                    productId: product.Product_SlNo,
                    productName: product.Product_Name,
                    saleRate: product.Product_SellingPrice,
                    quantity: product.quantity,
                    productSlug: this.product_slug,
                    productImage: product.pro_image,
                }).then(res => {
                    let r = res.data;
                    if (r.success) {
                        toastr.success(r.message);
                        $(".cartMainCount").text(r.cartMainCount);
                        // $(".mini-cart-wrapper").addClass("active");
                        // $("#page-overlay").show();
                    } else {
                        toastr.error(r.message);
                    }
                })
            }
        }
    })
</script>