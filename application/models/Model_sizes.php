<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_sizes extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function get_all(){
        $this->db->from('sizes');
        $this->db->order_by('size', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function insert($size){
        $this->db->set($size);
        $this->db->insert('sizes');
    }

}
