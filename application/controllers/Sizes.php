<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sizes extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_sizes');
    }

    public function index() {
        $data['content'] = 'sizes/index';
        $data['title'] = 'Sizes';
        $data['sizes'] = $this->Model_sizes->get_all();
        $this->load->view('admin_layout', $data);
    }

    public function add () {
        $data['content'] = 'sizes/add';
        $data['title'] = 'Add size';
        $this->load->view('admin_layout', $data);
    }

    public function validate () {
        $size = $this->input->post();

        $this->form_validation->set_rules('size', 'Size', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->add();
        }
        else {
            $size['created'] = date('Y/m/d H:i:s');
            $size['updated'] = date('Y/m/d H:i:s');

            $this->Model_sizes->insert($size);

            redirect('sizes/index');
        }
    }

}
