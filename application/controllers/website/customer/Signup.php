<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Signup extends CI_Controller {

	function __construct() {
      	parent::__construct();
		$this->load->library('website/customer/Lsignup');
		$this->load->model('website/customer/Signups');
		$this->load->model('Subscribers');
    }

	//Default loading for Home Index.
	public function index()
	{
		$content = $this->lsignup->signup_page();
		$this->template->full_website_html_view($content);
	}

	//Submit a user signup.
	public function user_signup()
	{
		$data=array(
			'customer_id' 	=> $this->generator(15),
			'first_name' 	=> $this->input->post('first_name'),
			'last_name' 	=> $this->input->post('last_name'),
			'customer_name' => $this->input->post('first_name').' '.$this->input->post('last_name'),
			'customer_email'=> $this->input->post('email'),
			'image' 		=> base_url('assets/dist/img/user.png'),
			'password' 		=> md5("gef".$this->input->post('password')),
			'status' 		=> 1,
		);

		$result=$this->Signups->user_signup($data);

		if ($result) {

			$this->session->set_userdata(array(
				'message' 		=> display('you_have_successfully_signup'),
				'customer_email'=> $this->input->post('email'),
			));
			redirect(base_url(''));
		}else{
			$this->session->set_userdata(array('error_message'=>display('you_have_not_sign_up')));
			redirect(base_url('login'));
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