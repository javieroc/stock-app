<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth_lib {
    function __construct(){
        $this->CI = & get_instance();
        $this->CI->load->model('Model_users');
    }

    public function login_user($email, $password) {
        $query = $this->CI->Model_users->get_login($email);
        if ($query->num_rows() > 0) {
            $user_password = $query->row('password');
            if (md5($password) == $user_password) {
                $user = $query->row();

                $session_data = array('user_firstname' => $user->firstname, 'user_email' => $user->email);
                $this->CI->session->set_userdata($session_data);
                return TRUE;
            }
            else {
                return FALSE;
            }
        }
        else {
            $this->CI->session->sess_destroy();
            return FALSE;
        }
    }

    public function change_password($current_password, $new_password) {
        if ($this->CI->session->userdata('dni_usuario') == null) {
            return FALSE;
        }

        $dni = $this->CI->session->userdata('dni_usuario');
        $query = $this->CI->Model_usuarios->get_login($dni);
        $passwordDB = $query->row('password');
        $passwordDB = substr($passwordDB, 4, 32);

        if ($passwordDB == md5($actual)) {
            return TRUE;
        }
        else {
            return FALSE;
        }
    }

    public function encrypt_password($password){
        $result = md5($password);
        return $result;
    }

    public function user_exists($user, $action){
        $query = $this->CI->Model_users->get_login($user['email']);

        if ($query->num_rows() > 0 AND $action === 'insert') {
            return FALSE;
        }
        elseif ($query->num_rows() != 1 AND $action === 'update') {
            return FALSE;
        }
        else {
            return TRUE;
        }
    }

    public function validate_characters_password($password){
        $regex = '/[^A-Za-z0-9#$%&\?\.]/';
        if (!preg_match($regex, $password)) {
            return TRUE;
        }
        else {
            return FALSE;
        }
    }

}
