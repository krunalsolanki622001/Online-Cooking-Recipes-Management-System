<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tricks extends CIF_Controller {

    public $layout = 'full';
    public $module = 'tricks';
    public $model = 'blog_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index() {
        //Pagination
        $this->load->library('pagination');
        config('pagination_limit', 15);
        $config['total_rows'] = $this->{$this->model}->get(TRUE);
        $config['suffix'] = '?' . http_build_query($_GET);
        $config['base_url'] = site_url('admin/tricks/index');
        $config['per_page'] = config('pagination_limit');
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();

        if ($this->uri->segment(4))
            $this->{$this->model}->offset = $this->uri->segment(4);

        $data['total'] = $config['total_rows'];
        $this->{$this->model}->limit = config('pagination_limit');
        $this->db->order_by('blog_id', 'DESC');
        $data['items'] = $this->{$this->model}->get();
        $this->load->view($this->module . '/index', $data);
    }

    public function manage($id = FALSE) {
        $data = array();

        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
            $this->{$this->model}->created = date('Y-m-d H:i:s');
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules("permalink", 'Permalink', "trim|required|strip_tags");
        $this->form_validation->set_rules('description', 'description', 'trim|required');
        $this->form_validation->set_rules('short_description', 'short_description', 'trim|required');
        $this->form_validation->set_rules("image", 'Image', "trim|callback_image[0]");
        $this->form_validation->set_rules('meta_description', 'Meta Description', 'trim');
        $this->form_validation->set_rules('tags', 'tags', 'trim');
        $this->form_validation->set_rules('status', 'global_status', 'trim');


        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->permalink = $this->input->post('permalink');
            $this->{$this->model}->description = $this->input->post('description', FALSE);
            $this->{$this->model}->short_description = $this->input->post('short_description');
            $this->{$this->model}->meta_description = $this->input->post('meta_description');
            $this->{$this->model}->tags = $this->input->post('tags');
            $this->{$this->model}->status = $this->input->post('status');
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

    public function image($var) {
        $config['upload_path'] = './cdn/tricks/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if ($this->upload->do_upload('image')) {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->image = $data['file_name'];
        }
        return true;
    }

    public function permalink() {
        $this->layout = 'ajax';
        echo permalink($this->input->post("permalink"));
    }

    public function check() {
        $this->form_validation->set_message('check', "Permalink must be unique");
        if ($this->uri->segment('4')) {
            $this->db->where('blog_id !=', $this->uri->segment('4'));
        }
        if ($this->db->where('permalink', $this->input->post('permalink'))->get('blog')->row())
            return false;
        else
            return true;
    }

}
