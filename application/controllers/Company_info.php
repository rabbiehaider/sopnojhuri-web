<?php 

/**
 *  
 */
class Company_info extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('userid')){
			redirect (base_url('admin'));
		}
		
		// $this->load->model('Admin_model','admin_m');
	}

	public function image_upload($file_name_get){
	   $file_name = $file_name_get['name'];
	   $file_temp = $file_name_get['tmp_name'];

	   $div = explode('.', $file_name);
	   $get_last_e = end($div);
	   $new_name =  rand().'.'.$get_last_e;
	   move_uploaded_file($file_temp,'assets/backend/images/emplyee_image/'.$new_name);
	   return $new_name;
	}

	public function update_profile(){
		$data['title']='Update Company Profile';
		$data['page']='Company Profile';
		$data['com_profile']=$this->db->query('select * from tbl_profile limit 1')->row();
		$data['backend_content']='company/profile';
		$this->load->view('admin/layout',$data);
	}
 
	public function update(){
		if ($this->input->post('action')=='update') {
			$image="";
				if ($_FILES['picture']['name'] != "") { 
					$image=$this->image_upload($_FILES['picture']);
					$img_unlink='assets/backend/images/emplyee_image/'.$this->input->post("old_image");
					unlink($img_unlink);
				}else{
				 $image=$this->input->post("old_image");
				}
			$data=array(
				'com_name'=>$this->input->post('com_name'),
				'com_email'=>$this->input->post('com_email'),
				'com_phone'=>$this->input->post('com_phone'),
				'com_business'=>$this->input->post('com_business'),
				'com_establish'=>$this->input->post('com_establish'),
				'com_mission'=>$this->input->post('com_mission'),
				'com_sologan'=>$this->input->post('com_sologan'),
				'com_address'=>$this->input->post('com_address'),
				'com_vission'=>$this->input->post('com_vission'),
				'com_logo'=>$image
			);
			$id=$this->input->post('id');
			//print_r($data);
			$this->db->where('id',$id);
			$result=$this->db->update('tbl_profile',$data);
			if ($result) {
				echo"update";
			}
			else{
				return false;
			}
		}

	}

	public function founder_profile(){
		$data['title']='Company Founder Profile';
		$data['page']='Founder Profile';
		$data['founder_profile']=$this->db->query("select * from  tbl_founder limit 1")->row();
		$data['backend_content']='company/founder_profile';
		$this->load->view('admin/layout',$data);
	}
	public function update_founder(){
		if ($this->input->post('action')=='founder') {
			$image="";
			if ($_FILES['founder_image']['name'] != "") { 
				$image=$this->image_upload($_FILES['founder_image']);
				$img_unlink='assets/backend/images/emplyee_image/'.$this->input->post("old_image");
				unlink($img_unlink);
			}else{
			 $image=$this->input->post("old_image");
			}

			$data=array(
				'founde_name'=>$this->input->post('founde_name'),
				'founder_designation'=>$this->input->post('founder_designation'),
				'founder_email'=>$this->input->post('founder_email'),
				'founder_phone'=>$this->input->post('founder_phone'),
				'founder_image'=>$image,
				'founder_yourself'=>$this->input->post('founder_yourself')
			);
			$id=$this->input->post('action_id');
			//print_r($data);
			$result=$this->db->where('id',$id)->update('tbl_founder',$data);
			if ($result) {
				echo "update";
			}
			else{
				return false;
			}
		}
	}



	public function about_info(){
		$data['title']='About Organization ';
		$data['page']='About';
		$data['cominfo']=$this->db->query("select id,about_desc,about_image from  tbl_profile")->row();
		$data['backend_content']='company/about';
		$this->load->view('admin/layout',$data);
	}

	public function update_about(){
		if ($this->input->post('action')=='update') {
			$id=$this->input->post('action_id');
			$image="";
			if ($_FILES['about_image']['name'] != "") { 
				$image=$this->image_upload($_FILES['about_image']);
				$img_unlink='assets/backend/images/emplyee_image/'.$this->input->post("old_image");
				unlink($img_unlink);
			}else{
			 $image=$this->input->post("old_image");
			}

			$data=array(
				'about_desc'=>trim($this->input->post('about_desc')),
				'about_image'=>$image
			);

			$result=$this->db->where('id',$id)->update('tbl_profile',$data);
			if ($result) {
				echo 'update';
			}
			else{
				return false;
			}
		}
	}

	public function condition(){
		$data['title']='Terms and Conditions';
		$data['page']='Condition';
		$data['cominfo']=$this->db->query("select id,terms_desc from  tbl_profile ")->row();
		$data['backend_content']='company/condition';
		$this->load->view('admin/layout',$data);
	}

	public function update_condition(){
		if ($this->input->post('action')=='update') {
			$id=$this->input->post('action_id');

			$data=array(
				'terms_desc'=>trim($this->input->post('terms_desc'))
			);

			$result=$this->db->where('id',$id)->update('tbl_profile',$data);
			if ($result) {
				echo 'update';
			}
			else{
				return false;
			}
		}
	}

	public function upload_ckimage(){

		if(isset($_FILES['upload']['name']))
		{ 
			$file = $_FILES['upload']['tmp_name'];
			$file_name = $_FILES['upload']['name'];
			$file_name_array = explode(".", $file_name);
			$extension = end($file_name_array);
			$new_image_name = rand() . '.' . $extension;
			chmod('upload',777);
			$allowed_extension = array("jpg", "gif", "png" ,"jpeg");
			if(in_array($extension, $allowed_extension))
			{
			  move_uploaded_file($file,'assets/backend/images/upload/'. $new_image_name);
			  $function_number = $_GET['CKEditorFuncNum'];
			  $url =base_url().'assets/backend/images/upload/' . $new_image_name;
			  $message = '';
			  echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($function_number, '$url', '$message');</script>";
			}
		}
	}
	
	public function banner(){
		$data['title']='QR Code';
		$data['page']='QR Code';
		$data['banner']=$this->db->query("select id,banner_image from tbl_profile")->row();
		$data['backend_content']='company/banner';
		$this->load->view('admin/layout',$data);
	}

	public function update_banner(){
		if ($this->input->post('action')=='update') {
			$id=$this->input->post('id');
			$image="";
			if ($_FILES['picture']['name'] != "") { 
				$image=$this->image_upload($_FILES['picture']);
				$img_unlink='assets/backend/images/emplyee_image/'.$this->input->post("old_image");
				unlink($img_unlink);
			}else{
			 $image=$this->input->post("old_image");
			}

			$data=array('banner_image'=>$image);

			$result=$this->db->where('id',$id)->update('tbl_profile',$data);
			if ($result) {
				echo '<script>alert("Update successfully !!")</script>';
				redirect(base_url('banner'));
			}
		}
	}

	public function social_media(){
		$data['title']='Social Media';
		$data['page']='Social Media';
		$data['cominfo']=$this->db->query("select id,fb_link,tw_link,ln_link,we_chat from tbl_profile")->row();
		$data['backend_content']='company/social_media';
		$this->load->view('admin/layout',$data);
	}

	public function update_social(){
		if ($this->input->post('action')=='update') {
			$id=trim($this->input->post('action_id'));

			$data=array(
				'fb_link'=>trim($this->input->post('fb_link')),
				'tw_link'=>trim($this->input->post('tw_link')),
				'ln_link'=>trim($this->input->post('ln_link')),
				'we_chat'=>trim($this->input->post('we_chat'))
			);

			$result=$this->db->where('id',$id)->update('tbl_profile',$data);
			if ($result) {
				echo "update";
			}
			else{
				return false;
			}
		}
	}
}
?>