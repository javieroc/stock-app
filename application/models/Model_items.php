<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_items extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function get_all() {
        $this->db->from('items');
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function get_all_array() {
        $items_array = array();
        $items = $this->get_all();
        foreach ($items as $item) {
            $items_array[$item->id] = $item->name;
        }
        return $items_array;
    }

}
