<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'WebController/index';
$route['product/(:any)']     = 'WebController/productView/$1';

$route['category/(:any)']            = 'WebController/categoryView/$1';
$route['scategory/(:any)']           = 'WebController/subCategoryView/$1';
$route['products']                   = 'WebController/products';
$route['shop']                       = 'WebController/products';
$route['project']                    = 'WebController/project';
$route['contact_us']                 = 'WebController/contactUs';
$route['search']                     = 'WebController/products';
$route['contact-user']               = 'WebController/contact_user';
$route['get_website_profile']        = 'WebController/getWebsiteProfile';

$route['get_categories']         = 'WebController/getCategories';
$route['get_subcategories']      = 'WebController/getPSubCategories';
$route['get_products']           = 'WebController/getProducts';
$route['get_hot_deals']          = 'WebController/getHotProducts';
$route['get_product_details']    = 'WebController/getProductDetails';
$route['get_scategory_products'] = 'WebController/getSubCateProducts';


$route['trending-products']      = 'WebController/trendingProducts';
$route['get_product_categories'] = 'WebController/getProdCategories';
$route['hot-deals']              = 'WebController/hotDealProducts';

$route['customer/login']           = 'Customer/customer_login';
$route['customer_signin']          = 'Customer/customerLoginCheck';
$route['customer/register']        = 'Customer/customerRegister';
$route['customer/create']          = 'Customer/customerCreate';
$route['customer/account']         = 'Customer/customerAccount';
$route['customer/orders']          = 'Customer/customerOrders';
$route['customer/invoice/(:any)']  = 'Customer/customerOrders';
$route['customer/account-edit']    = 'Customer/customerAccountUpdate';
$route['customer/change-password'] = 'Customer/passwordChange';
$route['customer/logout']          = 'Customer/customerLogout';
$route['track-order']              = 'Customer/trackYourOrder';

$route['get_corders']          = 'Customer/getCustOrders';
$route['get_districts']        = 'Customer/getDistricts';
$route['get_thanas']           = 'Customer/getThanas';
$route['save_profile_update']  = 'Customer/saveProfileUpdate';
$route['save_password_change'] = 'Customer/savePasswordChange';
$route['order-success/(:any)'] = 'Customer/custSuccInvoice/$1';
$route['order-report/(:any)']  = 'Customer/custInvoice/$1';


$route['add_to_cart']          = 'ProductCart/pAddToCart';
$route['order_now']            = 'ProductCart/pOrderNow';
$route['get_cart_contents']    = 'ProductCart/getCartContents';
$route['update_cart_quantity'] = 'ProductCart/updateItemQnty';
$route['remove_cart_item']     = 'ProductCart/removeCartItem';
$route['customer/checkout']    = 'ProductCart/cusChcekOut';
$route['place_order']          = 'ProductCart/placeCusOrder';

$route['about-us']         = 'WebController/aboutUs';
$route['contact-us']       = 'WebController/contactUs';
$route['return-refund']    = 'WebController/returnAndRefund';
$route['secured-payment']  = 'WebController/securedPayment';
$route['privacy-policy']   = 'WebController/privacyPolicy';
$route['terms-conditions'] = 'WebController/termsCondition';
$route['faqs']             = 'WebController/webFAQs';

$route['sitemap']              = 'WebController/sitemapPage';
$route['sitemap.xml']          = 'WebController/sitemapXml';

$route['404_override']         = 'WebController/error404';
$route['translate_uri_dashes'] = true;
