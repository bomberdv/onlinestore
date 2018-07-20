<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Customer_dashboard extends CI_Controller {
	
	function __construct() {
      	parent::__construct();
	  	$this->load->model('Soft_settings');
	  	$this->load->model('Customer_dashboards');
	  	$this->load->model('website/customer/Invoices');
	  	$this->load->model('website/customer/Orders');
	  	$this->user_auth->check_customer_auth();
    }

    //Default customer index load.
    public function index(){
  
		if (!$this->user_auth->is_logged() )
		{
			$this->output->set_header("Location: ".base_url('login'), TRUE, 302);
		}
		$customer_id = $this->session->userdata('customer_id');
		$total_invoice = $this->Invoices->total_customer_invoice($customer_id);
		$total_order = $this->Orders->total_customer_order($customer_id);
	   
		$currency_details = $this->Soft_settings->retrieve_currency_info();
	    $data = array(
	    	'title' 		=> display('dashboard'),
	    	'total_invoice' => $total_invoice,
	    	'total_order' 	=> $total_order,
	    	'currency' 		=> $currency_details[0]['currency_icon'],
			'position' 		=> $currency_details[0]['currency_position'],
	    	);

		$content = $this->parser->parse('website/customer/include/customer_home',$data,true);
		$this->template->full_customer_html_view($content);
    }

    #===============Logout=======#
	public function logout()
	{	
		if ($this->user_auth->logout())
		$this->output->set_header("Location: ".base_url(), TRUE, 302);
	}

	//Update user profile from
	public function edit_profile()
	{
		$this->load->model('Customers');
		$edit_data 		= $this->Customer_dashboards->profile_edit_data();
		$state_list     = $this->Customers->select_city_country_id($edit_data->country);
		$country_list 	= $this->Customers->country_list();

		$data = array(
			'title' 	 => display('update_profile'),
			'first_name' => $edit_data->first_name,
			'last_name'  => $edit_data->last_name,
			'email'  	 => $edit_data->customer_email,
			'image' 	 => $edit_data->image,
			'customer_short_address' 	 => $edit_data->customer_short_address,
			'customer_address_1' 	 => $edit_data->customer_address_1,
			'customer_address_2' 	 => $edit_data->customer_address_2,
			'city' 	 	 => $edit_data->city,
			'state' 	 => $edit_data->state,
			'state_name' 	 => $edit_data->state,
			'country' 	 => $edit_data->country,
			'country_id' 	 => $edit_data->country,
			'zip' 	 	 => $edit_data->zip,
			'customer_mobile' 	 => $edit_data->customer_mobile,
			'company' 	 => $edit_data->company,
			'state_list' 	 => $state_list,
			'country_list' 	 => $country_list,
		);	

		$content = $this->parser->parse('website/customer/edit_profile',$data,true);
		$this->template->full_customer_html_view($content);
	}

	#=============Update Profile========#
	public function update_profile()
	{
		$this->Customer_dashboards->profile_update();
		$this->session->set_userdata(array('message'=> display('successfully_updated')));
		redirect(base_url('customer/customer_dashboard/edit_profile'));
	}

	#=============Change Password Form=========# 
	public function change_password_form()
	{	
		$content = $this->parser->parse('website/customer/change_password',array('title'=>display('change_password')),true);
		$this->template->full_customer_html_view($content);
	}

	#============Change Password===========#
	public function change_password()
	{
		$error = '';
		$email 			= $this->input->post('email');
		$old_password 	= $this->input->post('old_password');
		$new_password 	= $this->input->post('password');
		$repassword 	= $this->input->post('repassword');

		$edit_data = $this->Customer_dashboards->profile_edit_data();
		$old_email 	  = $edit_data->customer_email;

		if ( $email == '' || $old_password == '' || $new_password == ''){
			$error = display('blank_field_does_not_accept');
		}else if($email != $old_email){
			$error = display('you_put_wrong_email_address');
		}else if(strlen($new_password)<6 ){
			$error = display('new_password_at_least_six_character');
		}else if($new_password != $repassword ){
			$error = display('password_and_repassword_does_not_match');
		}else if($this->Customer_dashboards->change_password($email,$old_password,$new_password) === FALSE ){
			$error = display('you_are_not_authorised_person');
		}

		if ( $error != '' )
		{
			$this->session->set_userdata(array('error_message'=>$error));
			$this->output->set_header("Location: ".base_url().'customer/customer_dashboard/change_password_form', TRUE, 302);
		}else{
			$logout = $this->user_auth->logout();
			if ($logout) {
				$this->session->set_userdata(array('message'=>display('successfully_changed_password')));
				$this->output->set_header("Location: ".base_url().'', TRUE, 302);
			}
        }
	}

	//Select city by country id
	public function select_city_country_id()
	{
		$this->load->model('Customers');
		$country_id = $this->input->post('country_id');
		$states = $this->Customers->select_city_country_id($country_id);

		$html ="";
		if ($states) {
			$html .="<select class=\"form-control select2\" id=\"country\" name=\"country\" style=\"width: 100%\">";
			foreach ($states as $state) {
            $html .="<option value='".$state->name."'>".$state->name."</option>";
			}
			$html .="</select>";
		}
		echo $html;
	}	
}