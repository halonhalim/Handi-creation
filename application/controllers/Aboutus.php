<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class Aboutus  extends CI_Controller {

	public function __construct() {
		parent:: __construct();
		if ($this->session->userdata('isLogin') == FALSE) { // Check user session
			goodbye(); // It's active when hacking attempt.
		}
		checkAccess(); // Check User Access Permission
	}
        
        public function index() {
		$data['breadcrumb'] = "About Us";
		$data['results'] = $this->aboutus_model->index();

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/aboutus/index');
		$this->load->view('admin/templates/footer');
	}
        
        public function add() {
		$data['breadcrumb'] = "About Us";

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/aboutus/add');
		$this->load->view('admin/templates/footer');
	}  
        
        public function save() {
		// field name, error message, validation rules		
		$this->form_validation->set_rules('title', 'title', 'trim|required|xss_clean');
		$this->form_validation->set_rules('description', 'description', 'trim|required');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->do_upload('aboutus', time()); // Call file upload function
			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('aboutus', $file_name, 704 , 255); // Resize image after upload
			} else {
				$file_name = '';
			}

			$data = array(				
				'title' => $this->input->post('title'),
				'description' => $this->input->post('description'),
				'file_name' => $file_name
			);

			if ($this->aboutus_model->save($data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . saved_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
		}
		$this->add();
	}
        
        
	public function edit($id) {
		$data['breadcrumb'] = "About Us";
		$data['edit'] = $this->aboutus_model->get_by_id($id);

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/aboutus/edit');
		$this->load->view('admin/templates/footer');
	}
        
        
        public function update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('title', 'title', 'trim|required|xss_clean');
		$this->form_validation->set_rules('description', 'description', 'trim|required');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			$this->edit($id);
		} else {

			$this->master_model->do_upload('aboutus', time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('aboutus', $file_name, 704 , 255); // Resize image after upload
				$this->master_model->delete_file('aboutus', $this->input->post('old_file'));
			} else {
				$file_name = $this->input->post('old_file');
			}

			$data = array(
				'title' => $this->input->post('title'),
				'description' => $this->input->post('description'),
				'file_name' => $file_name
			);

			if ($this->aboutus_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('aboutus');
		}
	}

	public function delete($id, $file_name=NULL) {
		if ($this->aboutus_model->delete($id) == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->delete_file('aboutus', $file_name);
			$this->session->set_tempdata("msg", "<span class='success'>" . deleted_success() . "</span>", 5);
		}		
		redirect('aboutus');
	}
        
}


