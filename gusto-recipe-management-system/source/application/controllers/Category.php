<?php

class Category extends CIF_Controller {

    public $layout = 'full';
    public $module = 'category';
    public $model = 'Recipes_model';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function index($permalink = null, $offset = 0) {
        $data = array();
        if (!$permalink)
            show_404();
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


        $data['cat'] = $this->db
                ->where('permalink', urldecode($permalink))
                ->get('categories')
                ->row();
        config('title', $data['cat']->title . ' | ' . config('title'));


        $count = $this->db
                        ->select("COUNT(*) AS count")
                        ->join('categories', 'categories.category_id = recipes.category_id')
                        ->join('users', 'users.user_id = recipes.user_id', 'inner')
                        ->where('recipes.category_id', $data['cat']->category_id)
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->get('recipes')
                        ->row()->count;

        // PAGINATION
        config('pagination_limit', 20);
        $this->load->library('pagination');
        $config['base_url'] = site_url('category/index/' . $permalink);
        $config['total_rows'] = $count;
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
                        ->where('recipes.category_id', $data['cat']->category_id)
                        ->where('recipes.status', 'active')
                        ->where('users.status', 'active')
                        ->order_by('recipes.recipe_id', 'desc')
                        ->get('recipes')->result();

        if (!$data['cat'])
            show_404();

        $this->load->view($this->module, $data);
    }

}
