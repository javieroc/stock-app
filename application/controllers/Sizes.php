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

    public function add() {
        $data['content'] = 'sizes/add';
        $data['title'] = 'Add size';
        $this->load->view('admin_layout', $data);
    }

    public function validate() {
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

    public function groups() {
        $data['content'] = 'sizes/groups';
        $data['title'] = 'Sizes groups';
        $data['groups'] = $this->Model_sizes->get_all_groups();
        $this->load->view('admin_layout', $data);
    }

    public function add_group() {
        $data['content'] = 'sizes/add_group';
        $data['title'] = 'Add grops of sizes';
        $data['sizes'] = $this->Model_sizes->get_all_array();
        $this->load->view('admin_layout', $data);
    }

    public function validate_group () {
        $group = $this->input->post();

        $this->form_validation->set_rules('name', 'Name', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->add_group();
        }
        else {
            $sizes = $group['sizes'];
            unset($group['sizes']);

            $group['created'] = date('Y/m/d H:i:s');
            $group['updated'] = date('Y/m/d H:i:s');
            $group_id = $this->Model_sizes->insert_group($group);

            $this->Model_sizes->insert_size_group($group_id, $sizes);

            redirect('sizes/groups');
        }
    }


}