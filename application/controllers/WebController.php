<?php defined('BASEPATH') or exit('No direct script access allowed');

class WebController extends CI_Controller
{

	function __construct()
	{
		parent::__construct();

		// Load cart library
		$this->load->library('cart');
		$this->load->database();
		$this->limit = 24;
		$this->website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row();
	}

	public function index()
	{
		$data['title'] = '';
		$data['iurl'] = $this->website->Software_Url;

		$categories = $this->db->query("SELECT * FROM tbl_category WHERE status = 'a'")->result();
		foreach ($categories as $cat) {
			$cat->subCategories = $this->db->query("SELECT sc.*
				FROM tbl_sub_category sc
				WHERE sc.Category_SlNo = ?
				AND sc.status = 'a'
			", $cat->Category_SlNo)->result();
		}
		$data['categories'] = $categories;
		$data['front_content'] = 'page/home';
		$this->load->view('fontend/layout', $data);
	}

	public function productView($productSlug)
	{
		$product = $this->db->query("SELECT * FROM tbl_product WHERE slug = ? AND status = 'a'", $productSlug)->row();
		$data['title'] = $product->Product_Name;
		$data['iurl'] = $this->website->Software_Url;
		$data['isd_charge'] = $this->website->isd_charge;
		$data['osd_charge'] = $this->website->osd_charge;
		$data['product_slug'] = $productSlug;
		$data['front_content'] = 'page/product_details';
		$this->load->view('fontend/layout', $data);
	}

	public function getProducts()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		$limit = "";
		$orderStatus = "";
		$status = "a";
		if (isset($data->status) && $data->status != '') {
			$status = $data->status;
		}
		if (isset($data->isTrending) && $data->isTrending != null && $data->isTrending != '') {
			$clauses .= " AND p.is_popular = '$data->isTrending'";
		}
		if (isset($data->isOffer) && $data->isOffer != null && $data->isOffer != '') {
			$clauses .= " AND p.is_offer = '$data->isOffer'";
		}
		if (isset($data->categoryId) && $data->categoryId != '') {
			$clauses .= " AND p.ProductCategory_ID = '$data->categoryId'";
		}
		if (isset($data->subCategoryId) && $data->subCategoryId != '') {
			$clauses .= " AND p.ProductSubCategory_ID = '$data->subCategoryId'";
		}
		if (isset($data->filterType) && $data->filterType != '') {
			if ($data->filterType == 'new') {
				$orderStatus .= " ORDER BY p.Product_SlNo DESC";
			} elseif ($data->filterType == 'old') {
				$orderStatus .= " ORDER BY p.Product_SlNo ASC";
			} elseif ($data->filterType == 'hl') {
				$orderStatus .= " ORDER BY p.Product_SellingPrice DESC";
			} elseif ($data->filterType == 'lh') {
				$orderStatus .= " ORDER BY p.Product_SellingPrice ASC";
			} elseif ($data->filterType == 'az') {
				$orderStatus .= " ORDER BY p.Product_Name ASC";
			} elseif ($data->filterType == 'za') {
				$orderStatus .= " ORDER BY p.Product_Name DESC";
			}
		}
		if (isset($data->selectedSCategory) && !empty($data->selectedSCategory)) {
			$subCategoryIds = implode(",", $data->selectedSCategory);
			$clauses .= " AND p.ProductSubCategory_ID IN ($subCategoryIds)";
		}
		if (isset($data->selectedCategory) && !empty($data->selectedCategory)) {
			$categoryIds = implode(",", $data->selectedCategory);
			$clauses .= " AND p.ProductCategory_ID IN ($categoryIds)";
		}
		if (isset($data->minPrice) && $data->minPrice != '' && isset($data->maxPrice) && $data->maxPrice != '') {
			$clauses .= " AND p.Product_SellingPrice BETWEEN '$data->minPrice' AND '$data->maxPrice'";
		}
		if (isset($data->forSearch) && $data->forSearch != '') {
			$limit .= " LIMIT 20";
		}
		if (isset($data->name) && $data->name != '') {
			$clauses .= " AND (p.Product_Code LIKE '%$data->name%' OR p.Product_Name LIKE '%$data->name%' OR pc.Category_Name LIKE '%$data->name%' OR psc.SubCategory_Name LIKE '%$data->name%' OR br.brand_name LIKE '%$data->name%' OR c.color_name LIKE '%$data->name%')";
		}

		$products = $this->db->query("SELECT			
				p.Product_SlNo,
				p.Product_Name,
				p.Product_Code,
				p.Video_Url,
				p.Product_Image,
				p.Product_SizeImage,
				p.Product_PreviousPrice,
				p.Product_SellingPrice,
				p.ProductCategory_ID,
				p.slug,
				p.is_offer,
				concat(p.Product_Name, ' - ', p.Product_Code) AS display_text,
				IFNULL((((p.Product_PreviousPrice-p.Product_SellingPrice)/p.Product_PreviousPrice)*100), 0) AS discount_percent,
				pc.Category_Name,
				psc.SubCategory_Name,
				br.brand_name,
				c.color_name,
				u.Unit_Name,
				ua.User_Name AS added_by,
				ud.User_Name AS deleted_by
			FROM tbl_product p
			LEFT JOIN tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
			LEFT JOIN tbl_sub_category psc on psc.SubCategory_SlNo = p.ProductSubCategory_ID
			LEFT JOIN tbl_brand br on br.brand_SiNo = p.Brand_ID
			LEFT JOIN tbl_color c on c.color_SiNo = p.Color_ID
			LEFT JOIN tbl_unit u on u.Unit_SlNo = p.Unit_ID
			LEFT JOIN tbl_user ua on ua.User_SlNo = p.AddBy
			LEFT JOIN tbl_user ud on ud.User_SlNo = p.DeletedBy
			WHERE p.status = '$status'
			AND p.is_website = 'true'
			$clauses
			$orderStatus
			$limit
		")->result();

		echo json_encode($products);
	}

	public function getHotProducts()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		if (isset($data->isOffer) && $data->isOffer != null && $data->isOffer != '') {
			$clauses .= " AND p.is_offer = '$data->isOffer'";
		}

		$products = $this->db->query("SELECT			
				p.Product_SlNo,
				p.Product_Name,
				p.Product_Code,
				p.Video_Url,
				p.Product_Image,
				p.Product_SizeImage,
				p.Product_PreviousPrice,
				p.Product_SellingPrice,
				p.ProductCategory_ID,
				p.slug,
				p.is_offer,
				concat(p.Product_Name, ' - ', p.Product_Code) AS display_text,
				IFNULL((((p.Product_PreviousPrice-p.Product_SellingPrice)/p.Product_PreviousPrice)*100), 0) AS discount_percent,
				pc.Category_Name,
				psc.SubCategory_Name,
				br.brand_name,
				c.color_name,
				u.Unit_Name,
				ua.User_Name AS added_by,
				ud.User_Name AS deleted_by
			FROM tbl_product p
			LEFT JOIN tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
			LEFT JOIN tbl_sub_category psc on psc.SubCategory_SlNo = p.ProductSubCategory_ID
			LEFT JOIN tbl_brand br on br.brand_SiNo = p.Brand_ID
			LEFT JOIN tbl_color c on c.color_SiNo = p.Color_ID
			LEFT JOIN tbl_unit u on u.Unit_SlNo = p.Unit_ID
			LEFT JOIN tbl_user ua on ua.User_SlNo = p.AddBy
			LEFT JOIN tbl_user ud on ud.User_SlNo = p.DeletedBy
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			$clauses
			ORDER BY p.Product_SlNo DESC
			LIMIT 12
		")->result();

		echo json_encode($products);
	}

	public function getProductDetails()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		$limit = "";
		$status = "a";
		if (isset($data->status) && $data->status != '') {
			$status = $data->status;
		}

		if (isset($data->productSlug) && $data->productSlug != '') {
			$clauses .= " and p.slug = '$data->productSlug'";
		}

		if (isset($data->categoryId) && $data->categoryId != '') {
			$clauses .= " and p.ProductCategory_ID = '$data->categoryId'";
		}

		if (isset($data->subCategoryId) && $data->subCategoryId != '') {
			$clauses .= " and p.ProductSubCategory_ID = '$data->subCategoryId'";
		}

		if (isset($data->isWebsite) && $data->isWebsite != null && $data->isWebsite != '') {
			$clauses .= " and p.is_website = '$data->isWebsite'";
		}

		if (isset($data->isService) && $data->isService != null && $data->isService != '') {
			$clauses .= " and p.is_service = '$data->isService'";
		}

		if (isset($data->forSearch) && $data->forSearch != '') {
			$limit .= " limit 20";
		}
		if (isset($data->name) && $data->name != '') {
			$clauses .= " and (p.Product_Code like '%$data->name%' or p.Product_Name like '%$data->name%')";
		}

		$products = $this->db->query("SELECT
				p.Product_SlNo,
				p.Product_Name,
				p.Product_Code,
				p.Video_Url,
				p.Product_Image,
				p.Product_SizeImage,
				p.Product_PreviousPrice,
				p.Product_SellingPrice,
				p.Product_Description,
				p.ProductCategory_ID,
				p.slug,
				concat(p.Product_Name, ' - ', p.Product_Code) as display_text,
				IFNULL((((p.Product_PreviousPrice-p.Product_SellingPrice)/p.Product_PreviousPrice)*100), 0) as discount_percent,
				pc.Category_Name,
				pc.route AS cat_route,
				psc.SubCategory_Name,
				br.brand_name,
				c.color_name,
				u.Unit_Name,
				ua.User_Name as added_by,
				ud.User_Name as deleted_by
			FROM tbl_product p
			LEFT JOIN tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
			LEFT JOIN tbl_sub_category psc on psc.SubCategory_SlNo = p.ProductSubCategory_ID
			LEFT JOIN tbl_brand br on br.brand_SiNo = p.Brand_ID
			LEFT JOIN tbl_color c on c.color_SiNo = p.Color_ID
			LEFT JOIN tbl_unit u on u.Unit_SlNo = p.Unit_ID
			LEFT JOIN tbl_user ua on ua.User_SlNo = p.AddBy
			LEFT JOIN tbl_user ud on ud.User_SlNo = p.DeletedBy
			WHERE p.status = '$status'
			$clauses
			ORDER BY p.Product_SlNo DESC
			$limit
		")->result();

		foreach ($products as $product) {
			$product->product_images = $this->db->query("SELECT pg.* 
				FROM tbl_product_gallery pg
				WHERE pg.Product_ID = ?
				AND pg.status = '$status'
			", $product->Product_SlNo)->result();
		}

		echo json_encode($products);
	}

	// Category Wise Products
	public function categoryView($catTag)
	{
		$category = $this->db->query("SELECT Category_SlNo, Category_Name FROM tbl_category WHERE route = ?", $catTag)->row();

		$Max_SellPrice = $this->db->query("SELECT 
				MAX(p.Product_SellingPrice) AS Max_SellPrice
			FROM tbl_product p 
			JOIN tbl_category ct ON ct.Category_SlNo = p.ProductCategory_ID 
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND ct.route = ?
		", $catTag)->row()->Max_SellPrice;

		$Min_SellPrice = $this->db->query("SELECT 
				MIN(p.Product_SellingPrice) AS Min_SellPrice
			FROM tbl_product p 
			JOIN tbl_category ct ON ct.Category_SlNo = p.ProductCategory_ID 
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND ct.route = ?
		", $catTag)->row()->Min_SellPrice;

		$data['title'] = 'Hand Bag';
		$data['iurl'] = $this->website->Software_Url;
		$data['categoryId'] = $category->Category_SlNo;
		$data['categoryName'] = $category->Category_Name;
		$data['maxPrice'] = $Max_SellPrice ?? 0;
		$data['minPrice'] = $Min_SellPrice ?? 0;
		$data['cat_tag'] = $catTag;
		$data['front_content'] = 'page/category_wise_products';
		$this->load->view('fontend/layout', $data);
	}

	// Sub Category Wise Products
	public function subCategoryView($sCatTag)
	{
		$category = $this->db->query("SELECT 
			sct.SubCategory_SlNo, 
			sct.SubCategory_Name,
			ct.Category_Name 
		FROM tbl_sub_category sct
		JOIN tbl_category ct ON ct.Category_SlNo = sct.Category_SlNo  
		WHERE sct.route = ?", $sCatTag)->row();

		$Max_SellPrice = $this->db->query("SELECT 
				MAX(p.Product_SellingPrice) AS Max_SellPrice
			FROM tbl_product p 
			JOIN tbl_sub_category sct ON sct.SubCategory_SlNo = p.ProductSubCategory_ID 
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND sct.route = ?
		", $sCatTag)->row()->Max_SellPrice;

		$Min_SellPrice = $this->db->query("SELECT 
				MIN(p.Product_SellingPrice) AS Min_SellPrice
			FROM tbl_product p 
			JOIN tbl_sub_category sct ON sct.SubCategory_SlNo = p.ProductSubCategory_ID 
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND sct.route = ?
		", $sCatTag)->row()->Min_SellPrice;

		$data['title'] = 'Hand Bag';
		$data['iurl'] = $this->website->Software_Url;
		$data['sCategoryId'] = $category->SubCategory_SlNo;
		$data['sCategoryName'] = $category->SubCategory_Name;
		$data['categoryName'] = $category->Category_Name;
		$data['maxPrice'] = $Max_SellPrice ?? 0;
		$data['minPrice'] = $Min_SellPrice ?? 0;
		$data['cat_tag'] = $sCatTag;
		$data['front_content'] = 'page/subcat_wise_products';
		$this->load->view('fontend/layout', $data);
	}

	//Trending Products
	public function trendingProducts()
	{
		$Max_SellPrice = $this->db->query("SELECT 
				MAX(p.Product_SellingPrice) AS Max_SellPrice
			FROM tbl_product p  
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND p.is_popular = 'true'
		")->row()->Max_SellPrice;

		$Min_SellPrice = $this->db->query("SELECT 
				MIN(p.Product_SellingPrice) AS Min_SellPrice
			FROM tbl_product p  
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND p.is_popular = 'true'
		")->row()->Min_SellPrice;

		$data['title'] = 'Trending Products';
		$data['iurl'] = $this->website->Software_Url;
		$data['maxPrice'] = $Max_SellPrice ?? 0;
		$data['minPrice'] = $Min_SellPrice ?? 0;
		$data['front_content'] = 'page/trending_products';
		$this->load->view('fontend/layout', $data);
	}

	public function getProdCategories()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		if (isset($data->isTrending) && $data->isTrending != null && $data->isTrending != '') {
			$clauses .= " AND p.is_popular = '$data->isTrending'";
		}
		if (isset($data->isOffer) && $data->isOffer != null && $data->isOffer != '') {
			$clauses .= " AND p.is_offer = '$data->isOffer'";
		}

		$categories = $this->db->query("SELECT 
				p.ProductCategory_ID,
				pc.Category_SlNo,
				pc.Category_Name,
				pc.route
			FROM tbl_product p
			LEFT JOIN tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND pc.status = 'a'
			$clauses
			GROUP BY p.ProductCategory_ID
			ORDER BY pc.Category_Name ASC
		")->result();

		echo json_encode($categories);
	}

	//Hot Deals Products
	public function hotDealProducts()
	{
		$Max_SellPrice = $this->db->query("SELECT 
				MAX(p.Product_SellingPrice) AS Max_SellPrice
			FROM tbl_product p  
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND p.is_offer = 'true'
		")->row()->Max_SellPrice;

		$Min_SellPrice = $this->db->query("SELECT 
				MIN(p.Product_SellingPrice) AS Min_SellPrice
			FROM tbl_product p  
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND p.is_offer = 'true'
		")->row()->Min_SellPrice;

		$data['title'] = 'Hot Deals';
		$data['iurl'] = $this->website->Software_Url;
		$data['maxPrice'] = $Max_SellPrice ?? 0;
		$data['minPrice'] = $Min_SellPrice ?? 0;
		$data['front_content'] = 'page/hot_deal_products';
		$this->load->view('fontend/layout', $data);
	}

	public function getSubCateProducts()
	{
		$subcategories = $this->db->query("SELECT 
				p.ProductSubCategory_ID,
				pc.SubCategory_SlNo,
				pc.SubCategory_Name,
				pc.route
			FROM tbl_product p
			LEFT JOIN tbl_sub_category pc on pc.SubCategory_SlNo = p.ProductSubCategory_ID
			WHERE p.status = 'a'
			AND p.is_website = 'true'
			AND pc.status = 'a'
			GROUP BY p.ProductSubCategory_ID
			ORDER BY pc.SubCategory_Name ASC
		")->result();

		foreach ($subcategories as $scat) {
			$scat->products = $this->db->query("SELECT			
					p.Product_SlNo,
					p.Product_Name,
					p.Product_Code,
					p.Video_Url,
					p.Product_Image,
					p.Product_SizeImage,
					p.Product_PreviousPrice,
					p.Product_SellingPrice,
					p.ProductCategory_ID,
					p.slug,
					p.is_offer,
					concat(p.Product_Name, ' - ', p.Product_Code) AS display_text,
					IFNULL((((p.Product_PreviousPrice-p.Product_SellingPrice)/p.Product_PreviousPrice)*100), 0) AS discount_percent,
					pc.Category_Name,
					psc.SubCategory_Name,
					br.brand_name,
					c.color_name,
					u.Unit_Name,
					ua.User_Name AS added_by,
					ud.User_Name AS deleted_by
				FROM tbl_product p
				LEFT JOIN tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
				LEFT JOIN tbl_sub_category psc on psc.SubCategory_SlNo = p.ProductSubCategory_ID
				LEFT JOIN tbl_brand br on br.brand_SiNo = p.Brand_ID
				LEFT JOIN tbl_color c on c.color_SiNo = p.Color_ID
				LEFT JOIN tbl_unit u on u.Unit_SlNo = p.Unit_ID
				LEFT JOIN tbl_user ua on ua.User_SlNo = p.AddBy
				LEFT JOIN tbl_user ud on ud.User_SlNo = p.DeletedBy
				WHERE p.status = 'a'
				AND p.is_website = 'true'
				AND p.ProductSubCategory_ID = ? 
				ORDER BY p.Product_SlNo DESC
				LIMIT 12
            ", [$scat->ProductSubCategory_ID])->result();
		}

		echo json_encode($subcategories);
	}

	public function aboutUs()
	{
		$data['title'] = 'About Us';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/about_us';
		$this->load->view('fontend/layout', $data);
	}

	public function contactUs()
	{
		$data['title'] = 'Contact Us';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/contact_us';
		$this->load->view('fontend/layout', $data);
	}

	public function returnAndRefund()
	{
		$data['title'] = 'Returns & Refund';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/return_refund';
		$this->load->view('fontend/layout', $data);
	}

	public function securedPayment()
	{
		$data['title'] = 'Secured Payment';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/secured_payment';
		$this->load->view('fontend/layout', $data);
	}

	public function privacyPolicy()
	{
		$data['title'] = 'Privacy Policy';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/privacy_policy';
		$this->load->view('fontend/layout', $data);
	}

	public function termsCondition()
	{
		$data['title'] = 'Terms & Condition';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/terms_condition';
		$this->load->view('fontend/layout', $data);
	}

	public function webFAQs()
	{
		$data['title'] = 'Website FAQs';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/web_faqs';
		$this->load->view('fontend/layout', $data);
	}


	public function products()
	{
		$data['title'] = 'Shop';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['iurl'] = $this->website->Software_Url;

		$Max_SellPrice = $this->db->query("SELECT MAX(Product_SellingPrice) AS Max_SellPrice FROM tbl_product WHERE status = 'a' AND is_website = 'true'")->row()->Max_SellPrice;
		$Min_SellPrice = $this->db->query("SELECT MIN(Product_SellingPrice) AS Min_SellPrice FROM tbl_product WHERE status = 'a' AND is_website = 'true'")->row()->Min_SellPrice;

		$data['maxPrice'] = $Max_SellPrice ?? 0;
		$data['minPrice'] = $Min_SellPrice ?? 0;
		$data['keyword'] = $this->input->get('keyword') ?? '';
		$data['front_content'] = 'page/product';
		$this->load->view('fontend/layout', $data);
	}


	// Product Category 
	public function getCategories()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		if ($data->catTag != null && $data->catTag != '') {
			$clauses .= " AND c.route = '$data->catTag'";
		}
		if ($data->isDisplayed != null && $data->isDisplayed == 'yes') {
			$clauses .= " AND c.is_home = 'true'";
		}

		$categories = $this->db->query("SELECT 
				c.*
            FROM tbl_category c
            WHERE c.status = 'a'
            $clauses 
        ")->result();

		echo json_encode($categories);
	}

	public function getPSubCategories()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		if ($data->categoryId != null && $data->categoryId != '') {
			$clauses .= " AND sc.Category_SlNo = '$data->categoryId'";
		}

		$subcategories = $this->db->query("SELECT 
                sc.*, 
                c.Category_Name
            FROM tbl_sub_category sc
            JOIN tbl_category c ON c.Category_SlNo = sc.Category_SlNo
            WHERE sc.status = 'a' 
            $clauses
            ORDER BY sc.SubCategory_Name ASC
		")->result();
		echo json_encode($subcategories);
	}

	public function getWebsiteProfile()
	{
		$website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->result();
		echo json_encode($website);
	}


	public function search()
	{
		$data['title'] = 'Search';
		$data['iurl'] = $this->website->Software_Url;
		$data['keyword'] = $this->input->get('keyword') ?? '';
		$data['front_content'] = 'page/search';
		$this->load->view('fontend/layout', $data);
	}




	public function error404()
	{
		$data['title'] = '404 Page Not Found';
		$data['iurl'] = $this->website->Software_Url;
		$data['front_content'] = 'page/error_404';
		$this->load->view('fontend/layout', $data);
	}
}
