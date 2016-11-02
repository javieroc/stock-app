<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Model_sales extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all() {
        $this->db->from('sales');
        $query = $this->db->get();
        return $query->result();
    }

}
