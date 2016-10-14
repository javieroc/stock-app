<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Items extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('Model_items');
    }

    public function listing() {

    }

}
