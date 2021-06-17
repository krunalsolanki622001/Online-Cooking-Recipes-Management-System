<?php

class Categories extends CIF_Controller {

    public $layout = 'full';
    public $module = 'categories';
    public $model = 'Categories_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index($offset = 0) {

        $this->{$this->model}->custom_select = 'categories.*, icons.icon as icon';
        $this->{$this->model}->joins = array(
            'icons' => array('categories.icon_id = icons.icon_id', 'inner')
        );

        $count = $this->db
                        ->select("COUNT(*) AS count")
                        ->join('icons', 'icons.icon_id = categories.icon_id', 'inner')
                        ->get('categories')
                        ->row()->count;

        //Pagination
        $this->load->library('pagination');
        config('pagination_limit', 15);
        $config['total_rows'] = $count;
        $config['base_url'] = site_url('admin/categories/index');
        $config['per_page'] = config('pagination_limit');
        if ($this->uri->segment(2))
            $this->db->offset = $offset;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $this->db->limit($config['per_page'], $offset);
        $this->db->order_by('title', 'ASC');

        $data['items'] = $this->db
                        ->join('icons', 'icons.icon_id = categories.icon_id', 'inner')
                        ->select('categories.*,icons.icon')->order_by('title')->get('categories')->result();
        $this->load->view($this->module . '/index', $data);
    }

    public function manage($id = null) {
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
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules('icon_id', 'Icon', 'trim|required');
        $this->form_validation->set_rules('permalink', 'Permalink', 'trim|required|callback_check');
        $this->form_validation->set_rules('meta_description', 'Meta Description', 'trim');

        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {

            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->icon_id = $this->input->post('icon_id');
            $this->{$this->model}->permalink = $this->input->post('permalink');
            $this->{$this->model}->meta_description = $this->input->post('meta_description');

            $this->{$this->model}->save();
            redirect('admin/' . $this->module);
        }
    }

    public function delete($id = null) {
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
        $this->form_validation->set_message('check', "This Permalink already exist, it must be unique");
        if ($this->uri->segment('4')) {
            $this->db->where('category_id !=', $this->uri->segment('4'));
        }
        if ($this->db->where('permalink', $this->input->post('permalink'))->get('categories')->row())
            return false;
        else
            return true;
    }

}
