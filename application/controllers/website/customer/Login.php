<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Login extends CI_Controller {

	function __construct() {
      	parent::__construct();
		$this->load->library('website/customer/Llogin');
		$this->load->library('website/customer/User_auth');
		$this->load->model('website/customer/Logins');
		$this->load->model('Subscribers');
    }

	//Default loading for Home Index.
	public function index()
	{
		if ($this->user_auth->is_logged() )
		{
			$this->output->set_header("Location: ".base_url('customer/customer_dashboard'), TRUE, 302);
		}
		$content = $this->llogin->login_page();
		$this->template->full_website_html_view($content);
	}

	#============User login=========#
	public function login()
	{	
		if ($this->auth->is_logged() )
		{
			$this->output->set_header("Location: ".base_url('customer/customer_dashboard'), TRUE, 302);
		}
		$this->load->model('web_settings');
		$this->load->model('Soft_settings');
		$this->load->model('Blocks');
		$parent_category_list 	= $this->Logins->parent_category_list();
		$pro_category_list 		= $this->Logins->category_list();
		$best_sales 			= $this->Logins->best_sales();
		$footer_block 			= $this->Logins->footer_block();
		$slider_list 			= $this->web_settings->slider_list();
		$block_list 			= $this->Blocks->block_list(); 
		$currency_details 		= $this->Soft_settings->retrieve_currency_info();

		$data = array(
				'title' 		=> display('home'),
				'category_list' => $parent_category_list,
				'pro_category_list' => $pro_category_list,
				'slider_list' 	=> $slider_list,
				'block_list' 	=> $block_list,
				'best_sales' 	=> $best_sales,
				'footer_block' 	=> $footer_block,
				'currency' 		=> $currency_details[0]['currency_icon'],
				'position' 		=> $currency_details[0]['currency_position'],
			);
        $content = $this->parser->parse('website/customer/login',$data,true);
		$this->template->full_website_html_view($content);
	}

	#==============Do Login=======#
	public function do_login()
	{
		$error 		= '';
		$email 		= $this->input->post('email');
		$password 	= $this->input->post('password');

		if ( $email == '' || $password == '' || $this->user_auth->login($email, $password) === FALSE ){
			$error = display('wrong_username_or_password');
		}

		if ( $error != '' ){
			$this->session->set_userdata(array('error_message'=>$error));
			$this->output->set_header("Location: ".base_url(''), TRUE, 302);
		}else{
			$this->session->set_userdata(array('message'=>display('login_successfully')));
			$this->output->set_header("Location: ".base_url('customer/customer_dashboard'), TRUE, 302);
        }
	}

	//Customer checkout login
	public function checkout_login()
	{
		$error 		= '';
		$email 		= $this->input->post('login_email');
		$password 	= $this->input->post('login_password');

		if ( $email == '' || $password == '' || $this->user_auth->login($email, $password) === FALSE ){
			$error = display('wrong_username_or_password');
		}

		if ( $error != '' ){
			$this->session->set_userdata(array('error_message'=>$error));
			echo "false";
		}else{
			$this->session->set_userdata(array('message'=>display('login_successfully')));
			echo "true";
        }
	}

	//This function is used to Generate Key
	public function generator($lenth)
	{
		$number=array("A","B","C","D","E","F","G","H","I","J","K","L","N","M","O","P","Q","R","S","U","V","T","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0");
	
		for($i=0; $i<$lenth; $i++)
		{
			$rand_value=rand(0,34);
			$rand_number=$number["$rand_value"];
		
			if(empty($con))
			{ 
			$con=$rand_number;
			}
			else
			{
			$con="$con"."$rand_number";}
		}
		return $con;
	}
}