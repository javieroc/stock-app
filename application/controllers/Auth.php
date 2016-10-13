<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->library('auth_lib');
        $this->load->model('Model_users');

        //$this->form_validation->set_message('required', 'Debe ingresar un valor para %s');
        //$this->form_validation->set_message('login_user', 'Email o password incorrecto');
    }

    public function login() {
        $data['content'] = 'auth/login';
        $data['title'] = 'Login';
        $this->load->view('layout', $data);
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('auth/login');
    }

    public function validate_login() {
        $this->form_validation->set_rules('email', 'Email', 'required|callback_login_user');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->login();
        }
        else {
            redirect('users/listing');
        }
    }

    public function login_user() {
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        return $this->auth_lib->login_user($email, $password);
    }

    public function register() {
        $data['content'] = 'auth/register';
        $data['title'] = 'Register';
        $this->load->view('layout', $data);
    }

    public function validate_register() {
        $user = $this->input->post();

        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|callback_user_exists');
        $this->form_validation->set_rules('firstname', 'Firstname', 'required|max_length[50]');
        $this->form_validation->set_rules('lastname', 'lastname', 'required|max_length[50]');
        $this->form_validation->set_rules('password', 'Password', 'required|callback_validate_characters_password');
        $this->form_validation->set_rules('repeat_password', 'Repeat Password', 'required|matches[password]');

        if ($this->form_validation->run() == FALSE) {
            $this->register();
        }
        else {
            $password = $this->input->post('password');

            $user['password'] = $this->auth_lib->encrypt_password($password);
            $user['created'] = date('Y/m/d H:i:s');
            $user['updated'] = date('Y/m/d H:i:s');
            unset($user['repeat_password']);

            $this->Model_users->insert($user);

            $session_data = array('user_firstname' => $user['firstname'], 'user_email' => $user['email']);
            $this->session->set_userdata($session_data);

            $data['content'] = 'users/listing';
            $data['title'] = 'Login';
            $data['users'] = $this->Model_users->get_all();
            $data['message'] = '';
            $this->load->view('layout', $data);
        }
    }

    public function user_exists() {
        $user = $this->input->post();
        return $this->auth_lib->user_exists($user, 'insert');
    }

    public function validate_characters_password() {
        $password = $this->input->post('password');
        return $this->auth_lib->validate_characters_password($password);
    }

}
