<?php

class Recipes extends CIF_Controller {

    public $layout = 'full';
    public $module = 'recipes';
    public $model = 'Recipes_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index($offset = 0) {
        $data = array();
        //Get all Categories to right side
        $data['categories_side'] = $this->db
                        ->join('icons', 'icons.icon_id = categories.icon_id', 'inner')
                        ->select('categories.*,icons.icon')->order_by('title')->get('categories')->result();

        //Get cagtegories data in search
        $categories[''] = lang("global_Choose_All_Categories");
        foreach ($this->db->get('categories')->result() as $category) {
            $categories[$category->category_id] = $category->title;
        }
        $data['categories'] = $categories;

        $count = $this->db
                        ->join('users', 'users.user_id = recipes.user_id', 'inner')
                        ->select("COUNT(*) AS count")
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->get('recipes')
                        ->row()->count;

        config('pagination_limit', 20);
        $this->load->library('pagination');
        $config['total_rows'] = $count;
        $config['base_url'] = site_url('recipes/index/');
        $config['per_page'] = config('pagination_limit');
        $config['reuse_query_string'] = TRUE;
        if ($this->uri->segment(2))
            $this->db->offset = $offset;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $this->db->limit($config['per_page'], $offset);

        $data['items'] = $this->db
                        ->join('categories', 'categories.category_id = recipes.category_id')
                        ->join('users', 'users.user_id = recipes.user_id', 'inner')
                        ->select('users.*, recipes.*, categories.title as category_title, categories.permalink as category_permalink')
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->order_by('recipes.recipe_id', 'desc')
                        ->get('recipes')->result();
        config('title', lang("global_Recipes") . ' | ' . config('title'));
        $this->load->view($this->module, $data);
    }

    public function search($offset = 0) {
        //Get all Categories to right side
        $this->data['categories_side'] = $this->db
                        ->join('icons', 'icons.icon_id = categories.icon_id', 'inner')
                        ->select('categories.*,icons.icon')->order_by('title')->get('categories')->result();
        //Get cagtegories data in search
        $categories[''] = lang("global_Choose_All_Categories");
        foreach ($this->db->get('categories')->result() as $category) {
            $categories[$category->category_id] = $category->title;
        }
        $this->data['categories'] = $categories;

        $count = $this->db
                        ->join('users', 'users.user_id = recipes.user_id', 'inner')
                        ->select("COUNT(*) AS count")
                        ->like('title', $this->input->get('title'), 'both')
                        ->like('category_id', $this->input->get('category_id'), 'both')
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->get('recipes')
                        ->row()->count;
        $this->data['count'] = $count;
        // PAGINATION
        config('pagination_limit', 20);
        $this->load->library('pagination');
        $config['base_url'] = site_url('recipes/search/');
        $config['total_rows'] = $count;
        $config['per_page'] = config('pagination_limit');
        $config['reuse_query_string'] = TRUE;
        if ($this->uri->segment(2))
            $this->db->offset = $offset;
        $this->pagination->initialize($config);
        $this->data['pagination'] = $this->pagination->create_links();
        $this->db->limit($config['per_page'], $offset);
        $this->data['items'] = $this->db
                        ->like('recipes.title', $this->input->get('title'), 'both')
                        ->like('recipes.category_id', $this->input->get('category_id'), 'both')
                        ->join('categories', 'categories.category_id = recipes.category_id')
                        ->join('users', 'users.user_id = recipes.user_id', 'inner')
                        ->select('users.*, recipes.*, categories.title as category_title, categories.permalink as category_permalink')
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->order_by('recipes.recipe_id', 'desc')
                        ->get('recipes')->result();
        $this->load->view('search', $this->data);
    }

}
