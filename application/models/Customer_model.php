<?php

class Customer_model extends CI_Model
{
	public function loginCheck($phone, $pass)
	{
		$query = $this->db->query("SELECT * FROM tbl_customer WHERE Customer_Mobile = ? AND Cust_Pass = ?", [$phone, $pass]);
		if ($query->num_rows() > 0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

	public function check_exits($phone)
	{
		$query = $this->db->query("select * from tbl_app_customer where phone = ?", $phone);
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
}
