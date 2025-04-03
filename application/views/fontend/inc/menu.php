<?php
$mwebsite = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row();

$topCats = $this->db->query("SELECT * FROM tbl_category WHERE is_home = 'true' AND status = 'a'")->result();
$categories = $this->db->query("SELECT * FROM tbl_category WHERE status = 'a'")->result();

foreach ($categories as $cat) {
    $cat->subCategories = $this->db->query("SELECT sc.*
        FROM tbl_sub_category sc
        WHERE sc.Category_SlNo = ?
        AND sc.status = 'a'
    ", $cat->Category_SlNo)->result();
}

?>
<div class="mobile-menu">
    <div class="mobile-menu-logo">
        <div class="logo-image">
            <a href="/"> <img src="<?php echo $iurl . $mwebsite->Footer_Logo ?>" alt="<?php echo $mwebsite->Website_Name ?>" /></a>
        </div>
        <div class="mobile-menu-close">
            <i class="fa fa-times"></i>
        </div>
    </div>
    <?php if (isset($categories)) { ?>
        <ul class="first-nav">
            <?php foreach ($categories as $key => $category) { ?>
                <li class="parent-category">
                    <a href="<?php echo base_url() . 'category/' . $category->route ?>" class="menu-category-name">
                        <img src="<?php echo $iurl . $category->Category_Image ?>" alt="<?php echo $category->Category_Name ?>" class="side_cat_img" />
                        <?php echo $category->Category_Name ?>
                    </a>

                    <?php if (isset($category->subCategories)) { ?>
                        <span class="menu-category-toggle">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                        <ul class="second-nav" style="display: none;">

                            <?php foreach ($category->subCategories as $key2 => $subcategory) { ?>
                                <li class="parent-subcategory">
                                    <a href="<?php echo base_url() . 'scategory/' . $subcategory->route ?>" class="menu-subcategory-name"><?php echo $subcategory->SubCategory_Name ?></a>
                                </li>
                            <?php } ?>
                        </ul>

                    <?php } ?>
                </li>
            <?php } ?>
        </ul>
    <?php } ?>
</div>

<!-- Topbar section End  -->
<header>
    <div class="mobile-header">
        <div class="mobile-logo">
            <div class="menu-bar">
                <a class="toggle">
                    <i class="fa-solid fa-bars"></i>
                </a>
            </div>
            <div class="menu-logo">
                <a href="/"><img src="<?php echo $iurl . $mwebsite->Header_Logo ?>" alt="<?php echo $mwebsite->Website_Name ?>" /></a>
            </div>
            <div class="menu-bag">
                <button class="cart-toggle-button margin-shopping">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span class="mobilecart-qty">0</span>
                </button>
            </div>
        </div>
    </div>

    <div class="mobile-search">
        <form action="https://www.ozybd.com/search">
            <input type="text" placeholder="Search Product ... " value="" class="msearch_keyword msearch_click"
                name="keyword" />
            <button><i class="fa fa-search"></i></button>

        </form>
        <div class="search_result"></div>
    </div>

    <div class="desktop-menu">
        <div class="desktop-menu-logo">
            <div class="desktop-logo-image">
                <a href="/"><img src="<?php echo $iurl . $mwebsite->Header_Logo ?>" alt="<?php echo $mwebsite->Website_Name ?>" /></a>
            </div>
            <div class="desktop-menu-close">
                <i class="fa fa-times"></i>
            </div>
        </div>
        <ul class="first-nav">
            <li class="parent-category">
                <a href="category/hand-bag" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1724687913-img_0627.jpg" alt="" class="side_cat_img" />
                    Hand bag
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/tote-bag" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1736686627-46.webp" alt="" class="side_cat_img" />
                    Tote bag
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/backpack" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1724687794-img_0949.jpg" alt="" class="side_cat_img" />
                    Backpack
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/crossbody-bags" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1736686671-29.webp" alt="" class="side_cat_img" />
                    Crossbody bags
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/shoulder-bag" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1724692609-img_8466.png" alt="" class="side_cat_img" />
                    Shoulder Bag
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/chest-bag" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1724687566-img_9950.jpg" alt="" class="side_cat_img" />
                    Chest Bag
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
            <li class="parent-category">
                <a href="category/winter-shawl-%26-cardigan" class="menu-category-name">
                    <img src="<?php echo base_url('assets/fontend/') ?>uploads/category/1731389573-8.webp" alt="" class="side_cat_img" />
                    Winter Shawl &amp; Cardigan
                </a>
                <ul class="second-nav" style="display: none;">
                </ul>
            </li>
        </ul>
    </div>

    <div class="main-header" id="navbar_top">
        <!-- header to end -->
        <div class="logo-area">
            <div class="container">
                <div class="row">

                    <div class="col-sm-12">

                        <div class="logo-header">

                            <div class="main-logo">
                                <a href="/"><img src="<?php echo $iurl . $mwebsite->Header_Logo ?>" alt="<?php echo $mwebsite->Website_Name ?>" /></a>
                            </div>
                            <div class="main-search">
                                <form action="https://www.ozybd.com/search">
                                    <input type="text" placeholder="Search Product..."
                                        class="search_keyword search_click" name="keyword" />
                                    <button>
                                        <i style="color: #fff;" class="fa fa-search"></i>
                                    </button>

                                </form>
                                <div class="search_result"></div>
                            </div>
                            <div class="header-list-items">
                                <ul>
                                    <li class="track_btn">
                                        <a href="customer/order-track.html"> <i class="fa fa-truck"></i> Track
                                            Order</a>
                                    </li>
                                    <li class="for_order">
                                        <p>
                                            <a href="customer/login.html">
                                                <i class="fa-regular fa-user"></i>
                                                Accounts
                                            </a>
                                        </p>
                                    </li>

                                    <li class="cart-dialog" id="cart-qty">
                                        <button class="cart-toggle-button">
                                            <p class="margin-shopping">
                                                <i class="fa-solid fa-cart-shopping"></i>
                                                <span>0</span>
                                            </p>
                                        </button>

                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php if (isset($topCats)) { ?>
            <div class="menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="catagory_menu">
                                <ul>
                                    <?php foreach ($topCats as $key => $cat) { ?>
                                        <li class="cat_bar">
                                            <a href="<?php echo base_url() . 'category/' . $cat->route ?>" class="highlight0">
                                                <span class="cat_head"><?php echo $cat->Category_Name ?></span>
                                            </a>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
    <!-- main-header end -->
</header>