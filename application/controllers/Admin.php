<?php 

/**
 * 
 */
class Admin extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		// if (isset(!$_SESSION['userid'])){
		// 	redirect ('admin');
		// }
		
		$this->load->model('Admin_model','admin_m');
	}

	public function login(){
		if ($this->session->userdata('userid')){
			redirect (base_url().'dashboard');
		}
		$data['title']='Admin Login Page';		
		$data['img_url']= $this->db->query("select * from tbl_content")->row()->soft_url;
		$this->load->view('admin/index',$data);
	}

	public function login_in(){

        if ($this->input->post('action')=='login')
        {  
           $user_name=$this->input->post('user_name');
           $pass=$this->input->post('password');
           $passwordmd5=md5($pass);
           $password=md5($passwordmd5);
          
           if (empty($user_name)) {
           		echo 'This Username field is not empty';
           }
           else if(empty($pass)){
           	 echo 'This Password field is not empty';
           }
           else{
           		$result=$this->admin_m->user_login($user_name,$password);
          
	           if ($result) {
	           	
	           		$data = array(
					        'userid'  => $result[0]['id'],
					        'username'  =>$result[0]['user_name'],
					        'full_name'  =>$result[0]['full_name'],
					        'image'  =>$result[0]['image'],
					        'logged_in' => TRUE
					);

					$this->session->set_userdata($data);
					echo 'success';

	           }
	           else
	           {
	           		
	           		echo "User Name or Password not match";
	           }
           }
           
    	}
        
	}

	public function dashboard(){
		if (!$this->session->userdata('userid')){
			redirect (base_url('admin'));
		}
		
	
		$data['title']='Dashboard';
		$data['page']='Home';
		$data['backend_content']='administator/home';
		$this->load->view('admin/layout',$data);
	}

	public function logout(){
		unset($_SESSION['userid']);
		unset($_SESSION['username']);
		unset($_SESSION['email']);
		session_destroy();
		redirect (base_url('admin'));
	}
	


	//create administaor 

	public function image_upload($file_name_get){
	   $file_name = $file_name_get['name'];
	   $file_temp = $file_name_get['tmp_name'];

	   $div = explode('.', $file_name);
	   $get_last_e = end($div);
	   $new_name =  rand().'.'.$get_last_e;
	   move_uploaded_file($file_temp,'assets/backend/images/administator/'.$new_name);
	   return $new_name;
	}

	public function add_administator(){
		if (!$this->session->userdata('userid')){
			redirect (base_url('admin'));
		}

		$data['title']='Administator add';
		$data['page']='Administator Add';
		$data['backend_content']='administator/create_admin';
		$this->load->view('admin/layout',$data);
	}

	public function save_admin(){
		if ($this->input->post('action')=='create') {
			$email=$this->input->post('email');
			$phone=$this->input->post('phone');
			$user_name=trim($this->input->post('user_name'));
			$password=trim($this->input->post('password'));
			$cpassword=trim($this->input->post('cpassword'));
			$passmd5=md5($password);
			$pass=md5($passmd5);

			if (!preg_match('/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/',$email)) {
				echo "This email is not valid !";
			}
			else if (!preg_match('/^01[3-9]\d{8}$/',$phone)) {
				
				echo "This phone number is not valid !";
			}
			else{
				if($password == $cpassword){
					
					$data=array(
						'full_name'=>$this->input->post('full_name'),
						'email'=>$email,
						'phone'=>$phone,
						'designation'=>$this->input->post('designation'),
						'address'=>$this->input->post('address'),
						'user_name'=>$user_name,
						'password'=>$pass,
						'type'=>$this->input->post('type'),
						'image'=>$this->image_upload($_FILES['picture']),
						'status'=>'a'
					);
					// print_r($data);
					$result=$this->db->insert('tbl_admin',$data);
					if ($result) {
						echo "created";
					}
					else{
						return false;
					}
				}

				else{
					echo "Password and Re-type password not match";
				}
			}	
		}
	}

	public function show_info(){
		if ($this->input->post('action')=='showdata') {
			$data=$this->db->query("select * from tbl_admin where status='a'")->result();
			$output='';
			$output.='
				<div class="row">

			        <div class="col-md-10">
			        <br>
			          <table class="table table-bordered" id="dataTable">
			            <div id="delete" class="text-success"></div>
			            <thead>
			              <th>Serial</th>
			              <th>Name</th>
			              <th>Phone</th>
			              <th>E-mail</th>
			              <th>Designation</th>
			              <th>Image</th>
			              <th>Role</th>
			            </thead>
			            <tbody>
			';
			$j=1;
			$type='';
			foreach ($data as $value) {
				if ($value->type==1) {
					$type='Admin';
				}
				else if($value->type==2){
					$type='Super Admin';
				}
				$output.='
					<tr>
					  <td>'.$j++.'</td>
					  <td>'.$value->full_name.'</td>
					  <td>'.$value->email.'</td>
					  <td>'.$value->phone.'</td>
					  <td>'.$value->designation.'</td>
					  <td><img src="'.base_url().'assets/backend/images/administator/'.$value->image.'" style="height:40px;width: 60px;"></td>
					  <td>'.$type.'</td>
					  
					</tr>
				';
			}
			$output.='
					</tbody>
		          </table>
		        </div>  
		      </div>
			';
			echo $output;
		}
	}




	public function admin_profile(){

		$id=$this->session->userdata('userid');
		$data['profile_info']=$this->db->query("select * from tbl_admin where id='$id'")->row();
		$data['title']="Admin Profile";
		$data['page']="Profile";
		$data['backend_content']='administator/profile';
	    $this->load->view('admin/layout',$data);
	}


	public function profile($id){

		$data['profile_info']=$this->admin_m->admin_profile_info($id);
		$data['title']="Admin Profile";
		$data['page']="Profile";
		$data['backend_content']='administator/profile';
		$this->load->view('admin/layout',$data);
	}


	public function upro(){
		$id=$this->input->post('id');
		$edutdata=$this->db->query("select * from tbl_admin where id='$id'")->result_array();
		$subarray=array();
		foreach ($edutdata as $key => $value) {
			$subarray['name'] =  $value['name'];
			$subarray['email'] =  $value['email'];
			$subarray['phone'] =  $value['phone'];
			
		   }
		   echo json_encode($subarray);

	}

	public function update_user(){

		if ($this->input->post('action')=='update') {
			$id=$this->input->post('action_id');

			$image='';
			if ($_FILES['image']['name'] != "") { 
					$image=$this->image_upload($_FILES['image']);
					$img_unlink='assets/backend/images/administator/'.$this->input->post("old_image");
					unlink($img_unlink);
				}else{
				 $image=$this->input->post("old_image");
				}

			$data=array(
					'full_name'=>$this->input->post('full_name'),
					'email'=>$this->input->post('email'),
					'phone'=>$this->input->post('phone'),
					'phone'=>$this->input->post('phone'),
					'designation'=>$this->input->post('designation'),
					'address'=>$this->input->post('address'),
					'image'=>$image
				);
				//print_r($data);
				$this->db->where('id',$id);
				$result=$this->db->update('tbl_admin',$data);
				if ($result) {
					echo "updated";
				}else{
					return false;
				}
		}
	}	


	public function change_pass(){
		$id=$this->input->post('id');
	    $old_pass=$this->input->post('old_password');
	    $old_passwordmd5=md5($old_pass);
	    $old_password=md5($old_passwordmd5);
	    $result=$this->db->query("select * from tbl_admin where id='$id' and password='$old_password'")->num_rows();

	      
	    if ($result>0) {
	       	  $new_password=$this->input->post('new_password');
	       	  $new_passmd5=md5($new_password);
	       	  $new_pass=md5($new_passmd5);

	          $retype_pass=$this->input->post('retype_pass');

	           if ($new_password == $retype_pass) {
		       		$data=array('password'=>$new_pass);
		       		$this->db->where('id',$id);
					$result=$this->db->update('tbl_admin',$data);
		       		if($result){

		       			echo "Successfully";

					}else{
						echo "Update faild";
					}
			

		       }else{
		       		echo 'Password or Re-Password not match';
		        }
	   	}else{
			echo 'Old Password  not match';
	   	}
	}


	public function contact_us(){
		$data['contact_user']=$this->admin_m->contact();
		$data['title']="Contact";
		$data['page']="Contact ";
		$data['backend_content']='administator/contact';
		$this->load->view('admin/layout',$data);
	}

	public function view_message($id){
		$data['view_message']=$this->db->query("select * from tbl_contact where id='$id'")->row();
		$data['title']="Contact";
		$data['page']="Contact ";
		$data['backend_content']='administator/messgae';
		$this->load->view('admin/layout',$data);
	}

	public function delete_message($id){
		$data=array('status'=>'d');
		$result=$this->admin_m->delete_message($id,$data);

		if ($result) {
           	$this->session->set_flashdata('message', 'Deleted Successfully');
       		redirect(base_url().'contact-us');
           }else{
	           	$this->session->set_flashdata('message', 'Deleted Fail....');
           		redirect(base_url().'contact-us');
           }
	}
}
?>