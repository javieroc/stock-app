<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Stock extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_stock');
        $this->load->model('Model_items');
        $this->load->model('Model_colors');
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
        $data['colors'] = $this->Model_colors->get_all();
        $this->load->view('admin_layout', $data);
    }

    public function validate() {
        $stock_data = $this->input->post();

        $this->form_validation->set_rules('item_id', 'Item', 'required|callback_validate_colors');

        if ($this->form_validation->run() == FALSE) {
            $this->add();
        }
        else {
            //var_dump($stock_data);
            $this->Model_stock->insert_batch($stock_data);

            redirect('stock/index');
        }
    }

    public function ajax($item_id) {
        if($this->input->is_ajax_request()){
            $query = $this->Model_items->get_item_sizes($item_id);
            echo json_encode($query);
        }else{
            show_404();
        }
    }

    public function validate_colors() {
        $colors = $this->input->post('colors');
        if (empty($colors)) {
            return FALSE;
        }
        return TRUE;
    }

    public function validate_sizes() {
        $quantities = $this->input->post('quantities');
        $result = TRUE;
        foreach ($quantities as $size => $value) {
            if (empty($value)) {
                $result = FALSE;
            }
        }
        return $result;
    }

    public function ajax_search(){
        if($this->input->is_ajax_request()){
            $item = $this->input->post('item');
            $query = $this->Model_stock->search($item);
            echo json_encode($query);
        }else{
            show_404();
        }
    }

}
