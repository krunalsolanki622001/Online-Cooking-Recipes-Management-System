<?php

class Page extends CIF_Controller {

    public $layout = 'full';
    public $module = 'page';
    public $model = 'Pages_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index($permalink = null){
        $data = array();
        if (!$permalink)
            show_404();

       $data['item'] = $this->db->where("permalink", urldecode($permalink))->get("pages")->row();
        if (!$data['item'])
            show_404();
        config('title', $data['item']->title . ' | ' . config('title'));
        $this->load->view($this->module, $data);
    }

}
