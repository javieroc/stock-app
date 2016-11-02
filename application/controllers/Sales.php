<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sales extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_sales');
    }

    public function index() {
        $data['content'] = 'sales/index';
        $data['title'] = 'Sales';
        $data['users'] = $this->Model_sales->get_all();
        $data['message'] = '';
        $this->load->view('admin_layout', $data);
    }

}
