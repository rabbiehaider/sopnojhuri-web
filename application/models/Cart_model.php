<?php

class Cart_model extends CI_Model
{
    function find($id)
    {
        return $this->db->where('Product_SlNo', $id)->get('tbl_product')->row();
    }

    public function generateOrderInvoice()
    {
        $branchId = 1;
        $branchNo = strlen($branchId) < 10 ? '0' . $branchId : $branchId;
        $invoice = date('y') . $branchNo . "00001";
        $year = date('y');
        $sales = $this->db->query("SELECT * FROM tbl_sale_master sm where sm.SaleMaster_InvoiceNo like '$year%' and branch_id = ?", $branchId);
        if ($sales->num_rows() != 0) {
            $newSalesId = $sales->num_rows() + 1;
            $zeros = array('0', '00', '000', '0000');
            $invoice = date('y') . $branchNo . (strlen($newSalesId) > count($zeros) ? $newSalesId : $zeros[count($zeros) - strlen($newSalesId)] . $newSalesId);
        }

        return $invoice;
    }
}
