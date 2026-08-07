<!-- content end -->
<?php $fwebsite = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row(); ?>
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mb-3 mb-sm-0">
                    <div class="footer-about">
                        <a href="/">
                            <img src="<?= $iurl . $fwebsite->Footer_Logo ?>" alt="<?= $fwebsite->Website_Name ?>" />
                        </a>
                        <p style="margin:0 !important;"><a href="#" class="footer-hotlint"><?= $fwebsite->Website_TagLine ?></a></p>
                        <p><i class="fa fa-map-marker"></i> <?= $fwebsite->Website_Address ?></p>
                        <p><a href="mailto:<?= $fwebsite->Website_Email ?>" class="footer-hotlint"><i class="fa fa-envelope"></i> <?= $fwebsite->Website_Email ?></a></p>
                        <p><a href="tel:<?= $fwebsite->Website_Mobile ?>" class="footer-hotlint"><i class="fa fa-phone"></i> <?= $fwebsite->Website_Mobile ?></a></p>
                    </div>
                </div>
                <!-- col end -->
                <div class="col-sm-3 mb-3 col-6">
                    <div class="footer-menu">
                        <ul>
                            <li class="title"><a>Customer</a></li>
                            <li> <a href="<?= $this->session->userdata("customer_id") != '' ? base_url('customer/account') : base_url('customer/login') ?>">Account</a></li>
                            <li><a href="<?= $this->session->userdata("customer_id") != '' ? base_url('customer/checkout') : base_url('customer/login') ?>">My Cart</a> </li>
                            <li><a href="<?= $this->session->userdata("customer_id") != '' ? base_url('customer/orders') : base_url('customer/login') ?>">My Orders</a> </li>
                            <li><a href="<?= $this->session->userdata("customer_id") != '' ? base_url('customer/checkout') : base_url('customer/login') ?>">Checkout</a> </li>
                            <li><a href="<?= base_url('track-order') ?>">Track Order</a> </li>
                            <!-- <li><a href="<?= base_url('faqs') ?>">FAQ</a> </li> -->
                        </ul>
                    </div>
                </div>
                <!-- col end -->
                <div class="col-sm-2 mb-3 col-6">
                    <div class="footer-menu">
                        <ul>
                            <li class="title"><a>Information</a></li>
                            <li><a href="<?= base_url('about-us') ?>">About us</a></li>
                            <li><a href="<?= base_url('contact-us') ?>">Contact Us</a></li>
                            <li><a href="<?= base_url('return-refund') ?>">Returns & Refund</a></li>
                            <li><a href="<?= base_url('privacy-policy') ?>">Privacy Policy</a></li>
                            <li><a href="<?= base_url('terms-conditions') ?>">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>

                <!-- col end -->
                <div class="col-sm-3 mb-3 mb-sm-0">
                    <div class="footer-menu">
                        <ul>
                            <li class="title stay_conn"><a>Stay Connected</a></li>
                        </ul>
                        <ul class="social_link">
                            <li class="social_list">
                                <a class="mobile-social-link" target="_blank" href="<?= $fwebsite->Facebook_Url; ?>"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li class="social_list">
                                <a class="mobile-social-link" href="tel:<?= $fwebsite->Website_Mobile ?>"><i class="fa fa-phone"></i></a>
                            </li>
                            <li class="social_list">
                                <a class="mobile-social-link" target="_blank" href="<?= $fwebsite->Youtube_Url; ?>"><i class="fa-brands fa-youtube"></i></a>
                            </li>
                            <li class="social_list">
                                <a class="mobile-social-link" target="_blank" href="<?= $fwebsite->Instragram_Url; ?>"><i class="fa-brands fa-instagram"></i></a>
                            </li>
                        </ul>
                        <div class="d_app">
                            <h2>Download App</h2>
                            <a href="#">
                                <img src="<?= base_url('assets/fontend/') ?>images/app-download.png" alt="" />
                            </a>
                        </div>
                    </div>
                </div>
                <!-- col end -->
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="copyright">
                        <p>Copyright © <?= date('Y'); ?> <?= $fwebsite->Website_Name ?>. All Rights Reserved. Design & Developed By <a href="<?= $fwebsite->Developer_Url ?>" target="_blank"><?= $fwebsite->Developed_By ?></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--=====-->

