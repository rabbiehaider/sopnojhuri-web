<?php defined('BASEPATH') or exit('No direct script access allowed');

class WebController extends CI_Controller
{

	function  __construct()
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
		if (isset($data->minPrice) && $data->minPrice != '' && isset($data->maxPrice) && $data->maxPrice != '') {
			$clauses .= " AND p.Product_SellingPrice BETWEEN '$data->minPrice' AND '$data->maxPrice'";
		}
		if (isset($data->forSearch) && $data->forSearch != '') {
			$limit .= " LIMIT 20";
		}
		if (isset($data->name) && $data->name != '') {
			$clauses .= " AND p.Product_Code LIKE '$data->name%'";
			$clauses .= " OR p.Product_Name LIKE '$data->name%'";
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
			$clauses .= " and p.Product_Code like '$data->name%'";
			$clauses .= " or p.Product_Name like '$data->name%'";
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


	// Category Wise Products Page
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

	// Category Wise Products Page
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

	public function category()
	{
		$data['title'] = 'Home';
		// $data['sliders'] = $this->db->query("select * from tbl_sliders where status = 'a'")->result();
		// $data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_website = 'true' and is_active = 'true' ORDER BY Product_SlNo DESC limit 30")->result();
		// $data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		// $data['categories'] = $this->db->query("select * from tbl_productcategory where status = 'a' order by ProductCategory_SlNo desc")->result();
		// $data['about'] = $this->db->query("select * from tbl_abouts")->row();
		$data['front_content'] = 'page/home';
		$this->load->view('fontend/layout', $data);
	}

	public function contactUs()
	{
		$data['title'] = 'Contact Us';
		// $data['company'] = $this->db->query("select * from tbl_content")->row();
		$data['front_content'] = 'page/contact';
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



	// public function products()
	// {
	// 	$data['title'] = 'Products';
	// 	$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
	// 	$data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' ORDER BY Product_SlNo DESC")->result();
	// 	$data['front_content'] = 'page/product';
	// 	$this->load->view('fontend/layout', $data);
	// }


	// Products Page Start
	public function products()
	{
		$limit = $this->limit;
		$data['title'] = 'Products';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['products'] = $this->get_load_more_product($limit, '');

		$data['front_content'] = 'page/product';
		$this->load->view('fontend/layout', $data);
	}

	public function get_product_more()
	{
		$limit = $this->limit;
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$page = $limit * $this->input->get('page');
		$data['products'] = $this->get_load_more_product($limit, $page);
		$isExist = $this->load->view('fontend/page/product_more', $data);
		if ($isExist) {
			echo json_encode($isExist);
		}
	}

	function get_load_more_product($limit, $offset = '')
	{
		$this->db->select('*');
		$this->db->from('tbl_product');
		$this->db->where('status', 'a');
		$this->db->where('is_active', 'true');
		$this->db->where('is_website', 'true');
		$this->db->limit($limit, $offset);
		$this->db->order_by('Product_SlNo', 'desc');
		$data = $this->db->get()->result();
		return $data;
	}
	// Products Page End




	// public function product_by_category($category_id)
	// {
	// 	$data['title'] = 'Product Petails';
	// 	$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
	// 	$data['category'] =  $this->db->query("select * from tbl_productcategory where ProductCategory_SlNo = ? ", $category_id)->row();
	// 	$data['category_id'] = $category_id;
	// 	$data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' and ProductCategory_ID = ?", $category_id)->result();
	// 	$data['front_content'] = 'page/product_by_category';
	// 	$this->load->view('fontend/layout', $data);
	// }




	// Category Wise Products Page Start
	public function product_by_category($category_id)
	{
		$limit = $this->limit;
		$data['title'] = 'Products';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['category'] =  $this->db->query("select * from tbl_productcategory where ProductCategory_SlNo = ? ", $category_id)->row();
		$data['productcount'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' and ProductCategory_ID = ?", $category_id)->result();
		$data['category_id'] = $category_id;
		$data['products'] = $this->get_load_more_data($category_id, $limit, '');
		$data['front_content'] = 'page/product_by_category';
		$this->load->view('fontend/layout', $data);
	}

	public function get_category_product_more()
	{
		$limit = $this->limit;
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$page = $limit * $this->input->get('page');
		$category_id = $this->input->get('category_id');
		$data['products'] = $this->get_load_more_data($category_id, $limit, $page);
		$isExist = $this->load->view('fontend/page/product_more', $data);
		if ($isExist) {
			echo json_encode($isExist);
		}
	}

	function get_load_more_data($category_id, $limit, $offset = '')
	{
		$this->db->select('*');
		$this->db->from('tbl_product');
		$this->db->where('status', 'a');
		$this->db->where('is_active', 'true');
		$this->db->where('is_website', 'true');
		$this->db->where('ProductCategory_ID', $category_id);
		$this->db->limit($limit, $offset);
		$this->db->order_by('Product_SlNo', 'desc');
		$data = $this->db->get()->result();
		return $data;
	}
	// Products Page End










































	public function about_us()
	{
		$data['title'] = 'About';
		$data['testimonials'] = $this->db->query("select * from tbl_testimonials where status = 'a' limit 10")->result();
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['about'] = $this->db->query("select * from tbl_abouts")->row();
		$data['front_content'] = 'page/about';
		$this->load->view('fontend/layout', $data);
	}

	public function management()
	{
		$data['title'] = 'Management';
		$data['front_content'] = 'page/management';
		$this->load->view('fontend/layout', $data);
	}
	// public function products()
	// {
	// 	$data['title'] = 'Products';
	// 	$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
	// 	$data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' ORDER BY Product_SlNo DESC")->result();
	// 	$data['front_content'] = 'page/product';
	// 	$this->load->view('fontend/layout', $data);
	// }
	public function product_details($id)
	{
		$data['title'] = 'Product Petails';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' and Product_SlNo = ?", $id)->row();
		$data['gallery'] = $this->db->query("select * from tbl_productgallery where status = 'a' and Product_ID = ?", $id)->result();
		$data['front_content'] = 'page/product_details';
		$this->load->view('fontend/layout', $data);
	}

	// public function product_by_category($category_id)
	// {
	// 	$data['title'] = 'Product Petails';
	// 	$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
	// 	$data['category'] =  $this->db->query("select * from tbl_productcategory where ProductCategory_SlNo = ? ", $category_id)->row();
	// 	$data['category_id'] = $category_id;
	// 	$data['products'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' and ProductCategory_ID = ?", $category_id)->result();
	// 	$data['front_content'] = 'page/product_by_category';
	// 	$this->load->view('fontend/layout', $data);
	// }

	public function search()
	{
		if ($this->input->post('action') == 'searchdata') {
			$search = trim($this->input->post('searchdata'));
			if ($search == '') {
				echo '<script>alert("Please fill up search box !!")</script>';
				redirect(base_url());
			} else {
				$data['your_search'] = $search;
				$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
				$data['searchdata'] = $this->db->query("select * from tbl_product where status = 'a' and is_active = 'true' and is_website = 'true' and Product_Name like '%" . $search . "%' or part_no like '%" . $search . "%'")->result();
				$data['title'] = 'Search';
				$data['front_content'] = 'page/search';
				$this->load->view('fontend/layout', $data);
			}
		}
	}

	public function gallery()
	{
		$data['title'] = 'Photo Gallery';
		$data['galleries'] = $this->db->query("select * from tbl_galleries where status = 'a'")->result();
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['front_content'] = 'page/gallery';
		$this->load->view('fontend/layout', $data);
	}

	public function project()
	{
		$data['title'] = 'Our Project';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['projects'] = $this->db->query("select * from tbl_projects where status = 'a'")->result();
		$data['front_content'] = 'page/project';
		$this->load->view('fontend/layout', $data);
	}

	public function singleProject($id)
	{
		$data['title'] = 'Project Details';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['project'] = $this->db->query("select * from tbl_projects where status = 'a' and id = ?", $id)->row();
		$data['services'] = $this->db->query("select * from tbl_our_services where status = 'a' order by id desc limit 6")->result();
		$data['projects'] = $this->db->query("select * from tbl_projects where status = 'a' and id != ? order by id desc limit 3", $id)->result();
		$data['front_content'] = 'page/project-details';
		$this->load->view('fontend/layout', $data);
	}

	public function service()
	{
		$data['title'] = 'Services';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['services'] = $this->db->query("select * from tbl_our_services where status = 'a'")->result();
		$data['pricings'] = $this->db->query("select * from tbl_pricing where status = 'a' order by id desc limit 8")->result();
		$data['front_content'] = 'page/service';
		$this->load->view('fontend/layout', $data);
	}

	public function saveContact()
	{
		$res = ['success' => false, 'message' => ''];
		try {
			$data = json_decode($this->input->raw_input_stream);

			$contact = (array)$data;
			$contact['status'] = 'a';
			$this->db->insert('tbl_contacts', $contact);
			$res = ['success' => true, 'message' => 'Message successfully Send!'];
		} catch (\Exception $e) {
			$res = ['success' => false, 'message' => $e->getMessage()];
		}
		echo json_encode($res);
	}

	public function cart()
	{
		$data['title'] = 'cart';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['cartItems'] = $this->cart->contents();
		$data['cartTotalwithShipping'] = $this->cart->total() + 100;
		$data['front_content'] = 'customer/cart';
		$this->load->view('fontend/layout', $data);
	}
	public function checkout()
	{
		$data['title'] = 'checkout';
		$data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
		$data['cartItems'] = $this->cart->contents();
		$data['cartTotalwithShipping'] = $this->cart->total() + 100;
		$data['front_content'] = 'customer/checkout';
		$this->load->view('fontend/layout', $data);
	}
}
