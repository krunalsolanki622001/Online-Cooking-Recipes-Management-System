<?php

class Profile extends CIF_Controller {

    public $layout = 'full';
    public $module = 'profile';
    public $model = 'Recipes_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index($id = NULL) {
        $id = (int)$id;
        if (!$id)
            show_404();
        if (!$this->db
                        ->where('user_id', $id)
                        ->get('users')->row())
            show_404();

        $this->data['user'] = $this->db
                        ->where('users.user_id', $id)
                        ->where('status', 'active')
                        ->select('users.*, usergroups.title as usergroup, countries.nicename as country')
                        ->join('usergroups', 'users.usergroup_id = usergroups.usergroup_id', 'left')
                        ->join('countries', 'users.country_id = countries.country_id', 'left')
                        ->get('users')->row();
      
        $this->db->where('user_id', $id)->set("visited", "visited + 1", FALSE)->update('users');

        if (!$this->data['user']) {
            $this->load->view('no-profile');
        } else {
            $this->data['recipes'] = $this->db
                            ->join('users', 'users.user_id = recipes.user_id')
                            ->where('recipes.user_id', $id)
                            ->select('recipes.*, categories.title as category_title, categories.permalink as category_permalink')
                            ->join('categories', 'categories.category_id = recipes.category_id', 'inner')
                            ->where('recipes.status', 'active')
                            ->order_by('recipe_id', 'desc')
                            ->get('recipes')->result();

            $this->data['count'] = $this->db
                            ->select("COUNT(*) AS count")
                            ->where('recipes.user_id', $id)
                            ->where('recipes.status', 'active')
                            ->get('recipes')
                            ->row()->count;

            config('title', $this->data['user']->username . ' - ' . config('title'));

            $this->load->view($this->module, $this->data);
        }
    }
}
