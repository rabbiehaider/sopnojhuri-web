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
                                <strong>Trending Products</strong>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="showing-data">
                                        <!-- <span>Showing 1-2 of 2 Results</span> -->
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
                    <div class="col-sm-3 filter_sidebar">
                        <div class="filter_close"><i class="fa fa-long-arrow-left"></i> Filter</div>
                        <div class="sidebar_item wraper__item">
                            <div class="accordion" id="category_sidebar">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseCat" aria-expanded="true" aria-controls="collapseOne">
                                            Trending Categories
                                        </button>
                                    </h2>
                                    <div id="collapseCat" class="accordion-collapse collapse show" data-bs-parent="#category_sidebar" v-if="categories.length > 0" style="display:none;" v-bind:style="{display: categories.length > 0 ? '' : 'none'}">
                                        <div class="accordion-body cust_according_body">
                                            <ul>
                                                <li v-for="(scat, scSl) in categories">
                                                    <a :href="`/category/${scat.route}`">{{ scat.Category_Name }}</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--sidebar item end-->
                        <div class="sidebar_item wraper__item">
                            <div class="accordion" id="price_sidebar">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapsePrice" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            Price
                                        </button>
                                    </h2>
                                    <div id="collapsePrice" class="accordion-collapse collapse show"
                                        data-bs-parent="#price_sidebar">
                                        <div class="accordion-body cust_according_body">
                                            <div class="category-filter-box">
                                                <div class="category-filter-item">
                                                    <div class="filter-body">
                                                        <div class="slider-box">
                                                            <div class="filter-price-inputs">
                                                                <p class="min-price">৳ <input type="text"
                                                                        name="min_price" id="min_price" v-model="minPrice"
                                                                        readonly="" />
                                                                </p>
                                                                <p class="max-price">৳ <input type="text"
                                                                        name="max_price" id="max_price" v-model="maxPrice"
                                                                        readonly="" />
                                                                </p>
                                                            </div>

                                                            <div class="form-attribute range-slider">

                                                                <input
                                                                    type="range"
                                                                    v-model="minPrice"
                                                                    :min="minRange"
                                                                    :max="maxRange"
                                                                    step="10" v-on:input="getProducts" />
                                                                <input
                                                                    type="range"
                                                                    v-model="maxPrice"
                                                                    :min="minRange"
                                                                    :max="maxRange"
                                                                    step="10" v-on:input="getProducts" />
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
                        <!--sidebar item end-->
                        <div class="sidebar_item wraper__item">
                            <div class="accordion" id="filter_sidebar">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#collapseFilter" aria-expanded="true"
                                            aria-controls="collapseOne">
                                            Filter
                                        </button>
                                    </h2>
                                    <div id="collapseFilter" class="accordion-collapse collapse show"
                                        data-bs-parent="#filter_sidebar" v-if="categories.length > 0" style="display:none;" v-bind:style="{display: categories.length > 0 ? '' : 'none'}">
                                        <div class="accordion-body cust_according_body">
                                            <div class="filter-body">
                                                <ul class="space-y-3">
                                                    <li v-for="(fscat, index) in categories" :key="fscat.Category_SlNo" class="subcategory-filter-list">
                                                        <label :for="'subcat_' + fscat.Category_SlNo" class="subcategory-filter-label">
                                                            <input type="checkbox" class="form-checkbox form-attribute" :id="'subcat_' + fscat.Category_SlNo" v-bind:value="fscat.Category_SlNo" v-model="selectedCategory" @change="getProducts">
                                                            <p class="subcategory-filter-name">
                                                                {{ fscat.Category_Name }}
                                                            </p>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--sidebar item end-->
                    </div>
                    <div class="col-sm-9">
                        <div class="row" v-if="products.length > 0" style="display:none;" v-bind:style="{display: products.length > 0 ? '' : 'none'}">
                            <div class="col-6 col-xs-6 col-sm-6 col-md-4 col-lg-3" v-for="(hproduct, hpi) in products" :key="hpi">
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
                        <div class="row" v-else>
                            <div class="col-12">
                                <span>No products found!</span>
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
        el: '#WEB_DATA',
        data() {
            return {
                img_url: "<?php echo $iurl; ?>",

                maxPrice: parseFloat('<?php echo $maxPrice; ?>'),
                minPrice: parseFloat('<?php echo $minPrice; ?>'),
                maxRange: parseFloat('<?php echo $maxPrice; ?>'),
                minRange: parseFloat('<?php echo $minPrice; ?>'),
                filterType: 'new',
                categories: [],
                selectedCategory: [],
                products: []
            }
        },
        computed: {
            trackStyle() {
                let range = this.maxRange - this.minRange;
                let left = ((this.minPrice - this.minRange) / range) * 100;
                let right = 100 - ((this.maxPrice - this.minRange) / range) * 100;

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
                await axios.post('/get_product_categories', {
                    isTrending: 'true'
                }).then(async res => {
                    let categories = res.data;
                    this.categories = categories;
                })
            },
            async getProducts() {
                await axios.post('/get_products', {
                    minPrice: this.minPrice,
                    maxPrice: this.maxPrice,
                    selectedCategory: this.selectedCategory,
                    filterType: this.filterType,
                    isTrending: 'true'                    
                }).then(async res => {
                    let products = res.data;
                    this.products = products.map((pro, index) => {
                        pro.pro_image = this.img_url + pro.Product_Image;
                        return pro;
                    });
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