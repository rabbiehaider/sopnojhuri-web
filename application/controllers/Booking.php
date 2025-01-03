<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 
 */
class Booking extends CI_Controller
{
	
    public function generateBookingCode(){
        $bookingCode = "TN00001";
        
        $lastBooking = $this->db->query("select * from tbl_booking order by id desc limit 1");
        if($lastBooking->num_rows() != 0){
            $newBookingId = $lastBooking->row()->id + 1;
            $zeros = array('0', '00', '000', '0000');
            $bookingCode = 'TN' . (strlen($newBookingId) > count($zeros) ? $newBookingId : $zeros[count($zeros) - strlen($newBookingId)] . $newBookingId);
        }

        return $bookingCode;
    }

    public function bookingAlreadyExits(){
        $data = json_decode($this->input->raw_input_stream);

        $booking = $this->db->query("
        select 
            b.* 
        from tbl_booking b 
        where b.status != 'd' 
        and b.phone = ? 
        order by b.id desc
        ", $data->phoneNo)->row();

        echo json_encode($booking);
    }

    public function saveBooking()
    {
        $res = ['success'=>false, 'message'=>''];
        try {
            $data = json_decode($this->input->raw_input_stream);
            
            $booking = (array)$data;
            $booking['token_no'] = $this->generateBookingCode();
            $booking['status'] = 'p';
            $this->db->insert('tbl_booking', $booking);
            $res = ['success'=>true, 'message' => 'Booking Appointment successfully submit!'];
        } catch (\Exception $e) {
            $res = ['success'=>false, 'message'=>$e->getMessage()];
        }
        echo json_encode($res);
    }
}