<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cart extends CI_Controller
{
    function  __construct()
    {
        parent::__construct();

        // Load cart library
        $this->load->library('cart');

        // Load product model
        $this->load->model('Cart_model', 'cart_m');
        $this->orderTable = 'tbl_order_master';
        $this->orderdetailsTable = 'tbl_order_details';
    }

    public function saveCart()
    {
        $productID = $this->input->post('id');
        $product = $this->cart_m->find($productID);

        $insert_data = array(
            'id' => $product->Product_SlNo,
            'name' => $product->Product_Name,
            'price' => $product->Product_SellingPrice,
            'image' => $product->Product_Image,
            'qty' => 1
        );

        $this->cart->insert($insert_data);
        echo $fefe = count($this->cart->contents());





        // $res = ['success' => false, 'message' => ''];
        // try {
        //     $data = json_decode($this->input->raw_input_stream);
        //     $productID = $data->productID;

        //     $product = $this->cart_m->find($productID);

        //     // Add product to the cart
        //     $item = array(
        //         'id'    => $product->Product_SlNo,
        //         'qty'    => 1,
        //         'price'    => $product->Product_SellingPrice,
        //         'name'    => $product->Product_Name,
        //         'image' => $product->Product_Image
        //     );

        //     $cart = array($item);

        //     $this->cart->insert($cart);

        //     $res = ['success' => true, 'message' => 'Product added to cart successfully.'];
        // } catch (Exception $ex) {
        //     $res = ['success' => false, 'message' => $ex->getMessage()];
        // }

        // echo json_encode($res);
    }

    function saveCartDetails()
    {
        $productID = $this->input->post('id');
        $productQnty = $this->input->post('qnty');

        $product = $this->cart_m->find($productID);

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

        $invoice_no = $this->cart_m->generateOrderInvoice();

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
