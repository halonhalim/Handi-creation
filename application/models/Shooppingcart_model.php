
<?php 
defined("BASEPATH") or exit("no direct script allowed");
class Shoppingcart_model extends CI_Model{
    function __construct(){
    parent::__construct();    
        $this->load->library(array('session','cart'));
        $this->load->library('');
        $this->load->helper('url');
        $this->load->database();    
    }
    
    
    public function products_list(){
        
        $this->db->select('*');
        $this->db->from('products');
        $this->db->order_by('products_id','desc');
        $rs = $this->db->get();
        return $rs->result_array();
    }
    
    public function products_byId($pid){
        
        $this->db->select('*');
        $this->db->from('products');
        $this->db->where('products_id',$pid);
        $rs = $this->db->get();
        return $rs->row_array();
    }

}
?>  