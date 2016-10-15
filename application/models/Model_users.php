<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Model_users extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all() {
        $this->db->from('users');
        $this->db->order_by('firstname', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function find($email) {
        $this->db->from('users');
        $this->db->where('email', $email);
        return $this->db->get()->row();
    }

    function insert($user) {
        $this->db->set($user);
        $this->db->insert('users');
    }

    function update($user) {
        $this->db->set($user);
        $this->db->where('email', $user['email']);
        $this->db->update('users');
    }

    function delete($email) {
        $this->db->where('email', $email);
        $this->db->delete('users');
    }

    function get_login($email) {
        $this->db->where('email', $email);
        return $this->db->get('users');
    }

}
