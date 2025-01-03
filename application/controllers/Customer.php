<?php

class Customer extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // Load cart library
        $this->load->library('cart');

        $this->load->model('Customer_model', 'customer_m');
    }

    public function customer_login()
    {
        $data['title'] = 'Customer Login';
        $data['front_content'] = 'page/customer_login';
        $this->load->view('fontend/layout', $data);
    }

    public function login_in()
    {

        $res = ['success' => false, 'message' => ''];
        try {
            $data = json_decode($this->input->raw_input_stream);

            $phone = $data->customer->phone;
            $pass = $data->customer->password;
            $password = md5($pass);

            if (empty($phone)) {
                $res = ['success' => false, 'message' => 'Phone number is required!'];
            } else if (empty($pass)) {
                $res = ['success' => false, 'message' => 'Enter your password!'];
            } else {
                $result = $this->customer_m->user_login($phone, $password);

                if ($result) {
                    $data = array(
                        'id' => $result[0]['id'],
                        'name' => $result[0]['name'],
                        'email' => $result[0]['email'],
                        'phone' => $result[0]['phone'],
                        'address' => $result[0]['address'],
                        'shipping_address' => $result[0]['shipping_address'],
                        'billing_address' => $result[0]['billing_address'],
                        'image' => $result[0]['image'],
                        'password' => $pass,
                    );
                    $this->session->set_userdata($data);
                    $res = ['success' => true, 'message' => 'Login success!', 'user' => $data];
                } else {
                    $res = ['success' => false, 'message' => 'Phone or Password dose not match!'];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function my_account()
    {
        $data['title'] = 'Customer Dashboard';
        $customer_id = $this->session->userdata("id");
        $data['img_url'] = $this->db->query("select * from tbl_content")->row()->soft_url;
        $data['orders'] = $this->db->query("select * from tbl_order_master where status = 'a' and customer_id = '$customer_id' order by id desc")->result();
        $data['details'] = $this->db->query("select * from tbl_app_customer where status = 'a' and id = '$customer_id'")->row();
        $data['cartItems'] = $this->cart->contents();
        $data['front_content'] = 'customer/my_account';
        $this->load->view('fontend/layout', $data);
    }

    function updateDetails()
    {

        $res = ['success' => false, 'message' => ''];
        try {

            $data = json_decode($this->input->raw_input_stream);

            $cus_id = $data->customer->id;
            $name = $data->customer->name;
            $email = $data->customer->email;
            $phone = $data->customer->phone;
            $shipping_address = $data->customer->shipping_address;
            $billing_address = $data->customer->billing_address;

            if (!preg_match('/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/', $email)) {
                $res = ['success' => false, 'message' => 'This email is not valid!'];
            } else if (!preg_match('/^01[3-9]\d{8}$/', $phone)) {
                $res = ['success' => false, 'message' => 'This phone number is not valid!'];
            } else {
                $data = array(
                    'name'              => $name,
                    'email'             => $email,
                    'phone'             => $phone,
                    'shipping_address'  => $shipping_address,
                    'billing_address'   => $billing_address,
                );

                $this->db->where('id', $cus_id);
                $result = $this->db->update('tbl_app_customer', $data);

                if ($result) {
                    $res = ['success' => true, 'message' => 'Account Details Updated Successfully!'];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    function updatePassword()
    {

        $res = ['success' => false, 'message' => ''];
        try {

            $data = json_decode($this->input->raw_input_stream);

            $cus_id = $data->password->id;
            $password = trim($data->password->password);
            $cpassword = trim($data->password->cpassword);
            $passmd5 = md5($password);

            if ($password == $cpassword) {

                $data = array(
                    'password'  => $passmd5,
                );
    
                $this->db->where('id', $cus_id);
                $result = $this->db->update('tbl_app_customer', $data);

                if ($result) {
                    $res = ['success' => true, 'message' => 'Password Updated Successfully!'];
                }
            } else {
                $res = ['success' => false, 'message' => 'Password and Confirm password does not match!'];
            }

            
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function customerInvoice($saleId)
    {
        $data['title'] = "Order Invoice";
        $data['saleId'] = $saleId;
        $data['about'] = $this->db->query("select * from tbl_abouts")->row();
        $data['front_content'] = 'customer/order_invoice';
        $this->load->view('fontend/layout', $data);
    }

    public function getOrders()
    {
        $data = json_decode($this->input->raw_input_stream);

        $clauses = "";
        if (isset($data->dateFrom) && $data->dateFrom != '' && isset($data->dateTo) && $data->dateTo != '') {
            $clauses .= " and om.date between '$data->dateFrom' and '$data->dateTo'";
        }

        if (isset($data->salesId) && $data->salesId != 0 && $data->salesId != '') {
            $clauses .= " and om.id = '$data->salesId'";
            $saleDetails = $this->db->query("
                select 
                od.*,
                    p.Product_Code,
                    p.Product_Name,
                    pc.ProductCategory_Name,
                    u.Unit_Name
                from tbl_order_details od
                join tbl_product p on p.Product_SlNo = od.product_id
                join tbl_productcategory pc on pc.ProductCategory_SlNo = p.ProductCategory_ID
                join tbl_unit u on u.Unit_SlNo = p.Unit_ID
                where od.order_id = ?
            ", $data->salesId)->result();

            $res['saleDetails'] = $saleDetails;
        }
        $sales = $this->db->query("
            select
            om.*
            from tbl_order_master om
            where om.order_status = 'Pending'
            and om.status = 'a'
            $clauses
            order by om.id desc
        ")->result();

        $res['sales'] = $sales;

        echo json_encode($res);
    }

    public function customer_register()
    {
        $data['title'] = 'Customer Registration';
        $data['company'] = $this->db->query("select * from tbl_content")->row();
        // $data['img_url']= $this->db->query("select * from tbl_content")->row()->soft_url;
        $data['front_content'] = 'page/customer_register';
        $this->load->view('fontend/layout', $data);
    }

    public function registration()
    {
        $res = ['success' => false, 'message' => ''];
        try {

            $data = json_decode($this->input->raw_input_stream);

            $name = $data->customer->name;
            $email = $data->customer->email;
            $phone = $data->customer->phone;
            $password = trim($data->customer->password);
            $cpassword = trim($data->customer->cpassword);
            $passmd5 = md5($password);

            if (!preg_match('/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/', $email)) {

                $res = ['success' => false, 'message' => 'This email is not valid!'];
            } else if (!preg_match('/^01[3-9]\d{8}$/', $phone)) {

                $res = ['success' => false, 'message' => 'This phone number is not valid!'];
            } else if ($this->customer_m->check_exits($phone)) {

                $res = ['success' => false, 'message' => $phone . ' Already Exits!'];
            } else {
                if ($password == $cpassword) {

                    $data = array(
                        'name'      => $name,
                        'email'     => $email,
                        'phone'     => $phone,
                        'password'  => $passmd5,
                        'status'    => 'a',
                        'created_at' => 'Y-m-d h:i:s'
                    );

                    $result = $this->customer_m->save_customer($data);
                    $customerId = $this->db->insert_id();
                    $customer = array_merge($data, ['id' => $customerId]);

                    if ($result) {
                        $res = ['success' => true, 'message' => 'Registration success!', 'customer' => $customer];
                    }
                } else {
                    $res = ['success' => false, 'message' => 'Password and Comfirm password dose not match!'];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function image_upload($file_name_get)
    {
        $file_name = $file_name_get['name'];
        $file_temp = $file_name_get['tmp_name'];

        $div = explode('.', $file_name);
        $get_last_e = end($div);
        $new_name =  rand() . '.' . $get_last_e;
        move_uploaded_file($file_temp, 'assets/images/customer/' . $new_name);
        return $new_name;
    }

    public function profileUpdate()
    {
        $res = ['success' => false, 'message' => ''];

        try {
            $id = $this->input->post('id');

            $image = '';
            if ($_FILES['image']['name'] != "") {
                $image = $this->image_upload($_FILES['image']);
                $img_unlink = 'assets/images/customer/' . $this->input->post("image");
                unlink($img_unlink);
            } else {
                $image = $this->input->post("image");
            }

            $data = array(
                'name'      => $data->customer->name,
                'email'     => $data->customer->email,
                'phone'     => $data->customer->phone,
                'address'   => $this->input->post('address'),
                'image'     => $image
            );

            $this->db->where('id', $id);
            $result = $this->db->update('tbl_app_customer', $data);

            if ($result) {
                $res = ['success' => true, 'message' => 'Profile Update success!'];
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function getBooking()
    {
        $data = json_decode($this->input->raw_input_stream);

        $bookings =  $this->db->query("
            select 
                b.*
            from tbl_booking b
            where b.customer_id = ?
            and b.status = ?
        ", [$data->customer_id, $data->status])->result();

        echo json_encode(['bookings' => $bookings]);
    }

    public function billInfo()
    {
        $data = json_decode($this->input->raw_input_stream);

        $bills = $this->db->query("
            select 
                j.*,
                c.Customer_Name
            from tbl_jobcard j
            join tbl_customer c on c.Customer_SlNo = j.customer_id
            where j.status = 'a' 
            and c.Customer_Mobile = ?
        ", $data->phone)->result();

        echo json_encode(['bills' => $bills]);
    }

    public function logout()
    {
        $this->session->unset_userdata('id');
        $this->session->unset_userdata('name');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('phone');
        $this->session->unset_userdata('image');
        redirect("customer-login");
    }
}
