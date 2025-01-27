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
	}

	public function index()
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
		if ($data->isDisplayed != null && $data->isDisplayed == 'yes') {
			$clauses = " and c.is_home = 'true'";
		}

		$categories = $this->db->query("SELECT c.*
            FROM tbl_category c
            WHERE c.status = 'a'
            $clauses 
        ")->result();

		echo json_encode($categories);
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

	public function getProducts()
	{
		$data = json_decode($this->input->raw_input_stream);

		$clauses = "";
		if (isset($data->categoryId) && $data->categoryId != '') {
			$clauses .= " and p.ProductCategory_ID = '$data->categoryId'";
		}

		if (isset($data->idFrom) && $data->idFrom != 0 && isset($data->idTo) && $data->idTo != 0) {
			$clauses .= " and p.Product_SlNo between $data->idFrom and $data->idTo";
		}

		$products = $this->db->query("
            select
                p.*,
                pc.ProductCategory_Name
            from tbl_product p
            left join tbl_productcategory pc on pc.ProductCategory_SlNo = p.ProductCategory_ID
            where p.status = 'a'
			and p.is_active = 'true' 
			and p.is_website = 'true'
			$clauses
            order by p.Product_SlNo desc
        ")->result();

		echo json_encode($products);
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
