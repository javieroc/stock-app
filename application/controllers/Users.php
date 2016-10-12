<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_users');
    }

    public function list() {
        $data['content'] = 'users/list';
        $data['title'] = 'Login';
        $data['users'] = $this->Model_users->get_all();
        $data['message'] = '';
        $this->load->view('layout', $data);
    }

}
