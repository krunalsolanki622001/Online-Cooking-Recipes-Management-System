<?php

class Account extends CIF_Controller {

    public $layout = 'full';
    public $model = 'Users_model';
    public $module = 'home';

    public function __construct() {
        parent::__construct();
        $this->load->model($this->model);
        $this->_primary_key = $this->{$this->model}->_primary_keys[0];
    }

    public function register() {
        $this->layout = "ajax";
        $this->data['item'] = new Std();

        $this->load->library('form_validation');
        $this->form_validation->set_message('is_unique', lang('global_This_email_is_already_registered') . ", " . "<a href=\"javascript:popup_switch('forgot')\">" .  lang('global_click_here') . "</a>" . " " . lang('global_to_reset_your_password'));
        $this->form_validation->set_rules('username', 'lang:global_Username', "trim|required");
        $this->form_validation->set_rules('email', 'lang:global_Email', "trim|required|valid_email|is_unique[users.email]");
        $this->form_validation->set_rules('password', 'lang:global_Password', "trim|required");
        $this->form_validation->set_rules('password_2', 'lang:global_Password_confirmation', "trim|required|matches[password]");


        if ($this->form_validation->run() == true) {
            $vars = [
                'username' => $this->input->post('username'),
                'email' => $this->input->post('email'),
                'password' => md5($this->input->post('password')),
                'usergroup_id' => '2',
                'status' => 'active',
                'created' => date('Y-m-d H:i:s'),
            ];
            $this->db->insert('users', $vars);
            $vars['user_id'] = $this->db->insert_id();

            foreach ($vars as $vark => $varv)
                session($vark, $varv);
            die(json_encode([
                'error' => false,
                'message' => "success"
            ]));
        } else {
            die(json_encode(['error' => true, 'message' => validation_errors()]));
        }
        return $this->response([]);
    }

    public function login() {
        $this->layout = "ajax";
        $this->load->library('form_validation');
        $this->form_validation->set_rules('email', 'lang:global_Email', "trim|required|valid_email|callback_check_login");
        $this->form_validation->set_rules('password', 'lang:global_Password', "trim|required");
        if ($this->form_validation->run() == false) {
            die(json_encode(['error' => true, 'message' => validation_errors()]));
        } else {
            die(json_encode([
                'error' => false,
                'message' => "success"
            ]));
        }
        return $this->response($this->data);
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect();
    }

    public function check_login() {
        $this->form_validation->set_message('check_login', lang("global_Your_credentials_is_not_valid_or_you_account_may_be_suspended"));

        if ($user = $this->db
                ->where('email', $this->input->post('email'))
                ->where('password', md5($this->input->post('password')))
                ->where('status', 'active')
                ->get('users')
                ->row()
        ) {
            $this->data = [
                'usename' => $user->username,
                'email' => $user->email,
                'user_id' => $user->user_id,
                'password' => $user->password
            ];

            foreach ($this->data as $vark => $varv)
                session($vark, $varv);
            return true;
        } else {
            return false;
        }
    }

    public function forgot() {
        $this->layout = 'ajax';
        $this->load->library('form_validation');
        $this->form_validation->set_message('check', lang("global_Invalid_Login") . "error");
        $this->form_validation->set_rules('email', 'lang:global_Email', 'required|callback_check');
        if ($this->form_validation->run() == FALSE) {
            die(json_encode(['error' => true, 'message' => validation_errors()]));
        } else {
            $data['pass'] = $this->generate_password();
            $data['user'] = $this->user;
            $this->db->where('email', $this->input->post('email'))
                    ->update('users', array(
                        'password' => md5($data['pass'])
            ));
            $message = $this->load->view('login/reset_password_email', $data, TRUE);

            $this->load->library('email');
            $this->email->from(config('webmaster_email'), config('title'));
            $this->email->to($data['user']->email);
            $this->email->subject(lang("global_Password_resetting"));
            $this->email->message($message);
            $this->email->send();
            die(json_encode([
                'error' => false,
                'message' => "success"
            ]));
        }
    }

    private function generate_password() {
        return substr(md5(time()), 0, 6);
    }

    public function check() {
        $username = $this->input->post('email');
        if ($this->input->post('password'))
            $this->db->where('password', md5($this->input->post('password')));

        $this->user = $this->db
                ->where("(`email` = '$username')")
                ->get('users')
                ->row();

        if (!$this->user) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

}
