<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('cart');
    }

    public function add_to_cart() {
        $qty = $this->input->post('qty');
        $id = $this->input->post('id');
        $products = $this->products_model->get_by_id($id);

        $data = array(
            'id' => $produts->id,
            'qty' => $qty,
            'price' => $products->price,
            'name' => $products->name,
            'options' => array('image' =>$products->file_name,)
        );

        $this->cart->insert($data);
        
        redirect('cart/cart_details');
    }

    public function cart_details() {
            
             
		
		
		$this->load->view('cart_details');
		
    }

}
