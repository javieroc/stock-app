<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Colors extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_colors');
    }

    public function index() {
        $data['content'] = 'colors/index';
        $data['title'] = 'Colors';
        $data['colors'] = $this->Model_colors->get_all();
        $this->load->view('admin_layout', $data);
    }

    public function add() {
        $data['content'] = 'colors/add';
        $data['title'] = 'Add color';
        $this->load->view('admin_layout', $data);
    }

    public function validate() {
        $color = $this->input->post();

        $this->form_validation->set_rules('name', 'Name', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->add();
        }
        else {
            $color['created'] = date('Y/m/d H:i:s');
            $color['updated'] = date('Y/m/d H:i:s');

            $this->Model_colors->insert($color);

            redirect('colors/index');
        }
    }

}
