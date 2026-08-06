<div id="content">
    <div id="WEB_DATA">
        <!-- Breadcrumb / Header Section -->
        <section class="homeproduct product-section">
            <div class="container">
                <div class="sorting-section">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="category-breadcrumb d-flex align-items-center">
                                <a href="<?= base_url() ?>">Home</a>
                                <span>/</span>
                                <strong>Search Results</strong>
                            </div>
                        </div>
                        <div class="col-sm-6 text-sm-right mt-2 mt-sm-0">
                            <div class="showing-data">
                                <span v-if="keyword">Search keyword: <strong>"{{ keyword }}"</strong></span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Search Input Form inside search page -->
                <div class="row justify-content-center my-4">
                    <div class="col-md-6 col-sm-8 col-11">
                        <div class="input-group" style="box-shadow: 0 4px 12px rgba(0,0,0,0.05); border-radius: 50px; overflow: hidden; border: 1px solid #156274;">
                            <input type="text" v-model="keyword" @keyup.enter="fetchProducts" class="form-control border-0 px-4" placeholder="Search product name or code..." style="height: 46px; outline: none; border-radius: 0;">
                            <div class="input-group-append">
                                <button class="btn text-white px-4 border-0" @click="fetchProducts" style="background-color: #156274; font-weight: 500; font-size: 0.95rem; border-radius: 0;">Search</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Products Grid -->
                <div class="row">
                    <div class="col-sm-12">
                        
                        <!-- Loading spinner -->
                        <div v-if="loading" class="text-center py-5">
                            <div class="spinner-border text-primary" role="status" style="color: #156274 !important;">
                                <span class="sr-only">Loading...</span>
                            </div>
                        </div>

                        <!-- Product List -->
                        <div v-else>
                            <div class="row" v-if="products.length > 0">
                                <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-2" v-for="(item, index) in products" :key="index">
                                    <div class="product_item wist_item">
                                        <div class="product_item_inner">
                                            
                                            <!-- Discount Badge -->
                                            <div class="sale-badge" v-if="item.discount_percent > 0">
                                                <div class="sale-badge-inner">
                                                    <div class="sale-badge-box">
                                                        <span class="sale-badge-text">
                                                            <p>{{ item.discount_percent | pDecimal }}%</p> Off
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Image -->
                                            <div class="pro_img">
                                                <a :href="`/product/${item.slug}`">
                                                    <img :src="item.pro_image" :alt="item.Product_Name" />
                                                </a>
                                            </div>

                                            <!-- Details -->
                                            <div class="pro_des">
                                                <div class="pro_name">
                                                    <a :href="`/product/${item.slug}`">{{ item.Product_Name }}</a>
                                                </div>
                                                <div class="pro_price">
                                                    <p style="display: flex; justify-content: center; align-items: center; gap: 5px; flex-wrap: wrap;">
                                                        <del v-if="item.Product_PreviousPrice > item.Product_SellingPrice">৳ {{ item.Product_PreviousPrice }}</del>
                                                        <span>৳ {{ item.Product_SellingPrice }}</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Order Button -->
                                        <div class="pro_btn">
                                            <div class="cart_btn order_button">
                                                <button @click="orderNow(item)">Order Now </button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <!-- No Product Found -->
                            <div v-else class="text-center py-5">
                                <svg width="70" height="70" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style="opacity: 0.35; margin-bottom: 12px;">
                                    <path d="M15.5 14H14.71L14.43 13.73C15.41 12.59 16 11.11 16 9.5C16 5.91 13.09 3 9.5 3C5.91 3 3 5.91 3 9.5C3 13.09 5.91 16 9.5 16C11.11 16 12.59 15.41 13.73 14.43L14 14.71V15.5L19 20.49L20.49 19L15.5 14ZM9.5 14C7.01 14 5 11.99 5 9.5C5 7.01 7.01 5 9.5 5C11.99 5 14 7.01 14 9.5C14 11.99 11.99 14 9.5 14Z" fill="#2c3e50"/>
                                </svg>
                                <h3 style="color: #718096; font-weight: 600; font-family: 'Jost', sans-serif; font-size: 1.5rem;">No Product Found</h3>
                                <p style="color: #a0aec0; font-size: 0.95rem;">Please check your spelling or search for another keyword.</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<script>
    new Vue({
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",
                keyword: <?php echo json_encode($keyword); ?>,
                products: [],
                loading: false,
            }
        },
        filters: {
            pDecimal(value) {
                return value == null || value == '' ? '0' : parseFloat(value).toFixed(0);
            }
        },
        created() {
            if (this.keyword.trim() !== '') {
                this.fetchProducts();
            }
        },
        methods: {
            async fetchProducts() {
                if (this.keyword.trim() === '') return;
                
                // Update address bar search parameter without page refresh
                const newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?keyword=' + encodeURIComponent(this.keyword);
                window.history.pushState({ path: newUrl }, '', newUrl);

                this.loading = true;
                await axios.post('/get_products', {
                    name: this.keyword
                }).then(res => {
                    this.products = res.data.map(pro => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        return pro;
                    });
                }).catch(err => {
                    console.error(err);
                }).finally(() => {
                    this.loading = false;
                });
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