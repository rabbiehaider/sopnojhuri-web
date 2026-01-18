<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'WebController/index';
$route['product/(:any)']     = 'WebController/productView/$1';

$route['category/(:any)']            = 'WebController/categoryView/$1';
$route['scategory/(:any)']           = 'WebController/subCategoryView/$1';
$route['about-us']                   = 'WebController/about_us';
$route['products']                   = 'WebController/products';
$route['product_details/(:any)']     = 'WebController/product_details/$1';
$route['product-by-category/(:any)'] = 'WebController/product_by_category/$1';
$route['management']                 = 'WebController/management';
$route['service']                    = 'WebController/service';
$route['project']                    = 'WebController/project';
$route['single-project/(:any)']      = 'WebController/singleProject/$1';
$route['contact_us']                 = 'WebController/contactUs';
$route['search']                     = 'WebController/search';
$route['contact-user']               = 'WebController/contact_user';
$route['gallery']                    = 'WebController/gallery';
$route['save_booking']               = 'Booking/saveBooking';
$route['check_booking_exits']        = 'Booking/bookingAlreadyExits';
$route['save_contact']               = 'WebController/saveContact';
$route['get_website_profile']        = 'WebController/getWebsiteProfile';

$route['get_categories']      = 'WebController/getCategories';
$route['get_subcategories']   = 'WebController/getPSubCategories';
$route['get_products']        = 'WebController/getProducts';
$route['get_hot_deals']       = 'WebController/getHotProducts';
$route['get_product_details'] = 'WebController/getProductDetails';

$route['get_product_more']          = 'WebController/get_product_more';
$route['get_category_product_more'] = 'WebController/get_category_product_more';

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
$route['order-success/(:any)'] = 'Customer/custSuccInvoice/$1';
$route['order-report/(:any)']  = 'Customer/custInvoice/$1';


$route['add_to_cart']          = 'ProductCart/pAddToCart';
$route['order_now']            = 'ProductCart/pOrderNow';
$route['get_cart_contents']    = 'ProductCart/getCartContents';
$route['update_cart_quantity'] = 'ProductCart/updateItemQnty';
$route['remove_cart_item']     = 'ProductCart/removeCartItem';
$route['customer/checkout']    = 'ProductCart/cusChcekOut';
$route['place_order']          = 'ProductCart/placeCusOrder';



//cart
$route['cart']                = 'WebController/cart';
$route['checkout']            = 'WebController/checkout';
$route['checkout']            = 'WebController/checkout';
$route['save_cart']           = 'Cart/saveCart';
$route['save_cart_details']   = 'Cart/saveCartDetails';
$route['cart/updateItemQty/'] = 'Cart/updateItemQty';
$route['cart/removeItem/']    = 'Cart/removeItem';
$route['insertCheckout']      = 'Cart/insertCheckout';

// Customer Dashboard
$route['customer-register']       = 'Customer/customer_register';
$route['save_customer']           = 'Customer/registration';
$route['customer-login']          = 'Customer/customer_login';
$route['login_check']             = 'Customer/login_in';
$route['my_account']              = 'Customer/my_account';
$route['update_details']          = 'Customer/updateDetails';
$route['update_password']         = 'Customer/updatePassword';
$route['customer-invoice/(:any)'] = 'Customer/customerInvoice/$1';
$route['get_orders']              = 'Customer/getOrders';
$route['customer-logout']         = 'Customer/logout';

// admin controller
$route['admin']                 = 'Admin/login';
$route['login-form']            = 'Admin/login_in';
$route['dashboard']             = 'Admin/dashboard';
$route['logout']                = 'Admin/logout';
$route['administator/(:any)']   = 'Admin/profile/$1';
$route['view-message/(:any)']   = 'Admin/view_message/$1';
$route['delete-message/(:any)'] = 'Admin/delete_message/$1';

$route['admin-profile'] = 'Admin/admin_profile';
$route['update-user']   = 'Admin/update_user';
$route['change-pass']   = 'Admin/change_pass';
$route['contact-us']    = 'Admin/contact_us';

//create administator
$route['administator'] = 'Admin/add_administator';
$route['save-admin']   = 'Admin/save_admin';
$route['show-info']    = 'Admin/show_info';

// company profile
$route['upload-ckimage'] = 'Company_info/upload_ckimage';

$route['company-profile']  = 'Company_info/update_profile';
$route['update-profile']   = 'Company_info/update';
$route['about']            = 'Company_info/about_info';
$route['update-about']     = 'Company_info/update_about';
$route['condition']        = 'Company_info/condition';
$route['update-condition'] = 'Company_info/update_condition';


$route['404_override']         = '';
$route['translate_uri_dashes'] = true;
