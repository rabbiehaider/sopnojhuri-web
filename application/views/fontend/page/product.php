<div id="content">
    <style scoped>
        .price-filter {
            border: 1px solid #ddd;
            width: 300px;
            font-family: Arial, sans-serif;
        }

        .header {
            background: #167389;
            color: #fff;
            padding: 8px 10px;
            display: flex;
            justify-content: space-between;
            font-weight: bold;
        }

        .range-slider {
            position: relative;
            width: 100%;
            height: 6px;
            margin: 15px 0;
        }

        .range-slider input[type="range"] {
            position: absolute;
            width: 100%;
            pointer-events: none;
            -webkit-appearance: none;
            background: none;
        }

        .range-slider input[type="range"]::-webkit-slider-thumb {
            pointer-events: all;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: #fff;
            border: 2px solid #167389;
            cursor: pointer;
            -webkit-appearance: none;
        }

        .slider-track {
            position: absolute;
            height: 8px;
            background: #167389;
            top: 6px;
            border-radius: 5px;
        }
    </style>

    <div id="WEB_DATA">
        <section class="homeproduct product-section">
            <div class="container">
                <div class="sorting-section">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="category-breadcrumb d-flex align-items-center">
                                <a href="<?= base_url() ?>">Home</a>
                                <span>/</span>
                                <strong v-if="keyword">Search: "{{ keyword }}"</strong>
                                <strong v-else>Shop</strong>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="showing-data">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="filter_sort">
                                        <div class="filter_btn">
                                            <i class="fa fa-list-ul"></i>
                                        </div>
                                        <div class="page-sort" style="border: 1px solid #167389;border-radius: 4px;">
                                            <select name="sort" class="form-control form-select sort" v-model="filterType" @change="getProducts">
                                                <option value="new">Product: Latest</option>
                                                <option value="old">Product: Oldest</option>
                                                <option value="hl">Price: High To Low</option>
                                                <option value="lh">Price: Low To High</option>
                                                <option value="az">Name: A-Z</option>
                                                <option value="za">Name: Z-A</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- Sidebar Filters -->
                    <div class="col-sm-3 filter_sidebar">
                        <div class="filter_close"><i class="fa fa-long-arrow-left"></i> Filter</div>
                        
                        <!-- Categories Checklist -->
                        <div class="sidebar_item wraper__item mb-4">
                            <div class="accordion" id="category_sidebar">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button text-left" type="button" data-bs-toggle="collapse" data-bs-target="#collapseCat" aria-expanded="true" style="font-weight: 600;">
                                            Categories
                                        </button>
                                    </h2>
                                    <div id="collapseCat" class="accordion-collapse collapse show" data-bs-parent="#category_sidebar" v-if="categories.length > 0" style="display:none;" v-bind:style="{display: categories.length > 0 ? '' : 'none'}">
                                        <div class="accordion-body cust_according_body">
                                            <div class="filter-body">
                                                <ul class="space-y-3" style="list-style: none; padding-left: 0;">
                                                    <li v-for="(cat, index) in categories" :key="cat.Category_SlNo" class="subcategory-filter-list mb-2">
                                                        <label :for="'cat_' + cat.Category_SlNo" class="subcategory-filter-label d-flex align-items-center" style="cursor: pointer; gap: 8px;">
                                                            <input type="checkbox" class="form-checkbox form-attribute" :id="'cat_' + cat.Category_SlNo" v-bind:value="cat.Category_SlNo" v-model="selectedCategory" @change="getProducts">
                                                            <span class="subcategory-filter-name" style="font-size: 14px; color: #4a5568;">
                                                                {{ cat.Category_Name }}
                                                            </span>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Price range slider -->
                        <div class="sidebar_item wraper__item mb-4">
                            <div class="accordion" id="price_sidebar">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button text-left" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePrice" aria-expanded="true" style="font-weight: 600;">
                                            Price Range
                                        </button>
                                    </h2>
                                    <div id="collapsePrice" class="accordion-collapse collapse show" data-bs-parent="#price_sidebar">
                                        <div class="accordion-body cust_according_body">
                                            <div class="category-filter-box">
                                                <div class="category-filter-item">
                                                    <div class="filter-body">
                                                        <div class="slider-box">
                                                            <div class="filter-price-inputs">
                                                                <p class="min-price">৳ <input type="text" name="min_price" id="min_price" v-model="minPrice" readonly="" /></p>
                                                                <p class="max-price">৳ <input type="text" name="max_price" id="max_price" v-model="maxPrice" readonly="" /></p>
                                                            </div>

                                                            <div class="form-attribute range-slider">
                                                                <input type="range" v-model="minPrice" :min="minRange" :max="maxRange" step="10" v-on:input="getProducts" />
                                                                <input type="range" v-model="maxPrice" :min="minRange" :max="maxRange" step="10" v-on:input="getProducts" />
                                                                <div class="slider-track" :style="trackStyle"></div>
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

                    <!-- Products Grid -->
                    <div class="col-sm-9">
                        <!-- Loading spinner -->
                        <div v-if="loading" class="text-center py-5">
                            <div class="spinner-border text-primary" role="status" style="color: #156274 !important; width: 3rem; height: 3rem;">
                                <span class="sr-only">Loading...</span>
                            </div>
                        </div>

                        <!-- Product List -->
                        <div v-else>
                            <div class="row" v-if="products.length > 0" style="display:none;" v-bind:style="{display: products.length > 0 ? '' : 'none'}">
                                <div class="col-6 col-xs-6 col-sm-6 col-md-4 col-lg-3 mb-4" v-for="(hproduct, hpi) in products" :key="hpi">
                                    <div class="product_item wist_item">
                                        <div class="product_item_inner">
                                            <!-- Discount Badge -->
                                            <div class="sale-badge" v-if="hproduct.discount_percent > 0">
                                                <div class="sale-badge-inner">
                                                    <div class="sale-badge-box">
                                                        <span class="sale-badge-text">
                                                            <p>{{ hproduct.discount_percent | pDecimal }}%</p> Off
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Product Image -->
                                            <div class="pro_img">
                                                <a :href="`/product/${hproduct.slug}`">
                                                    <img :src="hproduct.pro_image" :alt="hproduct.Product_Name" />
                                                </a>
                                            </div>

                                            <!-- Product Details -->
                                            <div class="pro_des">
                                                <div class="pro_name">
                                                    <a :href="`/product/${hproduct.slug}`">{{ hproduct.Product_Name }}</a>
                                                </div>
                                                <div class="pro_price">
                                                    <p>
                                                        <del v-if="hproduct.Product_PreviousPrice > hproduct.Product_SellingPrice">৳ {{ hproduct.Product_PreviousPrice }}</del>
                                                        ৳ {{ hproduct.Product_SellingPrice }}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Order Button -->
                                        <div class="pro_btn">
                                            <div class="cart_btn order_button">
                                                <button @click="orderNow(hproduct)">Order Now</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- No Product Found -->
                            <div class="row" v-else>
                                <div class="col-12 text-center py-5">
                                    <svg width="70" height="70" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style="opacity: 0.3; margin-bottom: 15px;">
                                        <path d="M15.5 14H14.71L14.43 13.73C15.41 12.59 16 11.11 16 9.5C16 5.91 13.09 3 9.5 3C5.91 3 3 5.91 3 9.5C3 13.09 5.91 16 9.5 16C11.11 16 12.59 15.41 13.73 14.43L14 14.71V15.5L19 20.49L20.49 19L15.5 14ZM9.5 14C7.01 14 5 11.99 5 9.5C5 7.01 7.01 5 9.5 5C11.99 5 14 7.01 14 9.5C14 11.99 11.99 14 9.5 14Z" fill="#2d3748"/>
                                    </svg>
                                    <h3 style="color: #718096; font-weight: 600; font-family: 'Jost', sans-serif;">No products found!</h3>
                                    <p style="color: #a0aec0;">Try altering your search query or sidebar filters.</p>
                                </div>
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
                keyword: <?php echo json_encode($keyword); ?> || '',

                maxPrice: parseFloat('<?php echo $maxPrice; ?>'),
                minPrice: parseFloat('<?php echo $minPrice; ?>'),
                maxRange: parseFloat('<?php echo $maxPrice; ?>'),
                minRange: parseFloat('<?php echo $minPrice; ?>'),
                filterType: 'new',
                categories: [],
                selectedCategory: [],
                products: [],
                loading: false,
            }
        },
        computed: {
            trackStyle() {
                let range = this.maxRange - this.minRange;
                let left = range > 0 ? ((this.minPrice - this.minRange) / range) * 100 : 0;
                let right = range > 0 ? 100 - ((this.maxPrice - this.minRange) / range) * 100 : 0;

                return {
                    left: left + "%",
                    right: right + "%",
                };
            },
        },
        watch: {
            minPrice(val) {
                if (parseInt(val) >= this.maxPrice) {
                    this.minPrice = this.maxPrice - 10;
                }
            },
            maxPrice(val) {
                if (parseInt(val) <= this.minPrice) {
                    this.maxPrice = this.minPrice + 10;
                }
            },
        },
        filters: {
            pDecimal(value) {
                return value == null || value == '' ? '0' : parseFloat(value).toFixed(0);
            }
        },
        async created() {
            await this.getCategories();
            await this.getProducts();
        },
        methods: {
            async getCategories() {
                await axios.get('/get_categories').then(res => {
                    this.categories = res.data;
                });
            },
            async getProducts() {
                // Update search URL if search input is used directly from inside this page
                if (this.keyword && this.keyword.toString().trim() !== '') {
                    const newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname + '?keyword=' + encodeURIComponent(this.keyword);
                    window.history.pushState({ path: newUrl }, '', newUrl);
                } else {
                    const newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
                    window.history.pushState({ path: newUrl }, '', newUrl);
                }

                this.loading = true;
                await axios.post('/get_products', {
                    name: this.keyword,
                    minPrice: this.minPrice,
                    maxPrice: this.maxPrice,
                    selectedCategory: this.selectedCategory,
                    filterType: this.filterType
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