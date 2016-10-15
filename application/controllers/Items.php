<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Items extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_items');
        $this->load->model('Model_sizes');
    }

    public function index() {
        $data['content'] = 'items/index';
        $data['title'] = 'Items';
        $data['items'] = $this->Model_items->get_all();
        $this->load->view('admin_layout', $data);
    }

    public function add () {
        $data['content'] = 'items/add';
        $data['title'] = 'Add Item';
        $data['sizes'] = $this->Model_sizes->get_all_array();
        $this->load->view('admin_layout', $data);
    }

    public function validate () {
        $item = $this->input->post();

        $this->form_validation->set_rules('name', 'Name', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->add();
        }
        else {
            $sizes = $item['sizes'];
            unset($item['sizes']);

            $item['created'] = date('Y/m/d H:i:s');
            $item['updated'] = date('Y/m/d H:i:s');
            $item_id = $this->Model_items->insert($item);

            $this->Model_items->insert_item_size($item_id, $sizes);

            redirect('items/index');
        }
    }
}