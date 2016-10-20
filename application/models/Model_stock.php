<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_stock extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all() {
        $this->db->select('items.name as item, season, year, colors.name as color, size, quantity');
        $this->db->from('stock');
        $this->db->join('items', 'items.id = stock.item_id', 'left');
        $this->db->join('sizes', 'sizes.id = stock.size_id', 'left');
        $this->db->join('colors', 'colors.id = stock.color_id', 'left');
        $this->db->order_by('items.name', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function insert($stock) {
        $this->db->set($stock);
        $this->db->insert('stock');
    }

    function update($stock){
        $this->db->set($stock);
        $this->db->where('item_id', $stock['item_id']);
        $this->db->where('color_id', $stock['color_id']);
        $this->db->where('size_id', $stock['size_id']);
        $this->db->update('stock');
    }

    function find($item_id, $color_id, $size_id) {
        $this->db->from('stock');
        $this->db->where('item_id', $item_id);
        $this->db->where('color_id', $color_id);
        $this->db->where('size_id', $size_id);
        return $this->db->get();
    }

    function search($item) {
        $this->db->select('items.name as item, season, year, colors.name as color, size, quantity');
        $this->db->from('stock');
        $this->db->join('items', 'items.id = stock.item_id', 'left');
        $this->db->join('sizes', 'sizes.id = stock.size_id', 'left');
        $this->db->join('colors', 'colors.id = stock.color_id', 'left');
        $this->db->like('items.name', $item, 'after');
        $this->db->order_by('items.name', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function insert_batch($stock_data) {
        $item_id = $stock_data['item_id'];
        $colors = $stock_data['colors'];
        $quantities = $stock_data['quantities'];

        foreach ($colors as $color_id) {
            $row = array();
            foreach ($quantities as $size_id => $quantity) {
                $row['item_id'] = $item_id;
                $row['color_id'] = $color_id;
                $row['size_id'] = $size_id;
                $row['quantity'] = $quantity;
                $row['created'] = date('Y/m/d H:i:s');
                $row['updated'] = date('Y/m/d H:i:s');

                $query = $this->find($item_id, $color_id, $size_id);
                if ($query->num_rows() == 1) {
                    $this->update($row);
                }
                else {
                    $this->insert($row);
                }
            }
        }
    }

}
