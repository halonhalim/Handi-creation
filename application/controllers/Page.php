<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class Page extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
	}
        
        public function index() {
        $data['contact'] = $this->contact_model->index();
        $data['banners'] = $this->banners_model->index();
        
        $data['article'] = $this->article_model->index();
        $data['homegallery'] = $this->homegallery_model->index();
       
       
         $data['category'] = $this->category_model->index();


        $this->load->view('header', $data);
        $this->load->view('index');
        $this->load->view('footer');
    }   
    
    public function about() {
		$data['contact'] = $this->contact_model->index();
		$data['about'] = $this->aboutus_model->index();
		$this->load->view('header', $data);
		$this->load->view('about');
		$this->load->view('footer');
	}
         public function management() {
		$data['contact'] = $this->contact_model->index();
		$data['management'] = $this->management_model->index();
		$this->load->view('header', $data);
		$this->load->view('management');
		$this->load->view('footer');
	}
       public function gallery_page() {
        $data['contact'] = $this->contact_model->index();
        
        // Pagination settings
        $config['base_url'] = base_url() . 'page/gallery_page';
        $config['per_page'] = 5;
        $config["uri_segment"] = 3;
        $config['total_rows'] = $this->gallerypage_model->gallery();
        $this->pagination->initialize($config);
        $start = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        // Call the model function to get data
        $data['gallerypage'] = $this->gallerypage_model->gallery($start, $config["per_page"]);
        $this->load->view('header', $data);
        $this->load->view('gallery_page');
        $this->load->view('footer');
    }
         public function contact() {
        $data['contact'] = $this->contact_model->index();
        $this->load->view('header', $data);
        $this->load->view('contact');
        $this->load->view('footer');
    }
     // Online feedback
    public function contactEmail() {
        $message = $this->input->post('comments') . '<br/> Contact From <br/>' .
                $this->input->post('name') . '<br/>' .
                $this->input->post('phone');
                $this->input->post('address');

        $contact = $this->contact_model->index();

        $this->email->from($this->input->post('email'), $this->input->post('name'));
        $this->email->to($contact->email, $contact->company_name);
        $this->email->subject("Contact via website");
        $this->email->message($message);

        if ($this->email->send()) {
            $this->session->set_tempdata("msg", "<span style='color:green'> Successfully submitted. </span>", 5);
        } else {
            $this->session->set_tempdata("msg", "<span style='color:red'> Submission fail. Please try again ! </span>", 5);
        }
        redirect('page/contact');
    }
    
    public function category($categoryid){
            $config['base_url'] = base_url() . 'page/category/'.$categoryid;
            $config['per_page'] = 4;
            $config["uri_segment"] = 4;
            $config['total_rows'] = $this->products_model->products($categoryid); 
            $this->pagination->initialize($config);
            $start = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
            $data['products'] = $this->products_model->products($categoryid,$start, $config["per_page"]);
            $data['contact'] = $this->contact_model->index();
            $data['category'] = $this->category_model->index();
            $data['id'] = $categoryid;
            $this->load->view('header', $data);
            $this->load->view('jute');
            $this->load->view('footer');
    }

         public function product_details($id=NULL) {
        $data['contact'] = $this->contact_model->index();
      
        $data['products'] = $this->products_model->get_by_id($id);
        $this->load->view('header', $data);
        $this->load->view('product_details');
        $this->load->view('footer');
    }
    
     public function add_to_cart() {
        $data['contact'] = $this->contact_model->index();
      
        
        $this->load->view('header', $data);
        $this->load->view('add_to_cart');
        $this->load->view('footer');
    }
    
     public function contactadd() {
        $message = $this->input->post('comments') . '<br/> Contact From <br/>' .
                $this->input->post('name') . '<br/>' .
                $this->input->post('phone');
                $this->input->post('address');

        $contact = $this->contact_model->index();

        $this->email->from($this->input->post('email'), $this->input->post('name'));
        $this->email->to($contact->email, $contact->company_name);
        $this->email->subject("Contact via website");
        $this->email->message($message);

        if ($this->email->send()) {
            $this->session->set_tempdata("msg", "<span style='color:green'> Successfully submitted. </span>", 5);
        } else {
            $this->session->set_tempdata("msg", "<span style='color:red'> Submission fail. Please try again ! </span>", 5);
        }
        redirect('page/index');
    }

}
