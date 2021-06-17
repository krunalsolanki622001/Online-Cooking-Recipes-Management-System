<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ads extends CIF_Controller {

    public $layout = 'full';
    public $module = 'ads';
    public $model = 'Ads_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index() {
        $this->{$this->model}->custom_select = 'ads.*, ad_locations.name as location';
        $this->{$this->model}->joins = array(
            'ad_locations' => array('ad_locations.ad_location_id = ads.ad_location_id', 'inner')
        );

        $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module . '/index', $data);
    }

    public function manage($id = FALSE) {
        $data = array();

        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
            $this->{$this->model}->created = date("Y-m-d H:i:s");
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'Title', 'trim|required|strip_tags');
        $this->form_validation->set_rules('ad_location_id', 'ad_location_id', 'trim');
        $this->form_validation->set_rules('link', 'Link', 'trim|strip_tags');
        $this->form_validation->set_rules("code", 'Code', "trim");
        $this->form_validation->set_rules("image", 'Image', "trim|callback_file[$id]");


        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->ad_location_id = $this->input->post('ad_location_id');
            $this->{$this->model}->type = $this->input->post('type');
            $this->{$this->model}->link = $this->input->post('link');
            $this->{$this->model}->code = $this->input->post('code', FALSE);
            $this->{$this->model}->save();
            redirect('admin/' . $this->module);
        }
    }

    public function delete($id = false) {
        if (!$id)
            show_404();
        $this->{$this->model}->{$this->_primary_key} = $id;
        $data['item'] = $this->{$this->model}->get();
        if (!$data['item'])
            show_404();
        $this->{$this->model}->delete();
        redirect('admin/' . $this->module);
    }

    public function file($var, $id) {
        $config['upload_path'] = './cdn/ads/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if ($this->upload->do_upload('image')) {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->image = base_url() . '/cdn/ads/' . $data['file_name'];
        }
        return true;
    }

   

}
