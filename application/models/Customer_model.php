<?php

class Customer_model extends CI_Model
{
	public function loginCheck($phone, $pass)
	{
		$query = $this->db->query("SELECT 
				c.*,
				d.District_Name,
				th.Thana_Name
			FROM tbl_customer c
			LEFT JOIN tbl_district d ON d.District_SlNo = c.district_id 
			LEFT JOIN tbl_thana th ON th.Thana_SlNo = c.thana_id
			WHERE c.Customer_Mobile = ? 
			AND c.Cust_Pass = ?
		", [$phone, $pass]);
		if ($query->num_rows() > 0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function check_customer_exits($phone)
	{
		$query = $this->db->query("SELECT * FROM tbl_customer WHERE Customer_Mobile = ?", $phone);
		if ($query->num_rows() > 0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function save_customer($data)
	{
		$query = $this->db->insert('tbl_app_customer', $data);
		return $query;
	}

	public function generateCustomerCode()
	{
		$customerCode = "C00001";

		$lastCustomer = $this->db->query("SELECT * FROM tbl_customer ORDER BY Customer_SlNo DESC LIMIT 1");
		if ($lastCustomer->num_rows() != 0) {
			$newCustomerId = $lastCustomer->row()->Customer_SlNo + 1;
			$zeros = array('0', '00', '000', '0000');
			$customerCode = 'C' . (strlen($newCustomerId) > count($zeros) ? $newCustomerId : $zeros[count($zeros) - strlen($newCustomerId)] . $newCustomerId);
		}

		return $customerCode;
	}
}
