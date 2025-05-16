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

            echo '<pre>';
            print_r($data->order);
            exit;

            $customerId = $data->customer->customer_id;

            if (isset($data->customer)) {
                $customerMobile = $data->customer->customer_mobile;

                if (!preg_match('/^01[3-9]\d{8}$/', $customerMobile)) {
                    $res = ['success' => false, 'message' => 'Please enter a valid number!'];
                } else {

                    $customer = (array)$data->customer;
                    unset($customer['Customer_SlNo']);
                    unset($customer['display_name']);
                    unset($customer['Customer_Type']);
                    $mobile_count = $this->db->query("SELECT * FROM tbl_customer where Customer_Mobile = ? and branch_id = ?", [$data->customer->customer_mobile, 1])->row();

                    if (empty($mobile_count)) {
                        $customer['Customer_Code'] = $this->cm->generateCustomerCode();
                        $customer['Customer_Name'] = $data->customer->customer_name;
                        $customer['Customer_Type'] = 'online';
                        $customer['Customer_Mobile'] = $customerMobile;
                        $customer['Customer_Address'] = $data->customer->customer_address;
                        $customer['Customer_Email'] = '';
                        $customer['Cust_Pass'] = $customerMobile;
                        $customer['Customer_Credit_Limit'] = 0;
                        $customer['status'] = 'a';
                        $customer['AddBy'] = $this->session->userdata("userId");
                        $customer['AddTime'] = date("Y-m-d H:i:s");
                        $customer['last_update_ip'] = get_client_ip();
                        $customer['branch_id'] = 1;
                        $this->db->insert('tbl_customer', $customer);
                        $customerId = $this->db->insert_id();

                        $data = array(
                            'customer_id'      => $customerId,
                            'customer_code'    => $customer['Customer_Code'],
                            'customer_name'    => $customer['Customer_Name'],
                            'customer_type'    => $customer['Customer_Type'],
                            'customer_mobile'  => $customer['Customer_Mobile'],
                            'customer_email'   => $customer['Customer_Email'],
                            'customer_address' => $customer['Customer_Address'],
                            'password'         => $customer['Customer_Mobile'],
                        );
                        $this->session->set_userdata($data);
                    }
                }
            }

            $sales = array(
                'SaleMaster_InvoiceNo'           => $this->cm->generateOrderInvoice(),
                'SaleMaster_SaleDate'            => date('Y-m-d'),
                'SaleMaster_SaleType'            => 'online',
                'customerType'                   => 'online',
                'SalseCustomer_IDNo'             => $customerId,
                'SaleMaster_TotalSaleAmount'     => $data->order->total_amount,
                'SaleMaster_TotalDiscountAmount' => 0,
                'SaleMaster_TaxAmount'           => 0,
                'SaleMaster_Freight'             => 0,
                'SaleMaster_SubTotalAmount'      => $data->order->sub_total,
                'cashPaid'                       => $data->order->total_amount,
                'bankPaid'                       => 0,
                'SaleMaster_PaidAmount'          => $data->order->total_amount,
                'SaleMaster_DueAmount'           => 0,
                'SaleMaster_Previous_Due'        => 0,
                'SaleMaster_Description'         => $data->customer->customer_notes,
                'status'                         => 'a',
                "AddBy"                          => $customerId,
                'AddTime'                        => date("Y-m-d H:i:s"),
                'last_update_ip'                 => get_client_ip(),
                'branch_id'                      => 1
            );
            $this->db->insert('tbl_sale_master', $sales);

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

            $this->db->trans_commit();
            $res = ['success' => true, 'message' => 'Your order placed successfully!', 'orderId' => $orderId];
        } catch (Exception $ex) {
            $this->db->trans_rollback();
            $res = ['success' => false, 'message' => $ex->getMessage()];
        }

        echo json_encode($res);
    }













































    function saveCartDetails()
    {
        $productID = $this->input->post('id');
        $productQnty = $this->input->post('qnty');

        $product = $this->ct->find($productID);

        $insert_data = array(
            'id' => $product->Product_SlNo,
            'name' => $product->Product_Name,
            'price' => $product->Product_SellingPrice,
            'image' => $product->Product_Image,
            'qty' => $productQnty
        );

        $this->cart->insert($insert_data);

        echo $fefe = count($this->cart->contents());
    }

    function updateItemQty()
    {
        $update = 0;

        // Get cart item info
        $rowid = $this->input->get('rowid');
        $qty = $this->input->get('qty');

        // Update item in the cart
        if (!empty($rowid) && !empty($qty)) {
            $data = array(
                'rowid' => $rowid,
                'qty'   => $qty
            );
            $update = $this->cart->update($data);
        }

        // Return response
        echo $update ? 'ok' : 'err';
    }

    function removeItem()
    {
        $rowid = $this->input->get('rowid');
        $remove = $this->cart->remove($rowid);
        echo $remove ? 'ok' : 'err';
    }

    function insertCheckout()
    {

        if ($this->cart->total_items() <= 0) {
            redirect('products');
        }

        $invoice_no = $this->ct->generateOrderInvoice();

        $orderData = array(
            'invoice_no' => $invoice_no,
            'customer_id' => $this->session->userdata('id'),
            'customer_name' => strip_tags($this->input->post('name')),
            'customer_email' => strip_tags($this->input->post('email')),
            'customer_phone' => strip_tags($this->input->post('phone')),
            'shipping_address' => strip_tags($this->input->post('address')),
            'total_amount' => $this->cart->total() + 100,
            'shipping_cost' => 100,
            'order_note' => strip_tags($this->input->post('note')),
            'payment_method' => 'cash',
            'order_status' => 'Pending',
            'date' => date('Y-m-d'),
            'status' => 'a',
            'created_at' => date("Y-m-d H:i:s"),
        );

        $this->db->insert($this->orderTable, $orderData);
        $order_id = $this->db->insert_id();

        if ($order_id) {
            $cartItems = $this->cart->contents();

            foreach ($cartItems as $cartProduct) {
                $orderDetails = array(
                    'order_id' => $order_id,
                    'product_id' => $cartProduct['id'],
                    'product_price' => $cartProduct["price"],
                    'quantity' => $cartProduct['qty'],
                    'total_amount' => $cartProduct["price"] * $cartProduct['qty'],
                    'date' => date('Y-m-d'),
                    'created_at' => date('Y-m-d H:i:s')
                );

                $this->db->insert($this->orderdetailsTable, $orderDetails);
                $this->cart->destroy();
            }
        }


        // if ($this->cart->total_items() <= 0) {
        //     redirect('products');
        // }

        // $res = ['success' => false, 'message' => ''];

        // $submit = $this->input->post('placeOrder');

        // if (isset($submit)) {
        //     $this->form_validation->set_rules('name', 'Name', 'required');
        //     $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        //     $this->form_validation->set_rules('phone', 'Phone', 'required');
        //     $this->form_validation->set_rules('address', 'Address', 'required');

        //     if ($this->form_validation->run() == true) {

        //         $orderData = array(
        //             'customer_id' => $this->session->userdata('id'),
        //             'customer_name' => strip_tags($this->input->post('name')),
        //             'customer_email' => strip_tags($this->input->post('email')),
        //             'customer_phone' => strip_tags($this->input->post('phone')),
        //             'shipping_address' => strip_tags($this->input->post('address')),
        //             'total_amount' => $this->cart->total() + 100,
        //             'shipping_cost' => 100,
        //             'order_note' => strip_tags($this->input->post('note')),
        //             'payment_method' => 'cash',
        //             'order_status' => 'Pending',
        //             'date' => date('Y-m-d'),
        //             'status' => 'a',
        //             'created_at' => date("Y-m-d H:i:s"),
        //         );

        //         $this->db->insert($this->orderTable, $orderData);
        //         $order_id = $this->db->insert_id();

        //         if ($order_id) {
        //             $cartItems = $this->cart->contents();

        //             foreach ($cartItems as $cartProduct) {
        //                 $orderDetails = array(
        //                     'order_id' => $order_id,
        //                     'product_id' => $cartProduct['id'],
        //                     'product_price' => $cartProduct["price"],
        //                     'quantity' => $cartProduct['qty'],
        //                     'date' => date('Y-m-d'),
        //                     'created_at' => date('Y-m-d H:i:s')
        //                 );

        //                 $insertOrderItems = $this->db->insert($this->orderdetailsTable, $orderDetails);
        //             }

        //             if ($insertOrderItems) {
        //                 $this->cart->destroy();
        //                 $res = ['success' => true, 'message' => 'Product added to cart successfully.'];

        //                 redirect("my_account");
        //             } else {
        //                 $res = ['success' => false, 'message' => $ex->getMessage()];
        //             }
        //         }
        //     }
        // }
        // echo json_encode($res);
    }

    function placeOrder($custID)
    {
        // Insert order data
        $ordData = array(
            'customer_id' => $custID,
            'grand_total' => $this->cart->total()
        );
        $insertOrder = $this->product->insertOrder($ordData);

        if ($insertOrder) {
            // Retrieve cart data from the session
            $cartItems = $this->cart->contents();

            // Cart items
            $ordItemData = array();
            $i = 0;
            foreach ($cartItems as $item) {
                $ordItemData[$i]['order_id']     = $insertOrder;
                $ordItemData[$i]['product_id']     = $item['id'];
                $ordItemData[$i]['quantity']     = $item['qty'];
                $ordItemData[$i]['sub_total']     = $item["subtotal"];
                $i++;
            }

            if (!empty($ordItemData)) {
                // Insert order items
                $insertOrderItems = $this->product->insertOrderItems($ordItemData);

                if ($insertOrderItems) {
                    // Remove items from the cart
                    $this->cart->destroy();

                    // Return order ID
                    return $insertOrder;
                }
            }
        }
        return false;
    }
}