<!--=========-->
<div class="footer_nav">
    <ul>
        <li>
            <a class="toggle">
                <span>
                    <i class="fa-solid fa-bars"></i>
                </span>
                <span>Category</span>
            </a>
        </li>

        <li>
            <a href="https://www.facebook.com/share/g/19tBYq7Lyw/?mibextid=wwXIfr" target="_blank">
                <span>
                    <i class="fa-solid fa-message"></i>
                </span>
                <span>Review</span>
            </a>
        </li>

        <li class="mobile_home">
            <a href="/">
                <img src="<?= $iurl . $fwebsite->Mobile_Logo ?>" alt="<?= $fwebsite->Website_Name ?>" style="    border-radius: 50%;" />
                <!-- <span><i class="fa-solid fa-home"></i></span> <span>Home</span> -->
            </a>
        </li>

        <li>
            <button class="cart-toggle-button">
                <span>
                    <i class="fa-solid fa-cart-shopping"></i>
                </span>
                <span>Cart (<b class="mobilecart-qty">0</b>)</span>
            </button>
        </li>
        <li>
            <?php if ($this->session->userdata("customer_id") != '') { ?>
                <a href="<?= base_url('customer/account') ?>">
                    <span><i class="fa-solid fa-user"></i></span>
                    <span>Account</span>
                </a>
            <?php } else { ?>
                <a href="<?= base_url('customer/login') ?>">
                    <span><i class="fa-solid fa-user"></i></span>
                    <span>Login</span>
                </a>
            <?php } ?>
        </li>
    </ul>
</div>

<div class="scrolltop" style="">
    <div class="scroll">
        <i class="fa fa-angle-up"></i>
    </div>
</div>

<!-- cart sidebar button-->
<div class="fixed_whats">
    <a href="https://api.whatsapp.com/send/?phone=88<?= $fwebsite->Website_Mobile; ?>" target="_blank"><i class="fa-brands fa-whatsapp"></i></a>
</div>

<div class="fixed_mess">
    <a href="https://m.me/<?= $fwebsite->Messenger_Url; ?>" target="_blank"><i class="fa-brands fa-facebook-messenger"></i></a>
</div>

<!-- /. fixed sidebar -->

<div id="custom-modal"></div>
<div id="page-overlay"></div>
<div id="loading">
    <div class="custom-loader"></div>
</div>

<!-- cart sidebar -->
<!-- <div class="mini-cart-wrapper">
    <div class="mini-cart-header">
        <p>
            <i class="fa-solid fa-shopping-cart"></i>
            0 items - (0 TK)
        </p>
        <button class="mini-close-button mini-close-cart">
            <i class="fa-solid fa-times"></i>
        </button>
    </div>
    <button class="mini-close-button floating-close-button"><i class="fa-solid fa-angle-right"></i></button>

    <div class="empty-cart">
        <div class="empty-img">
            <img src="<?= base_url('assets/fontend/') ?>images/empty-cart.webp" alt="">
        </div>
    </div>
    <script></script>
</div> -->
<!-- cart sidebar -->


<!-- cart sidebar -->
<div id="sidebarCart">
    <div class="mini-cart-wrapper">
        <div class="mini-cart-header">
            <p>
                <i class="fa-solid fa-shopping-cart"></i>
                {{ cart_count }} items - ({{ sub_total }} TK)
            </p>
            <button class="mini-close-button mini-close-cart">
                <i class="fa-solid fa-times"></i>
            </button>
        </div>
        <div class="mini-cart-body">

            <div class="mini-cart-item" v-for="(item, index) in cart" :key="item.id">
                <div class="cart-item-image">
                    <img :src="item.image" :alt="item.name">
                </div>
                <div class="cart-item-content">
                    <div class="cart-product"><a :href="`/product/${item.slug}`">{{ item.name }}</a></div>
                    <div class="cart-item-subtotal"><strong>{{ item.price }} TK</strong></div>
                </div>
                <div class="cart-quantity-content">
                    <button v-if="item.qty == 1" class="mini-cart-change" @click="deleteCartItem(item)"><i class="fa fa-trash-alt"></i></button>
                    <button v-else class="mini-cart-change" @click="decrementQty(index)"><i class="fa fa-minus"></i></button>
                    <span>{{ item.qty }}</span>
                    <button class="mini-cart-change" @click="incrementQty(index)"><i class="fa fa-plus"></i></button>
                </div>
            </div>
        </div>

        <div class="mini-cart-checkout">
            <div class="mini-cart-summary">
                <ul>
                    <li><span>Subtotal</span><span>{{ sub_total }} Tk</span></li>
                </ul>
            </div>

            <a href="<?php echo base_url() . 'customer/checkout'; ?>" class="mini-cart-order order_place">
                <i class="fa fa-shopping-cart"></i>
                ক্যাশ অন ডেলিভারিতে অর্ডার করুন
            </a>
        </div>
        <button class="mini-close-button floating-close-button"><i class="fa-solid fa-angle-right"></i></button>
        <script></script>
    </div>
