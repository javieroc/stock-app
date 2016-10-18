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

}
