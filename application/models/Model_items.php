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

    function insert($item) {
        $this->db->trans_start();
        $this->db->set($item);
        $this->db->insert('items');
        $id = $this->db->insert_id();
        $this->db->trans_complete();
        return $id;
    }

    function insert_item_size($item_id, $sizes) {
        $row = array();
        foreach ($sizes as $size_id => $size) {
            $row['item_id'] = $item_id;
            $row['size_id'] = $size_id;
            $this->db->set($row);
            $this->db->insert('item_x_size');
        }
    }

    function get_item_sizes($item_id) {
        $this->db->from('item_x_size');
        $this->db->join('items', 'items.id = item_x_size.item_id', 'left');
        $this->db->join('sizes', 'sizes.id = item_x_size.size_id', 'left');
        $this->db->order_by('size', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

}
