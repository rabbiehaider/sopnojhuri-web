<?php

class Customer_model extends CI_Model 
{
    public function user_login($phone, $pass) {
	    $query = $this->db->query("select * from tbl_app_customer where phone = ? and password = ?",[$phone, $pass]);
		if ($query->num_rows() > 0) {
			return $query->result_array();
		} else {
			return false;
		}
	}

    public function check_exits($phone) {
        $query = $this->db->query("select * from tbl_app_customer where phone = ?", $phone);
        if($query->num_rows() > 0) {
            return $query->result_array();
        } else {
            return false;
        }
    }

	public function save_customer($data) {
		$query = $this->db->insert('tbl_app_customer', $data);
		return $query;
	}

	// public function update_customer($id) {
	// 	$this->db->where('id', $id);
	// 	$query = $this->db->get('tbl_app_customer');
				
	// 	if ($query->num_rows() > 0) {
	// 		return $query->row();
	// 	}
	// }
}