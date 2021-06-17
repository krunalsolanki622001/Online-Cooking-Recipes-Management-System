<?php

class Myrecipes extends CIF_Controller {

    public $layout = 'full';
    public $module = 'my_recipes';
    public $model = 'recipes_model';

    public function __construct() {
        parent::__construct();
        if (!session('user_id'))
            show_404();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index() {
        $this->{$this->model}->user_id = session('user_id');
        $data['recipes'] = $this->db
                        ->where('recipes.user_id', session('user_id'))
                        ->select('recipes.*, categories.title as category_title, categories.permalink as category_permalink')
                        ->join('categories', 'categories.category_id = recipes.category_id', 'inner')
                        ->order_by('recipe_id', 'desc')
                        ->get('recipes')->result();
        
        $data['user'] = $this->db
                        ->where('users.user_id', session('user_id'))
                        ->select('users.*, usergroups.title as usergroup')
                        ->join('usergroups', 'users.usergroup_id = usergroups.usergroup_id', 'left')
                        ->get('users')->row();
        $this->load->view($this->module, $data);
    }

}
