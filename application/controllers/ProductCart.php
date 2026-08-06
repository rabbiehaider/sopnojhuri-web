<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ProductCart extends CI_Controller
{
    function  __construct()
    {
        parent::__construct();

        // Load cart library
        $this->load->library('cart');

        // Load product model
        $this->load->model('Cart_model', 'ct');
        $this->load->model('Customer_model', 'cm');
        $this->website = $this->db->query("SELECT * FROM tbl_website_profile LIMIT 1")->row();
        $this->orderTable = 'tbl_order_master';
        $this->orderdetailsTable = 'tbl_order_details';
    }
    public function pAddToCart()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $this->db->trans_begin();
            $data = json_decode($this->input->raw_input_stream);

            $insert_data = array(
                'id' => $data->productId,
                'name' => $data->productName,
                'price' => $data->saleRate,
                'image' => $data->productImage,
                'slug' => $data->productSlug,
                'qty' => $data->quantity
            );
            $this->cart->insert($insert_data);

            $this->db->trans_commit();
            $res = ['success' => true, 'message' => 'Product added to cart successfully!', 'cartMainCount' => COUNT($this->cart->contents())];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }
    public function pOrderNow()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $this->db->trans_begin();
            $data = json_decode($this->input->raw_input_stream);

            $insert_data = array(
                'id' => $data->productId,
                'name' => $data->productName,
                'price' => $data->saleRate,
                'image' => $data->productImage,
                'slug' => $data->productSlug,
                'qty' => $data->quantity
            );
            $this->cart->insert($insert_data);

            $this->db->trans_commit();
            $res = ['success' => true, 'message' => 'Product added to cart successfully!', 'cartMainCount' => COUNT($this->cart->contents())];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }
    public function getCartContents()
    {
        $response = [
            'cart' => $this->cart->contents() ?? [],
            'cart_count' => count($this->cart->contents()) ?? 0,
            'sub_total'  => $this->cart->total() ?? 0
        ];
        echo json_encode($response);
    }
    function updateItemQnty()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $this->db->trans_begin();
            $data = json_decode($this->input->raw_input_stream);

            $cart = $this->cart->contents();

            foreach ($cart as $item) {
                if ($item['id'] == $data->id) {
                    $update_data = array(
                        'rowid' => $item['rowid'],
                        'qty'   => $data->qnty
                    );

                    $this->cart->update($update_data);
                }
            }

            $this->db->trans_commit();
            $res = ['success' => true];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }
    function removeCartItem()
    {

        $res = ['success' => false, 'message' => ''];
        try {
            $this->db->trans_begin();
            $data = json_decode($this->input->raw_input_stream);

            $cart = $this->cart->contents();

            foreach ($cart as $item) {
                if ($item['id'] == $data->id) {
                    $this->cart->update([
                        'rowid' => $item['rowid'],
                        'qty' => 0
                    ]);
                }
            }

            $this->db->trans_commit();
            $res = ['success' => true, 'cartMainCount' => COUNT($this->cart->contents())];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }
    public function cusChcekOut()
    {
        $data['title'] = 'Customer Checkout';
        $data['iurl'] = $this->website->Software_Url;
        $data['isd_charge'] = $this->website->isd_charge;
        $data['osd_charge'] = $this->website->osd_charge;
        $data['front_content'] = 'customer/cus_checkout';
        $this->load->view('fontend/layout', $data);
    }
    function placeCusOrder()
    {
        $res = ['success' => false, 'message' => ''];
        try {
            $this->db->trans_begin();
            $data = json_decode($this->input->raw_input_stream);

            $customerName = trim($data->customer->customer_name ?? '');
            $customerMobile = trim($data->customer->customer_mobile ?? '');
            $customerAddress = trim($data->customer->customer_address ?? '');

            if ($customerName == '') {
                echo json_encode(['success' => false, 'message' => 'আপনার নাম লিখুন!']);
                return;
            }
            if ($customerMobile == '') {
                echo json_encode(['success' => false, 'message' => 'আপনার মোবাইল নাম্বার লিখুন!']);
                return;
            }
            if (!preg_match('/^01[3-9]\d{8}$/', $customerMobile)) {
                echo json_encode(['success' => false, 'message' => 'একটি সঠিক মোবাইল নাম্বার লিখুন!']);
                return;
            }
            if ($customerAddress == '') {
                echo json_encode(['success' => false, 'message' => 'আপনার ঠিকানা লিখুন!']);
                return;
            }

            $customerId = $data->customer->customer_id;

            if (isset($data->customer) && $customerId == '') {
                $customerMobile = $data->customer->customer_mobile;

                if (!preg_match('/^01[3-9]\d{8}$/', $customerMobile)) {
                    $res = ['success' => false, 'message' => 'Please enter a valid number!'];
                } else {
                    $customer = (array)$data->customer;

                    unset($customer['Customer_SlNo']);
                    unset($customer['display_name']);
                    unset($customer['Customer_Type']);
                    unset($customer['customer_id']);
                    unset($customer['customer_name']);
                    unset($customer['customer_mobile']);
                    unset($customer['customer_address']);
                    unset($customer['customer_notes']);
                    $cusCount = $this->db->query("SELECT * FROM tbl_customer where Customer_Mobile = ? and branch_id = ?", [$data->customer->customer_mobile, 1]);

                    if ($cusCount->num_rows() == 0) {
                        $customerCode = $this->cm->generateCustomerCode();
                        $customer['Customer_Code'] = $customerCode;
                        $customer['Customer_Name'] = $data->customer->customer_name;
                        $customer['Customer_Type'] = 'online';
                        $customer['Customer_Mobile'] = $customerMobile;
                        $customer['Customer_Address'] = $data->customer->customer_address;
                        $customer['Customer_Email'] = '';
                        $customer['Cust_Pass'] = md5($customerMobile);
                        $customer['Customer_Credit_Limit'] = 0;
                        $customer['status'] = 'a';
                        $customer['AddBy'] = $customerCode;
                        $customer['AddTime'] = date("Y-m-d H:i:s");
                        $customer['last_update_ip'] = get_client_ip();
                        $customer['branch_id'] = 1;
                        $this->db->insert('tbl_customer', $customer);
                        $customerId = $this->db->insert_id();

                        $sData = array(
                            'customer_id'      => $customerId,
                            'customer_code'    => $customer['Customer_Code'],
                            'customer_name'    => $customer['Customer_Name'],
                            'customer_type'    => $customer['Customer_Type'],
                            'customer_mobile'  => $customer['Customer_Mobile'],
                            'customer_email'   => $customer['Customer_Email'],
                            'customer_address' => $customer['Customer_Address'],
                            'password'         => $customer['Customer_Mobile'],
                        );
                        $this->session->set_userdata($sData);
                    } else {
                        $customerId = $cusCount->row()->Customer_SlNo;
                    }
                }
            }

            $orderData = array(
                'SaleMaster_InvoiceNo'           => $this->ct->generateOrderInvoice(),
                'SaleMaster_SaleDate'            => date("Y-m-d"),
                'SaleMaster_SaleType'            => 'online',
                'SaleMaster_PaymentType'         => $data->order->payment_method,
                'customerType'                   => 'online',
                'Customer_IDNo'                  => $customerId,
                'SaleMaster_TotalSaleAmount'     => $data->order->total_amount ?? 0,
                'SaleMaster_TotalDiscountAmount' => 0,
                'SaleMaster_TaxAmount'           => 0,
                'SaleMaster_Freight'             => $data->order->delivery_charge ?? 0,
                'SaleMaster_SubTotalAmount'      => $data->order->sub_total ?? 0,
                'cashPaid'                       => $data->order->total_amount ?? 0,
                'bankPaid'                       => 0,
                'SaleMaster_PaidAmount'          => $data->order->total_amount ?? 0,
                'SaleMaster_DueAmount'           => 0,
                'SaleMaster_Previous_Due'        => 0,
                'SaleMaster_Description'         => $data->customer->customer_notes ?? '',
                'status'                         => 'a',
                'AddBy'                          => $customerId,
                'AddTime'                        => date("Y-m-d H:i:s"),
                'last_update_ip'                 => get_client_ip(),
                'branch_id'                      => 1
            );
            $this->db->insert('tbl_sale_master', $orderData);

            $orderId = $this->db->insert_id();

            foreach ($data->cart as $cartProduct) {
                $product = $this->db->query("SELECT * FROM tbl_product WHERE Product_SlNo = ? ", $cartProduct->id)->row();
                $saleDetails = array(
                    'SaleMaster_IDNo'           => $orderId,
                    'Product_IDNo'              => $cartProduct->id,
                    'SaleDetails_TotalQuantity' => $cartProduct->qty,
                    'Purchase_Rate'             => $product->Product_Purchase_Rate,
                    'SaleDetails_Rate'          => $cartProduct->price,
                    'SaleDetails_Tax'           => 0,
                    'SaleDetails_TotalAmount'   => $cartProduct->qty * $cartProduct->price,
                    'is_service'                => 'false',
                    'status'                    => 'a',
                    'AddBy'                     => $customerId,
                    'AddTime'                   => date('Y-m-d H:i:s'),
                    'last_update_ip'            => get_client_ip(),
                    'branch_id'                 => 1
                );
                $this->db->insert('tbl_sale_details', $saleDetails);
            }
            $this->cart->destroy();

            $this->db->trans_commit();
            $res = ['success' => true, 'message' => 'Your order placed successfully!', 'orderId' => $orderId];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }
}
