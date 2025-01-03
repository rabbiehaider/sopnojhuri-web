<?php

class Cart_model extends CI_Model
{
    function find($id)
    {
        return $this->db->where('Product_SlNo', $id)->get('tbl_product')->row();
    }

    public function generateOrderInvoice()
    {        
        $invoice = "SKG" . date('y') . "00001";
        $sales = $this->db->query("select * from tbl_order_master");
        if ($sales->num_rows() != 0) {
            $newSalesId = $sales->num_rows() + 1;
            $zeros = array('0', '00', '000', '0000');
            $invoice = "SKG" . date('y') . (strlen($newSalesId) > count($zeros) ? $newSalesId : $zeros[count($zeros) - strlen($newSalesId)] . $newSalesId);
        }

        return $invoice;
    }
}
