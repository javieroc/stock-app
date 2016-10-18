<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_sizes extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function get_all() {
        $this->db->from('sizes');
        $this->db->order_by('size', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function get_all_groups() {
        $this->db->from('groups');
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        $groups = $query->result();

        $result = array();
        foreach ($groups as $group) {
            $result[$group->name] = $this->find_sizes_by_group($group->id);
        }
        return $result;
    }

    function get_all_groups_array() {
        $this->db->from('groups');
        $this->db->order_by('name', 'asc');
        $query = $this->db->get();
        $groups = $query->result();

        $result = array();
        foreach ($groups as $group) {
            $sizes = $this->find_sizes_by_group($group->id);
            $sizes_group = array();
            foreach ($sizes as $size) {
                $sizes_group[] = $size->size;
            }
            $result[$group->id] = implode(' - ', $sizes_group);
        }
        return $result;
    }


    function find_sizes_by_group($group_id) {
        $this->db->from('size_x_group');
        $this->db->join('sizes', 'size_x_group.size_id = sizes.id', 'left');
        $this->db->where('group_id', $group_id);
        $this->db->order_by('size', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    function get_all_array() {
        $sizes_array = array();
        $sizes = $this->get_all();
        foreach ($sizes as $size) {
            $sizes_array[$size->id] = $size->size;
        }
        return $sizes_array;
    }

    function insert($size) {
        $this->db->set($size);
        $this->db->insert('sizes');
    }

    function insert_group($group) {
        $this->db->trans_start();
        $this->db->set($group);
        $this->db->insert('groups');
        $id = $this->db->insert_id();
        $this->db->trans_complete();
        return $id;
    }

    function insert_size_group($group_id, $sizes) {
        $row = array();
        foreach ($sizes as $size) {
            $row['group_id'] = $group_id;
            $row['size_id'] = $size;
            $this->db->set($row);
            $this->db->insert('size_x_group');
        }
    }

}
