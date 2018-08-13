<?php if (!defined('BASEPATH')) 	exit('Hacking Attempt: Get out of the system ..!');

class Article  extends CI_Controller {

	public function __construct() {
		parent:: __construct();
		if ($this->session->userdata('isLogin') == FALSE) { // Check user session
			goodbye(); // It's active when hacking attempt.
		}
		checkAccess(); // Check User Access Permission
	}

		public function index() {
		$data['breadcrumb'] = "Article";
		$data['results'] = $this->article_model->index();

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/article/index');
		$this->load->view('admin/templates/footer');
	}

		public function add() {
		$data['breadcrumb'] = "Article";

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/article/add');
		$this->load->view('admin/templates/footer');
	}  

		public function save() {
		// field name, error message, validation rules
		$this->form_validation->set_rules('title', 'title', 'trim|required|xss_clean');
		$this->form_validation->set_rules('details', 'details', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="error">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {

			$this->master_model->do_upload('article', time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('article', $file_name,371 ,275); // Resize image after upload
			} else {
				$file_name = '';
			}

			$data = array(
				'title' => $this->input->post('title'),
				'details' => $this->input->post('details'),
				'file_name' => $file_name
			);

			if ($this->article_model->save($data)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . saved_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
		}
		$this->add();
	}


	public function edit($id) {
		$data['breadcrumb'] = "Article";
		$data['edit'] = $this->article_model->get_by_id($id);

		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/article/edit');
		$this->load->view('admin/templates/footer');
	}


		public function update() {
		$id = $this->input->post('id');
		// field name, error message, validation rules
		$this->form_validation->set_rules('title', 'title', 'trim|required|xss_clean');
		$this->form_validation->set_rules('details', 'details', 'trim|required|xss_clean');

		$this->form_validation->set_error_delimiters('<span class="red">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			$this->edit($id);
		} else {

			$this->master_model->do_upload('article', time()); // Call file upload function

			if ($this->master_model->upload->do_upload('userfile')) {
				$file_name = $this->upload->data('file_name');
				$this->master_model->img_resize('article', $file_name, 371, 275); // Resize image after upload				
				$this->master_model->delete_file('article', $this->input->post('old_file'));
			} else {
				$file_name = $this->input->post('old_file');
			}

			$data = array(
				'title' => $this->input->post('title'),
				'details' => $this->input->post('details'),
				'file_name' => $file_name
			);

			if ($this->article_model->update($data, $id)) {
				$this->form_validation->resetForm();
				$this->session->set_tempdata("msg", "<span class='success'>" . updated_success() . "</span>", 5);
			} else {
				$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
			}
			redirect('article');
		}
	}

	public function delete($id, $file_name=NULL) {
		if ($this->article_model->delete($id) == FALSE) {
			$this->session->set_tempdata("msg", "<span class='error'>" . exception() . "</span>", 5);
		} else {
			$this->master_model->delete_file('service', $file_name);
			$this->session->set_tempdata("msg", "<span class='success'>" . deleted_success() . "</span>", 5);
		}		
		redirect('article');
	}

}

