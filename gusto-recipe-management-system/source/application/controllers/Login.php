<?php

class Login extends CIF_Controller {

    public $layout = 'full';

    function index() {
        if (!session('user_id')) {
            $this->load->view("login");
        } else {
            redirect("home");
        }
    }

}