</div>

<script src="<?= base_url('assets/fontend/') ?>js/bootstrap.min.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/owl.carousel.min.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/mobile-menu.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/mobile-menu-init.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/wow.min.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/lightbox-plus-jquery.min.js"></script>
<script>
    new WOW().init();
</script>
<!-- feather icon -->
<script src="<?= base_url('assets/fontend/') ?>js/feather.min.js"></script>
<script>
    feather.replace();
</script>

<script src="<?= base_url('assets/fontend/') ?>js/toastr.min.js"></script>
<script>
    toastr.options = {
        toastClass: 'toast show'
    };
</script>
<script src="<?= base_url('assets/fontend/') ?>js/owl.carousel.min.js"></script>
<script src="<?= base_url('assets/fontend/') ?>js/zoomsl.min.js"></script>
<script>
    $(document).ready(function() {
        $(".details_slider").owlCarousel({
            margin: 15,
            items: 1,
            loop: true,
            dots: false,
            nav: false,
            autoplay: false,
        });
        $(".indicator-item,.color-item").on("click", function() {
            var slideIndex = $(this).data('id');
            $('.details_slider').trigger('to.owl.carousel', slideIndex);
        });
    });
</script>

<script>
    $(document).ready(function() {
        $(".main_slider").owlCarousel({
            items: 1,
            loop: true,
            dots: false,
            autoplay: true,
            nav: true,
            autoplayHoverPause: false,
            margin: 0,
            mouseDrag: true,
            smartSpeed: 8000,
            autoplayTimeout: 3000,
            animateOut: "fadeOutDown",
            animateIn: "slideInDown",

            navText: ["<i class='fa-solid fa-angle-left'></i>",
                "<i class='fa-solid fa-angle-right'></i>"
            ],
        });
    });
</script>

<script>
    let vueInstance = null;

    $(".toggle").on("click", function() {
        $("#page-overlay").show();
        $(".mobile-menu").addClass("active");
    });
    $(".cart-toggle").on("click", function() {
        $(".mini-cart-wrapper").addClass("active");
    });

    $(document).on('click', '.cart-toggle-button', function(e) {
        $("#page-overlay").show();
        $(".mini-cart-wrapper").addClass("active");

        if (!vueInstance) {
            vueInstance = new Vue({
                el: '#sidebarCart',
                data() {
                    return {
                        cart: [],
                        cart_count: '',
                        sub_total: '',
                    }
                },
                async created() {
                    this.fetchCartData();
                    setInterval(() => {
                        // this.fetchCartData();
                    }, 5000);
                },
                methods: {
                    async fetchCartData() {
                        await axios.get('/get_cart_contents').then(res => {
                            let data = res.data;
                            this.cart = data.cart;
                            this.cart_count = data.cart_count;
                            this.sub_total = data.sub_total;
                        })
                    },
                    incrementQty(index) {
                        this.cart[index].qty++;
                        this.updateCartItem(this.cart[index]);
                    },
                    decrementQty(index) {
                        if (this.cart[index].qty > 1) {
                            this.cart[index].qty--;
                            this.updateCartItem(this.cart[index]);
                        }
                    },
                    deleteCartItem(item) {
                        axios.post('/remove_cart_item', {
                            id: item.id
                        }).then(res => {
                            let r = res.data;
                            if (r.success) {
                                this.fetchCartData();
                                $(".cartMainCount").text(r.cartMainCount);
                            } else {
                                toastr.error('Item remove error!');
                            }

                        })
                    },
                    updateCartItem(item) {
                        axios.post('/update_cart_quantity', {
                            id: item.id,
                            qnty: item.qty
                        }).then(res => {
                            let r = res.data;
                            if (r.success) {
                                this.fetchCartData();
                            } else {
                                toastr.error('Update quantity error!');
                            }

                        })
                    }
                }
            });
        }
    });

    $(".toggle-desktop").on("click", function() {
        $("#page-overlay").show();
        $(".desktop-menu").addClass("active");
    });

    $("#page-overlay").on("click", function() {
        $("#page-overlay").hide();
        $(".mobile-menu").removeClass("active");
        $(".feature-products").removeClass("active");
        $(".mini-cart-wrapper").removeClass("active");
    });

    $(".mobile-menu-close").on("click", function() {
        $("#page-overlay").hide();
        $(".mobile-menu").removeClass("active");
    });

    $(".desktop-menu-close").on("click", function() {
        $("#page-overlay").hide();
        $(".desktop-menu").removeClass("active");
    });

    $(".mobile-filter-toggle").on("click", function() {
        $("#page-overlay").show();
        $(".feature-products").addClass("active");
    });
    $(document).on('click', '.mini-close-button', function(e) {
        $(".mini-cart-wrapper").removeClass("active");
        $("#page-overlay").hide();
    });
