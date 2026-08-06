<?php

class Customer extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // Load cart library
        $this->load->library('cart');
        $this->load->model('Admin_model', 'am');
        $this->load->model('Customer_model', 'cm');
        $this->website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row();
    }

    public function index()
    {
        $data['title'] = 'Customer Login';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/customer_login';
        $this->load->view('fontend/layout', $data);
    }

    public function customer_login()
    {
        $session = $this->am->checkSession();
        if ($session) {
            redirect(base_url('customer/account'));
        }

        $data['title'] = 'Customer Login';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/customer_login';
        $this->load->view('fontend/layout', $data);
    }

    public function customerLoginCheck()
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
                $result = $this->cm->loginCheck($phone, $password);

                // echo '<pre>';
                // print_r($result);
                // exit;

                if ($result) {
                    if ($result[0]['status'] != 'a') {
                        $res = ['success' => false, 'message' => 'You are deactivated! Please contact with Admin.'];
                    }

                    $data = array(
                        'customer_id'      => $result[0]['Customer_SlNo'],
                        'customer_code'    => $result[0]['Customer_Code'],
                        'customer_name'    => $result[0]['Customer_Name'],
                        'customer_type'    => $result[0]['Customer_Type'],
                        'customer_mobile'  => $result[0]['Customer_Mobile'],
                        'customer_email'   => $result[0]['Customer_Email'],
                        'customer_address' => $result[0]['Customer_Address'],
                        'district_id'      => $result[0]['district_id'],
                        'district_name'    => $result[0]['District_Name'],
                        'thana_id'         => $result[0]['thana_id'],
                        'thana_name'       => $result[0]['Thana_Name'],
                        'customer_image'   => $result[0]['image_name'],
                        'password'         => $pass,
                    );
                    $this->session->set_userdata($data);
                    $res = ['success' => true, 'message' => 'You are login successfully!', 'user' => $data];
                } else {
                    $res = ['success' => false, 'message' => 'Your Phone or Password dose not match!'];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function customerAccount()
    {
        $data['title'] = 'Customer Account';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/customer_account';
        $this->load->view('fontend/layout', $data);
    }

    public function customerOrders()
    {
        $data['title'] = 'Customer Orders';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/customer_orders';
        $this->load->view('fontend/layout', $data);
    }

    public function customerAccountUpdate()
    {
        $data['title'] = 'Account Update';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/account_update';
        $this->load->view('fontend/layout', $data);
    }

    public function passwordChange()
    {
        $data['title'] = 'Change Password';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/password_change';
        $this->load->view('fontend/layout', $data);
    }
    public function saveProfileUpdate()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $customerId = $this->session->userdata('customer_id');
            if ($customerId == '') {
                $res = ['success' => false, 'message' => 'You are not logged in!'];
                echo json_encode($res);
                return;
            }

            $data = array(
                'Customer_Name'    => trim($this->input->post('name')),
                'Customer_Mobile'  => trim($this->input->post('phone')),
                'Customer_Email'   => trim($this->input->post('email')),
                'Customer_Address' => trim($this->input->post('address')),
                'district_id'      => $this->input->post('district_id'),
                'thana_id'         => $this->input->post('thana_id'),
                'UpdateTime'       => date('Y-m-d H:i:s'),
                'last_update_ip'   => get_client_ip(),
            );

            if (empty($data['Customer_Name'])) {
                $res = ['success' => false, 'message' => 'Name is required!'];
            } else if (!preg_match('/^01[3-9]\d{8}$/', $data['Customer_Mobile'])) {
                $res = ['success' => false, 'message' => 'Please enter a valid phone number!'];
            } else if (!empty($data['Customer_Email']) && !preg_match('/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/', $data['Customer_Email'])) {
                $res = ['success' => false, 'message' => 'Email is not valid!'];
            } else if (empty($data['Customer_Address'])) {
                $res = ['success' => false, 'message' => 'Address is required!'];
            } else if (empty($data['district_id'])) {
                $res = ['success' => false, 'message' => 'District is required!'];
            } else if (empty($data['thana_id'])) {
                $res = ['success' => false, 'message' => 'Area is required!'];
            } else {
                // Check if mobile is already used by another customer
                $check = $this->db->query("SELECT Customer_SlNo FROM tbl_customer WHERE Customer_Mobile = ? AND Customer_SlNo != ?", [$data['Customer_Mobile'], $customerId]);
                if ($check->num_rows() > 0) {
                    $res = ['success' => false, 'message' => 'This phone number is already used by another account!'];
                    echo json_encode($res);
                    return;
                }

                // Image upload
                if (!empty($_FILES['image']['name'])) {
                    $img_url = $this->input->post('img_url');

                    $temp_upload_path = FCPATH . 'uploads/temp/';
                    $final_upload_path = FCPATH . 'uploads/customers/';

                    if (!is_dir($temp_upload_path)) {
                        mkdir($temp_upload_path, 0777, true);
                    }
                    if (!is_dir($final_upload_path)) {
                        mkdir($final_upload_path, 0777, true);
                    }

                    // Delete old image
                    $oldCustomer = $this->db->query("SELECT image_name FROM tbl_customer WHERE Customer_SlNo = ?", $customerId)->row();
                    if ($oldCustomer && !empty($oldCustomer->image_name)) {
                        $oldFileName = basename($oldCustomer->image_name);
                        $oldImagePathLocal = FCPATH . 'uploads/customers/' . $oldFileName;
                        if (file_exists($oldImagePathLocal)) {
                            @unlink($oldImagePathLocal);
                        }

                        $this->deleteRemoteFile($oldCustomer->image_name);
                    }

                    // Upload to local temp first
                    $config['upload_path']   = $temp_upload_path;
                    $config['allowed_types'] = 'jpg|jpeg|png|gif|webp';
                    $config['max_size']      = 2048;
                    $config['file_name']     = 'C' . sprintf('%05d', $customerId) . '_' . time();

                    $this->load->library('upload', $config);
                    if ($this->upload->do_upload('image')) {
                        $uploadData = $this->upload->data();
                        $tempFilePath = $temp_upload_path . $uploadData['file_name'];
                        $finalFilePath = $final_upload_path . $uploadData['file_name'];

                        // Move to local final directory
                        if (copy($tempFilePath, $finalFilePath)) {
                            unlink($tempFilePath); // Delete temp file

                            // Now upload to remote server (localhost:85)
                            $remoteUploadResult = $this->uploadToRemoteServer($finalFilePath, $uploadData['file_name'], $img_url);

                            if ($remoteUploadResult['success']) {
                                // Store URL in database
                                $data['image_name'] = $img_url . 'uploads/customers/' . $uploadData['file_name'];
                            } else {
                                // If remote upload fails, still use local URL
                                $data['image_name'] = base_url('uploads/customers/' . $uploadData['file_name']);
                            }
                        } else {
                            $res = ['success' => false, 'message' => 'Failed to move uploaded file!'];
                            echo json_encode($res);
                            return;
                        }
                    } else {
                        $res = ['success' => false, 'message' => strip_tags($this->upload->display_errors())];
                        echo json_encode($res);
                        return;
                    }
                }

                $this->db->where('Customer_SlNo', $customerId);
                $result = $this->db->update('tbl_customer', $data);

                if ($result) {
                    // Update session data
                    $sessionData = array(
                        'customer_name'    => $data['Customer_Name'],
                        'customer_mobile'  => $data['Customer_Mobile'],
                        'customer_email'   => $data['Customer_Email'],
                        'customer_address' => $data['Customer_Address'],
                        'district_id'      => $data['district_id'],
                        'thana_id'         => $data['thana_id'],
                    );
                    if (isset($data['image_name'])) {
                        $sessionData['customer_image'] = $data['image_name'];
                    }
                    $this->session->set_userdata($sessionData);

                    // Update district_name & thana_name in session
                    $district = $this->db->query("SELECT District_Name FROM tbl_district WHERE District_SlNo = ? AND status = 'a'", $data['district_id'])->row();
                    if ($district) {
                        $this->session->set_userdata('district_name', $district->District_Name);
                    }
                    $thana = $this->db->query("SELECT Thana_Name FROM tbl_thana WHERE Thana_SlNo = ? AND status = 'a'", $data['thana_id'])->row();
                    if ($thana) {
                        $this->session->set_userdata('thana_name', $thana->Thana_Name);
                    }

                    $res = ['success' => true, 'message' => 'Profile updated successfully!'];
                } else {
                    $res = ['success' => false, 'message' => 'Profile update failed!'];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something went wrong! ' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    private function uploadToRemoteServer($localFilePath, $fileName, $remoteBaseUrl)
    {
        $remoteUrl = $remoteBaseUrl . 'uploads/customers/' . $fileName;
        $remotePath = '/var/www/html/uploads/customers/';

        $ch = curl_init();
        $postData = array(
            'file' => new CURLFile($localFilePath),
            'action' => 'upload'
        );

        curl_setopt($ch, CURLOPT_URL, $remoteBaseUrl . 'upload_handler.php');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);

        $response = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $error = curl_error($ch);
        curl_close($ch);

        if ($httpCode == 200 && !empty($response)) {
            $result = json_decode($response, true);
            return ['success' => true, 'result' => $result];
        }

        return ['success' => false, 'error' => $error];
    }

    private function deleteRemoteFile($fileUrl)
    {
        // Extract filename from URL
        $fileName = basename($fileUrl);
        $remoteBaseUrl = str_replace('uploads/customers/' . $fileName, '', $fileUrl);

        $ch = curl_init();
        $postData = array(
            'file' => $fileName,
            'action' => 'delete'
        );

        curl_setopt($ch, CURLOPT_URL, $remoteBaseUrl . 'upload_handler.php');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);

        $response = curl_exec($ch);
        curl_close($ch);

        return $response;
    }

    public function savePasswordChange()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $customerId = $this->session->userdata('customer_id');
            if ($customerId == '') {
                $res = ['success' => false, 'message' => 'You are not logged in!'];
                echo json_encode($res);
                return;
            }

            $data = json_decode($this->input->raw_input_stream);

            $oldPassword = trim($data->password->old_password);
            $newPassword = trim($data->password->new_password);
            $confirmPassword = trim($data->password->confirm_password);

            if (empty($oldPassword)) {
                $res = ['success' => false, 'message' => 'Enter your old password!'];
            } else if (empty($newPassword)) {
                $res = ['success' => false, 'message' => 'Enter your new password!'];
            } else if (strlen($newPassword) < 6) {
                $res = ['success' => false, 'message' => 'New password must be at least 6 characters!'];
            } else if ($newPassword != $confirmPassword) {
                $res = ['success' => false, 'message' => 'New password and confirm password do not match!'];
            } else {
                $customer = $this->db->query("SELECT Cust_Pass FROM tbl_customer WHERE Customer_SlNo = ? AND status = 'a'", $customerId)->row();

                if (!$customer) {
                    $res = ['success' => false, 'message' => 'Customer not found!'];
                } else if (md5($oldPassword) != $customer->Cust_Pass) {
                    $res = ['success' => false, 'message' => 'Old password is not correct!'];
                } else {
                    $updateData = array(
                        'Cust_Pass'      => md5($newPassword),
                        'UpdateTime'     => date('Y-m-d H:i:s'),
                        'last_update_ip' => get_client_ip(),
                    );

                    $this->db->where('Customer_SlNo', $customerId);
                    $result = $this->db->update('tbl_customer', $updateData);

                    if ($result) {
                        $this->session->set_userdata('password', $newPassword);
                        $res = ['success' => true, 'message' => 'Password changed successfully!'];
                    } else {
                        $res = ['success' => false, 'message' => 'Password update failed!'];
                    }
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something went wrong! ' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function trackYourOrder()
    {
        $data['title'] = 'Track Order';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/order_track';
        $this->load->view('fontend/layout', $data);
    }

    public function customerRegister()
    {
        $session = $this->am->checkSession();
        if ($session) {
            redirect(base_url('customer/account'));
        }

        $data['title'] = 'Customer Registration';
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/customer_register';
        $this->load->view('fontend/layout', $data);
    }

    public function customerCreate()
    {
        $res = ['success' => false, 'message' => ''];
        try {

            $data = json_decode($this->input->raw_input_stream);

            $name = $data->customer->name;
            $email = $data->customer->email;
            $phone = $data->customer->phone;
            $password = trim($data->customer->password);
            $passmd5 = md5($password);

            if (!empty($email) && (!preg_match('/^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/', $email))) {
                $res = ['success' => false, 'message' => 'Email is not valid!'];
            } else if (!preg_match('/^01[3-9]\d{8}$/', $phone)) {
                $res = ['success' => false, 'message' => 'Phone number is not valid!'];
            } else if ($this->cm->check_customer_exits($phone)) {
                $res = ['success' => false, 'message' => 'Customer ' . $phone . ' already exits! Please login again with your phone number.'];
            } else {

                $customer = array(
                    'Customer_Code'    => $this->cm->generateCustomerCode(),
                    'Customer_Name'    => $name,
                    'Customer_Type'    => 'online',
                    'Customer_Mobile'  => $phone,
                    'Customer_Email'   => $email,
                    'Cust_Pass'        => $passmd5,
                    'status'           => 'a',
                    'AddBy'            => $this->session->userdata("userId"),
                    'AddTime'          => date('Y-m-d H:i:s'),
                    'last_update_ip'   => get_client_ip(),
                    'branch_id'        => 1
                );
                $result = $this->db->insert('tbl_customer', $customer);
                $customerId = $this->db->insert_id();
                $customer = array_merge($customer, ['id' => $customerId]);

                if ($result) {
                    $res = ['success' => true, 'message' => 'Registration success!', 'customer' => $customer];
                }
            }
        } catch (\Exception $e) {
            $res = ['success' => false, 'message' => 'Something wents wrong!' . $e->getMessage()];
        }

        echo json_encode($res);
    }

    public function customerLogout()
    {
        $this->session->unset_userdata('customer_id');
        $this->session->unset_userdata('customer_code');
        $this->session->unset_userdata('customer_name');
        $this->session->unset_userdata('customer_type');
        $this->session->unset_userdata('customer_mobile');
        $this->session->unset_userdata('customer_email');
        $this->session->unset_userdata('customer_address');
        $this->session->unset_userdata('customer_image');
        $this->session->unset_userdata('password');
        redirect(base_url('customer/login'));
    }

    public function getCustOrders()
    {
        $res = [];
        $data = json_decode($this->input->raw_input_stream);
        $branchId = 1;
        $clauses = "";
        $status = "a";
        if (isset($data->status) && $data->status != '') {
            $status = $data->status;
        }

        if (isset($data->customerId) && $data->customerId != '') {
            $clauses .= " AND sm.Customer_IDNo = '$data->customerId'";
        }

        if (isset($data->phone_no) && $data->phone_no != '') {
            $clauses .= " AND c.Customer_Mobile = '$data->phone_no'";
        }

        if (isset($data->invoice_id) && $data->invoice_id != '') {
            $clauses .= " AND sm.SaleMaster_InvoiceNo = '$data->invoice_id'";
        }

        if (isset($data->orderId) && $data->orderId != 0 && $data->orderId != '') {
            $clauses .= " AND sm.SaleMaster_SlNo = '$data->orderId'";
            $saleDetails = $this->db->query("SELECT 
                    sd.*,
                    p.Product_Code,
                    p.Product_Name,
                    p.Product_Image,
                    pc.Category_Name,
                    u.Unit_Name
                from tbl_sale_details sd
                left join tbl_product p on p.Product_SlNo = sd.Product_IDNo
                left join tbl_category pc on pc.Category_SlNo = p.ProductCategory_ID
                left join tbl_unit u on u.Unit_SlNo = p.Unit_ID
                where sd.SaleMaster_IDNo = ?
                and sd.status = '$status'
            ", $data->orderId)->result();

            $res['orderDetails'] = $saleDetails;
        }
        $sales = $this->db->query("SELECT 
                sm.SaleMaster_SlNo,
                sm.SaleMaster_InvoiceNo,
                sm.SaleMaster_PaymentType,
                sm.Customer_IDNo,
                sm.SaleMaster_SaleDate,
                sm.SaleMaster_Description,
                sm.SaleMaster_SubTotalAmount,
                sm.SaleMaster_Freight,
                sm.SaleMaster_TotalSaleAmount,
                sm.SaleMaster_PaidAmount,
                sm.status,
                sm.delivery_status,
                CASE sm.delivery_status
                    WHEN 'p' THEN 'Pending'
                    WHEN 's' THEN 'Shipped'
                    WHEN 'o' THEN 'On The Way'
                    WHEN 'd' THEN 'Delivered'
                    WHEN 'c' THEN 'Cancelled'
                END AS order_status,
                sm.SaleMaster_PaymentType,
                CASE sm.SaleMaster_PaymentType
                    WHEN 'cod' THEN 'Cash On Delivery'
                    WHEN 'bkash' THEN 'BKash'
                    WHEN 'bank' THEN 'Bank Payment'
                END AS payment_type,
                IFNULL(c.Customer_Code, 'Cash Customer') AS Customer_Code,
                IFNULL(c.Customer_Name, sm.customerName) AS Customer_Name,
                IFNULL(c.Customer_Mobile, sm.customerMobile) AS Customer_Mobile,
                IFNULL(c.Customer_Address, sm.customerAddress) AS Customer_Address,
                IFNULL(c.Customer_Email, '') AS Customer_Email,
                br.Branch_name
            FROM tbl_sale_master sm
            LEFT JOIN tbl_customer c ON c.Customer_SlNo = sm.Customer_IDNo
            LEFT JOIN tbl_outlet br ON br.branch_id = sm.branch_id
            WHERE sm.branch_id = '$branchId'
            AND sm.status = '$status'
            $clauses
            ORDER BY sm.SaleMaster_SlNo DESC
        ")->result();

        $res['orders'] = $sales;

        echo json_encode($res);
    }

    public function custSuccInvoice($orderId)
    {
        $data['title'] = "Order Invoice";
        $data['orderId'] = $orderId;
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/success_invoice';
        $this->load->view('fontend/layout', $data);
    }

    public function custInvoice($orderId)
    {
        $data['title'] = "Order Invoice";
        $data['orderId'] = $orderId;
        $data['iurl'] = $this->website->Software_Url;
        $data['front_content'] = 'customer/order_invoice';
        $this->load->view('fontend/layout', $data);
    }

    public function getDistricts()
    {
        $districts = $this->db->query("SELECT District_SlNo, District_Name FROM tbl_district WHERE status = 'a' ORDER BY District_Name ASC")->result();
        echo json_encode($districts);
    }

    public function getThanas()
    {
        $data = json_decode($this->input->raw_input_stream);
        $districtId = isset($data->district_id) ? $data->district_id : 0;

        $thanas = $this->db->query("SELECT Thana_SlNo, Thana_Name FROM tbl_thana WHERE District_SlNo = ? AND status = 'a' ORDER BY Thana_Name ASC", $districtId)->result();
        echo json_encode($thanas);
    }
}
