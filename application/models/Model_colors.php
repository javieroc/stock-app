<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Model_colors extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all() {
        $this->db->from('colors');
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function insert($color) {
        $this->db->set($color);
        $this->db->insert('colors');
    }
}
