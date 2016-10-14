<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_stock extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function get_all(){
        $this->db->from('items');
        $this->db->join('stock', 'items.id = stock.item_id', 'left');
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

}
