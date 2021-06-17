<?php

class Myrecipe extends CIF_Controller {

    public $layout = 'full';
    public $module = 'my_recipe';
    public $model = 'Recipes_model';

    public function __construct() {
        parent::__construct();
        if (!session('user_id'))
            show_404();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function manage($id = FALSE) {

        $data = array();
        $this->{$this->model}->user_id = session('user_id');

        $data['user'] = $this->db
                        ->where('users.user_id', session('user_id'))
                        ->select('users.*, usergroups.title as usergroup')
                        ->join('usergroups', 'users.usergroup_id = usergroups.usergroup_id', 'left')
                        ->get('users')->row();
        if ($id) {
            $this->{$this->model}->{$this->_primary_key} = $id;
            $data['item'] = $this->{$this->model}->get();
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
            if (!$data['item'])
                show_404();
        } else {
            $data['item'] = new Std();
            $this->{$this->model}->user_id = session('user_id');
            $this->{$this->model}->status = 'inactive';
            $this->{$this->model}->created = date('Y-m-d H:i:s');
            $this->{$this->model}->updated = date('Y-m-d H:i:s');
        }
        $this->load->library("form_validation");
        $this->form_validation->set_rules('title', 'lang:global_title', 'trim|required|strip_tags');
        $this->form_validation->set_rules('permalink', 'lang:global_permalink', 'trim|required|strip_tags|callback_check');
        $this->form_validation->set_rules('category_id', 'lang:global_Category', 'trim|required|strip_tags');
        $this->form_validation->set_rules('description', 'lang:global_Description', 'trim|required|strip_tags');
        $this->form_validation->set_rules('serves', 'lang:global_Serves', 'trim|numeric|strip_tags');
        $this->form_validation->set_rules('prepare_time', 'lang:global_Prep_Time', 'trim|strip_tags');
        $this->form_validation->set_rules('cooking_time', 'lang:global_Cooking', 'trim|strip_tags');
        $this->form_validation->set_rules('calories', 'lang:global_Calories', 'trim|numeric|strip_tags');
        $this->form_validation->set_rules('directions', 'lang:global_Directions', 'trim|required|strip_tags');
        $this->form_validation->set_rules('ingredients', 'lang:global_Ingredients', 'trim|required|strip_tags');
        $this->form_validation->set_rules("featured_image", 'lang:global_Featured_Image', "trim|callback_image[$id]");
        $this->form_validation->set_rules('meta_description', 'lang:settings_meta_description', 'trim|strip_tags');
        $this->form_validation->set_rules('difficulty', 'lang:global_Difficulty', 'trim|required|strip_tags');
        $this->form_validation->set_rules('video', 'lang:global_Video_link', 'trim|valid_url|strip_tags');


        if ($this->form_validation->run() == FALSE)
            $this->load->view($this->module, $data);

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

            $id = $this->{$this->model}->save();
            redirect('myrecipes');
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
        redirect('myrecipes');
    }

    public function image($var, $id) {
        $config['upload_path'] = './cdn/recipes';
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
        $config['upload_path'] = './cdn/recipes';
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
        $this->form_validation->set_message('check', lang("users_This_Permalink_already_exist_it_mus_be_unique"));
        if ($this->uri->segment('3')) {
            $this->db->where('recipe_id !=', $this->uri->segment('3'));
        }
        if ($this->db->where('permalink', $this->input->post('permalink'))->get('recipes')->row())
            return false;
        else
            return true;
    }

}
