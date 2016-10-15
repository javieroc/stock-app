<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_stock');
        $this->load->model('Model_items');
    }

    public function index() {
        $data['content'] = 'stock/index';
        $data['title'] = 'Stock';
        $data['items'] = $this->Model_stock->get_all();
        $this->load->view('admin_layout', $data);
    }

    public function add () {
        $data['content'] = 'stock/add';
        $data['title'] = 'Add stock';
        $data['items'] = $this->Model_items->get_all_array();
        $data['colors'] = array('1' => 'azul', '2' => 'negro', '3' => 'celeste');
        $this->load->view('admin_layout', $data);
    }

    public function validate() {
        $stock_data = $this->input->post();
        var_dump($stock_data);
    }

    public function ajax($item_id) {
        if($this->input->is_ajax_request()){
            $query = $this->Model_item->get_item_sizes($item_id);
            echo json_encode($query);
        }else{
            show_404();
        }
    }

}
