<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pages extends CIF_Controller {

    public $layout = 'full';
    public $module = 'pages';
    public $model = 'Pages_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index($offset = 0) {
        $count = $this->db
                        ->select("COUNT(*) AS count")
                        ->get('pages')
                        ->row()->count;

        //Pagination
        $this->load->library('pagination');
        config('pagination_limit', 15);
        $config['total_rows'] = $count;
        $config['base_url'] = site_url('admin/pages/index');
        $config['per_page'] = config('pagination_limit');
        if ($this->uri->segment(2))
            $this->db->offset = $offset;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $this->db->limit($config['per_page'], $offset);
        $this->db->order_by('title', 'ASC');

        $data['items'] = $this->db
                        ->select('pages.*')->order_by('title')->get('pages')->result();
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
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'lang:global_title', 'trim|required');
        $this->form_validation->set_rules('permalink', 'lang:global_permalink', 'trim|required|strip_tags|callback_check');
        $this->form_validation->set_rules('content', 'lang:global_content', 'trim|required');

        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->permalink = $this->input->post('permalink');
            $this->{$this->model}->content = $this->input->post('content', FALSE);
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

    public function permalink() {
        $this->layout = 'ajax';
        echo permalink($this->input->post("permalink"));
    }

    public function check() {
        $this->form_validation->set_message('check', lang("users_This_Permalink_already_exist_it_mus_be_unique"));
        if ($this->uri->segment('4')) {
            $this->db->where('page_id !=', $this->uri->segment('4'));
        }
        if ($this->db->where('permalink', $this->input->post('permalink'))->get('pages')->row())
            return false;
        else
            return true;
    }

}
