<?php

class Dashboard extends CIF_Controller {

    public $layout = 'full';
    public $module = 'dashboard';
    public $model = 'Users_model';

    public function __construct() {
        parent::__construct();
        if (!session('user_id'))
            show_404();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index() {

        $data['countries'] = dd2menu('countries', ['country_id' => 'nicename']);

        $this->load->library('form_validation');
        $this->form_validation->set_rules('firstname', 'lang:global_First_Name', 'trim|required|strip_tags');
        $this->form_validation->set_rules('lastname', 'lang:global_Last_Name', 'trim|required|strip_tags');
        $this->form_validation->set_rules('gender', 'lang:global_Gender', 'trim|required');
        $this->form_validation->set_rules('username', 'lang:global_Username', 'trim|required|strip_tags');
//        $this->form_validation->set_rules('email', 'Email', 'trim|required|is_unique[users.email]');
        $this->form_validation->set_rules('password', 'lang:global_Password', 'trim');
        $this->form_validation->set_rules('country_id', 'lang:global_Country', 'trim|required');
        $this->form_validation->set_rules('description', 'lang:global_Description', 'trim|required|strip_tags');

        $this->form_validation->set_rules("image", 'lang:global_image', "trim|callback_image[0]");

        $data['success'] = false;

        if ($this->form_validation->run() == TRUE) {

            $this->{$this->model}->user_id = session('user_id');
            $this->{$this->model}->firstname = $this->input->post('firstname');
            $this->{$this->model}->lastname = $this->input->post('lastname');
            $this->{$this->model}->username = $this->input->post('username');
            $this->{$this->model}->gender = $this->input->post('gender');
//            $this->{$this->model}->email = $this->input->post('email');
            $this->{$this->model}->country_id = $this->input->post('country_id');
            $this->{$this->model}->description = $this->input->post('description');
            $this->{$this->model}->email_appear = $this->input->post('email_appear') == 1 ? 1 : 0;


            if ($this->input->post('password'))
                $this->{$this->model}->password = md5($this->input->post('password'));
            $this->{$this->model}->save();
            $data['success'] = true;
        }
        $data['item'] = $this->db
                        ->where('user_id', session('user_id'))
                        ->select('users.*, usergroups.title as usergroup, countries.nicename as country')
                        ->join('usergroups', 'users.usergroup_id = usergroups.usergroup_id', 'left')
                        ->join('countries', 'users.country_id = countries.country_id', 'left')
                        ->get('users')->row();
        config('title', lang("global_dashboard"). '-' . $data['item']->firstname . ' ' .  $data['item']->lastname. ' | ' . config('title'));
        $this->load->view($this->module, $data);
    }

    public function image($var) {
        $config['upload_path'] = './cdn/users/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload('image')) {
            
        } else {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->image = $data['file_name'];;
        }
        return true;
    }

    function success() {
        $this->load->view();
    }

}
