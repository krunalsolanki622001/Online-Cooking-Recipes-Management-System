<?php

class Recipes_model extends CIF_model
{
    public $_table = 'recipes';
    public $_primary_keys = array('recipe_id');
    public $search_title;

   public function get_all_count()
    {
        $sql = "SELECT COUNT(*) as tol_records FROM recipes";       
        $result = $this->db->query($sql)->row();
        return $result;
    }

    public function get_all_content($start,$content_per_page)
    {
        $sql = "SELECT * FROM  recipes LIMIT $start,$content_per_page";       
        $result = $this->db->query($sql)->result();
        return $result;
    }
}
