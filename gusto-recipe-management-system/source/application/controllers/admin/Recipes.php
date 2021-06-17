<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Recipes extends CIF_Controller {

    public $layout = 'full';
    public $module = 'recipes';
    public $model = 'Recipes_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
        $this->permission();
    }

    public function index($offset = 0) {
        $this->{$this->model}->custom_select = 'recipes.*, categories.title as category';
        $this->{$this->model}->joins = array(
            'categories' => array('categories.category_id = recipes.category_id', 'inner')
        );
        $count = $this->db
                        ->select("COUNT(*) AS count")
                        ->join('categories', 'categories.category_id = recipes.category_id', 'inner')
                        ->get('recipes')
                        ->row()->count;

        //Pagination
        $this->load->library('pagination');
        config('pagination_limit', 15);
        $config['total_rows'] = $count;
        $config['base_url'] = site_url('admin/recipes/index');
        $config['per_page'] = config('pagination_limit');
        if ($this->uri->segment(2))
            $this->db->offset = $offset;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $this->db->limit($config['per_page'], $offset);
        $this->db->order_by('recipe_id', 'DESC');

        $data['items'] = $this->db
                        ->join('categories', 'categories.category_id = recipes.category_id')
                        ->join('users', 'users.user_id = recipes.user_id')
                        ->select('recipes.*, categories.title as category, users.username as username')
                        ->get('recipes')->result();
        $this->load->view($this->module . '/index', $data);
    }

    public function manage($id = null) {
        $data = array();

        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
            $this->{$this->model}->user_id = session('user_id');
            $this->{$this->model}->created = date('Y-m-d H:i:s');
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
        }


        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules('permalink', 'Permalink', 'trim|required|strip_tags|callback_check');
        $this->form_validation->set_rules('category_id', 'Category', 'trim|required');
        $this->form_validation->set_rules('description', 'Description', 'trim|required');
        $this->form_validation->set_rules('serves', 'Serves', 'trim|numeric');
        $this->form_validation->set_rules('prepare_time', 'Prepare Time', 'trim');
        $this->form_validation->set_rules('cooking_time', 'Cooking Time', 'trim');
        $this->form_validation->set_rules('calories', 'Calories', 'trim|numeric');
        $this->form_validation->set_rules('directions', 'Directions', 'trim|required');
        $this->form_validation->set_rules('ingredients', 'Ingredients', 'trim|required');
        $this->form_validation->set_rules("featured_image", 'Featured Image', "trim|callback_image[$id]");
        $this->form_validation->set_rules('meta_description', 'Meta Description', 'trim');
        $this->form_validation->set_rules('difficulty', 'Difficulty', 'trim|required');
        $this->form_validation->set_rules('video', 'Video Link', 'trim|valid_url');
        $this->form_validation->set_rules('status', 'Status', 'trim|required');


        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module . '/manage', $data);

        else {
            $this->{$this->model}->title = $this->input->post('title');
            $this->{$this->model}->permalink = $this->input->post('permalink');
            $this->{$this->model}->category_id = $this->input->post('category_id');
            $this->{$this->model}->description = $this->input->post('description');
            $this->{$this->model}->serves = $this->input->post('serves');
            $this->{$this->model}->prepare_time = $this->input->post('prepare_time');
            $this->{$this->model}->cooking_time = $this->input->post('cooking_time');
            $this->{$this->model}->calories = $this->input->post('calories');
            $this->{$this->model}->directions = $this->input->post('directions');
            $this->{$this->model}->ingredients = $this->input->post('ingredients');
            $this->{$this->model}->gallery = json_encode($_POST["gallery"]);
            $this->{$this->model}->meta_description = $this->input->post('meta_description');
            $this->{$this->model}->difficulty = $this->input->post('difficulty');
            $this->{$this->model}->video = $this->input->post('video');
            $this->{$this->model}->status = $this->input->post('status');

            $id = $this->{$this->model}->save();


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

    public function image($var, $id) {
        $config['upload_path'] = './cdn/' . $this->module;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload('featured_image')) {
            
        } else {
            $data = $this->upload->data();
            if ($data['file_name'])
                $this->{$this->model}->featured_image = $data['file_name'];
        }
        return true;
    }

    public function image_upload() {
        $config['upload_path'] = './cdn/' . $this->module;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $this->load->library('upload', $config);
        $errors = 0;
        $error_message = '';
        $passed_files = [];
        $var = 'file';
        $files = $this->reArrayFiles(@$_FILES[$var]);
        foreach ($files as $idx => $file) {
            $_FILES[$var] = $files[$idx];
            if ($this->upload->do_upload($var)) {
                $data = $this->upload->data();
                if ($data['file_name']) {
                    $ext = pathinfo($data['file_name'], PATHINFO_EXTENSION);
                    $file_name = "IRecipes_" . str_replace([".", " "], "", microtime()) . rand(0, 100) . "_orig." . $ext;
                    rename($data["full_path"], $data["file_path"] . $file_name);
                    $passed_files[] = $file_name;
                }
            } else {
                $errors++;
                $error_message .= strip_tags($this->upload->display_errors());
            }
        }
        if ($passed_files && count($passed_files))
            $this->uploadFile[$var] = ($passed_files);

        if ($errors == count($files))
            die(json_encode(["error" => true, "message" => $error_message]));
        else
            die(json_encode(["error" => false, "files" => $passed_files]));
    }

    public function reArrayFiles($file) {
        $file_ary = array();
        $file_count = count($file['name']);
        $file_key = array_keys($file);

        for ($i = 0; $i < $file_count; $i++) {
            foreach ($file_key as $val) {
                $file_ary[$i][$val] = $file[$val][$i];
            }
        }
        return $file_ary;
    }

    public function permalink() {
        $this->layout = 'ajax';
        echo permalink($this->input->post("permalink"));
    }

    public function check() {
        $this->form_validation->set_message('check', "This Permalink already exist, it must be unique");
        if ($this->uri->segment('4')) {
            $this->db->where('recipe_id !=', $this->uri->segment('4'));
        }
        if ($this->db->where('permalink', $this->input->post('permalink'))->get('recipes')->row())
            return false;
        else
            return true;
    }

}