</script>
<script>
    $(document).ready(function() {
        $(".parent-category").each(function() {
            const menuCatToggle = $(this).find(".menu-category-toggle");
            const secondNav = $(this).find(".second-nav");

            menuCatToggle.on("click", function() {
                menuCatToggle.toggleClass("active");
                secondNav.slideToggle("fast");
                $(this).closest(".parent-category").toggleClass("active");
            });
        });
        $(".parent-subcategory").each(function() {
            const menuSubcatToggle = $(this).find(".menu-subcategory-toggle");
            const thirdNav = $(this).find(".third-nav");

            menuSubcatToggle.on("click", function() {
                menuSubcatToggle.toggleClass("active");
                thirdNav.slideToggle("fast");
                $(this).closest(".parent-subcategory").toggleClass("active");
            });
        });
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        window.addEventListener("scroll", function() {
            if (window.scrollY > 200) {
                document.getElementById("navbar_top").classList.add("fixed-top");
            } else {
                document.getElementById("navbar_top").classList.remove("fixed-top");
                document.body.style.paddingTop = "0";
            }
        });
    });

    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            $(".scrolltop:hidden").stop(true, true).fadeIn();
        } else {
            $(".scrolltop").stop(true, true).fadeOut();
        }
    });
    $(function() {
        $(".scroll").click(function() {
            $("html,body").animate({
                scrollTop: $(".gotop").offset().top
            }, "1000");
            return false;
        });
    });
</script>
<script>
    $(".filter_btn").click(function() {
        $(".filter_sidebar").addClass("active");
        $("body").css("overflow-y", "hidden");
    });
    $(".filter_close").click(function() {
        $(".filter_sidebar").removeClass("active");
        $("body").css("overflow-y", "auto");
    });
</script>
<script>
    // Disable right-click except on input fields
    document.addEventListener('contextmenu', function(e) {
        let tagName = e.target.tagName.toLowerCase();
        if (tagName !== 'input' && tagName !== 'textarea' && tagName !== 'select') {
            e.preventDefault();
        }
    });

    // Disable keyboard shortcuts for inspecting code
    document.addEventListener('keydown', function(e) {
        // Disable F12
        if (e.keyCode === 123) {
            e.preventDefault();
            return false;
        }
        // Disable Ctrl+Shift+I, Ctrl+Shift+J, Ctrl+Shift+C
        if (e.ctrlKey && e.shiftKey && (e.keyCode === 73 || e.keyCode === 74 || e.keyCode === 67)) {
            e.preventDefault();
            return false;
        }
        // Disable Ctrl+U (View Source) and Ctrl+S (Save Page)
        if (e.ctrlKey && (e.keyCode === 85 || e.keyCode === 83)) {
            e.preventDefault();
            return false;
        }
    });
</script>
</body>

</html>