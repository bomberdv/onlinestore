<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Lhome {

	//Home Page Load Here
	public function home_page()
	{
		$CI =& get_instance();
		$CI->load->model('website/Homes');
		$CI->load->model('web_settings');
		$CI->load->model('Soft_settings');
		$CI->load->model('Blocks');
		$parent_category_list 	= $CI->Homes->parent_category_list();
		$pro_category_list 		= $CI->Homes->category_list();
		$best_sales 			= $CI->Homes->best_sales();
		$footer_block 			= $CI->Homes->footer_block();
		$slider_list 			= $CI->web_settings->slider_list();
		$block_list 			= $CI->Blocks->block_list(); 
		$currency_details 		= $CI->Soft_settings->retrieve_currency_info();
		$Soft_settings 			= $CI->Soft_settings->retrieve_setting_editdata();
		$languages 				= $CI->Homes->languages();
		$currency_info 			= $CI->Homes->currency_info();
		$selected_currency_info = $CI->Homes->selected_currency_info();
		$select_home_adds 		= $CI->Homes->select_home_adds();

		$data = array(
				'title' 		=> display('home'),
				'category_list' => $parent_category_list,
				'pro_category_list' => $pro_category_list,
				'slider_list' 	=> $slider_list,
				'block_list' 	=> $block_list,
				'best_sales' 	=> $best_sales,
				'footer_block' 	=> $footer_block,
				'languages' 	=> $languages,
				'currency_info' => $currency_info,
				'select_home_adds' => $select_home_adds,
				'selected_cur_id' => (($selected_currency_info->currency_id)?$selected_currency_info->currency_id:""),
				'Soft_settings' => $Soft_settings,
				'currency' 		=> $currency_details[0]['currency_icon'],
				'position' 		=> $currency_details[0]['currency_position'],
			);
		$HomeForm = $CI->parser->parse('website/home',$data,true);
		return $HomeForm;
	}	

	//Checkout
	public function checkout()
	{
		$CI =& get_instance();
		$CI->load->model('website/Homes');
		$CI->load->model('web_settings');
		$CI->load->model('Soft_settings');
		$CI->load->model('Blocks');

		$parent_category_list 	= $CI->Homes->parent_category_list();
		$pro_category_list 		= $CI->Homes->category_list();
		$best_sales 			= $CI->Homes->best_sales();
		$footer_block 			= $CI->Homes->footer_block();
		$slider_list 			= $CI->web_settings->slider_list();
		$block_list 			= $CI->Blocks->block_list(); 
		$currency_details 		= $CI->Soft_settings->retrieve_currency_info();
		$Soft_settings 			= $CI->Soft_settings->retrieve_setting_editdata();
		$languages 				= $CI->Homes->languages();
		$currency_info 			= $CI->Homes->currency_info();
		$selected_currency_info = $CI->Homes->selected_currency_info();
		$selected_country_info 	= $CI->Homes->selected_country_info();
		$select_shipping_method = $CI->Homes->select_shipping_method();

		$bitcoin_status 		= $CI->Homes->payment_status('1');
		$payeer_status 			= $CI->Homes->payment_status('2');
		$paypal_status 			= $CI->Homes->payment_status('3');

		$country_id = $CI->session->userdata('country');
		if ($country_id) {
			$state_list 		= $CI->Homes->select_state_country();
		}

		$ship_country = $CI->session->userdata('ship_country');
		if ($ship_country) {
			$ship_state_list 	= $CI->Homes->select_ship_state_country();
		}

		$CI->_cart_contents['cart_ship_cost'] = $CI->session->userdata('cart_ship_cost');
        $CI->_cart_contents['cart_ship_name'] = $CI->session->userdata('cart_ship_name');

		$data = array(
				'title' 		=> display('checkout'),
				'category_list' => $parent_category_list,
				'pro_category_list' => $pro_category_list,
				'slider_list' 	=> $slider_list,
				'block_list' 	=> $block_list,
				'best_sales' 	=> $best_sales,
				'footer_block' 	=> $footer_block,
				'languages' 	=> $languages,
				'currency_info' => $currency_info,
				'Soft_settings' => $Soft_settings,
				'state_list'	=> (!empty($state_list)?$state_list:null),
				'ship_state_list'	 => (!empty($ship_state_list)?$ship_state_list:null),
				'select_shipping_method' => $select_shipping_method,
				'selected_country_info' => $selected_country_info,
				'selected_cur_id' 	=> (($selected_currency_info->currency_id)?$selected_currency_info->currency_id:""),
				'currency' 			=> $currency_details[0]['currency_icon'],
				'position' 			=> $currency_details[0]['currency_position'],
				'bitcoin_status' 	=> (!empty($bitcoin_status)?$bitcoin_status->status:0),
				'payeer_status' 	=> (!empty($payeer_status)?$payeer_status->status:0),
				'paypal_status' 	=> (!empty($paypal_status)?$paypal_status->status:0),

			);
		$checkout = $CI->parser->parse('website/checkout',$data,true);
		return $checkout;
	}	

	//View Cart
	public function view_cart()
	{
		$CI =& get_instance();
		$CI->load->model('website/Homes');
		$CI->load->model('web_settings');
		$CI->load->model('Soft_settings');
		$CI->load->model('Blocks');
		$parent_category_list 	= $CI->Homes->parent_category_list();
		$pro_category_list 		= $CI->Homes->category_list();
		$best_sales 			= $CI->Homes->best_sales();
		$footer_block 			= $CI->Homes->footer_block();
		$slider_list 			= $CI->web_settings->slider_list();
		$block_list 			= $CI->Blocks->block_list(); 
		$currency_details 		= $CI->Soft_settings->retrieve_currency_info();
		$Soft_settings 			= $CI->Soft_settings->retrieve_setting_editdata();
		$languages 				= $CI->Homes->languages();
		$currency_info 			= $CI->Homes->currency_info();
		$selected_currency_info = $CI->Homes->selected_currency_info();
		$selected_country_info 	= $CI->Homes->selected_country_info();
		$select_shipping_method = $CI->Homes->select_shipping_method();

		$country_id = $CI->session->userdata('country');
		if ($country_id) {
			$state_list 		= $CI->Homes->select_state_country();
		}

		$ship_country = $CI->session->userdata('ship_country');
		if ($ship_country) {
			$ship_state_list 		= $CI->Homes->select_ship_state_country();
		}

		$CI->_cart_contents['cart_ship_cost'] = $CI->session->userdata('cart_ship_cost');
        $CI->_cart_contents['cart_ship_name'] = $CI->session->userdata('cart_ship_name');

		$data = array(
				'title' 		=> display('view_cart'),
				'category_list' => $parent_category_list,
				'pro_category_list' => $pro_category_list,
				'slider_list' 	=> $slider_list,
				'block_list' 	=> $block_list,
				'best_sales' 	=> $best_sales,
				'footer_block' 	=> $footer_block,
				'languages' 	=> $languages,
				'currency_info' => $currency_info,
				'Soft_settings' => $Soft_settings,
				'state_list'	 => (!empty($state_list)?$state_list:null),
				'ship_state_list'	 => (!empty($ship_state_list)?$ship_state_list:null),
				'select_shipping_method' => $select_shipping_method,
				'selected_country_info' => $selected_country_info,
				'selected_cur_id' => (($selected_currency_info->currency_id)?$selected_currency_info->currency_id:""),
				'currency' 		=> $currency_details[0]['currency_icon'],
				'position' 		=> $currency_details[0]['currency_position'],
			);
		$viewCart = $CI->parser->parse('website/cart',$data,true);
		return $viewCart;
	}

	//Order html Data
	public function order_html_data($order_id)
	{
		$CI =& get_instance();

		$CI->load->model('website/Homes');
		$CI->load->model('Soft_settings');
		$CI->load->model('Orders');
		$CI->load->library('occational');
		$CI->load->library('Pdfgenerator');

		$order_detail 		= $CI->Homes->retrieve_order_html_data($order_id);

		$subTotal_quantity 	= 0;
		$subTotal_cartoon 	= 0;
		$subTotal_discount 	= 0;

		if(!empty($order_detail)){
			foreach($order_detail as $k=>$v){
				$order_detail[$k]['final_date'] = $CI->occational->dateConvert($order_detail[$k]['date']);
				$subTotal_quantity = $subTotal_quantity+$order_detail[$k]['quantity'];
			}
			$i=0;
			foreach($order_detail as $k=>$v){$i++;
			   $order_detail[$k]['sl']=$i;
			}
		}

		$currency_details = $CI->Soft_settings->retrieve_currency_info();
		$company_info 	  = $CI->Orders->retrieve_company();
		$data = array(
			'title'				=>	display('order_details'),
			'order_id'			=>	$order_detail[0]['order_id'],
			'order_no'			=>	$order_detail[0]['order'],
			'customer_address'	=>	$order_detail[0]['customer_short_address'],
			'customer_name'		=>	$order_detail[0]['customer_name'],
			'customer_mobile'	=>	$order_detail[0]['customer_mobile'],
			'customer_email'	=>	$order_detail[0]['customer_email'],
			'final_date'		=>	$order_detail[0]['final_date'],
			'total_amount'		=>	$order_detail[0]['total_amount'],
			'order_discount' 	=>	$order_detail[0]['order_discount'],
			'paid_amount'		=>	$order_detail[0]['paid_amount'],
			'due_amount'		=>	$order_detail[0]['due_amount'],
			'details'			=>	$order_detail[0]['details'],
			'service_charge'	=>	$order_detail[0]['service_charge'],
			'subTotal_quantity'	=>	$subTotal_quantity,
			'order_all_data' 	=>	$order_detail,
			'company_info'		=>	$company_info,
			'currency' 			=> 	$currency_details[0]['currency_icon'],
			'position' 			=> 	$currency_details[0]['currency_position'],
			);

		$chapterList = $CI->parser->parse('order/order_pdf',$data,true);

		//PDF Generator 
		$dompdf = new DOMPDF();
	    $dompdf->load_html($chapterList);
	    $dompdf->render();
	    $output = $dompdf->output();
	    file_put_contents('my-assets/pdf/'.$order_id.'.pdf', $output);
	    $file_path = 'my-assets/pdf/'.$order_id.'.pdf';

	    //File path save to database
	    $CI->db->set('file_path',base_url($file_path));
	    $CI->db->where('order_id',$order_id);
	    $CI->db->update('order');

	    $send_email = '';
	    if (!empty($data['customer_email'])) {
	    	$send_email = $this->setmail($data['customer_email'],$file_path);
	    }

	    if ($send_email != null) {
	    	return true;
	    }else{
	    	return false;
	    }
	}

	//Send Customer Email with invoice
	public function setmail($email,$file_path)
	{
		$CI =& get_instance();
		$CI->load->model('Soft_settings');
		$setting_detail = $CI->Soft_settings->retrieve_email_editdata();

		$subject = display("order_information");
		$message = display("order_info_details").'<br>'.base_url();

	    $config = Array(
	      	'protocol' 		=> $setting_detail[0]['protocol'],
	      	'smtp_host' 	=> $setting_detail[0]['smtp_host'],
	      	'smtp_port' 	=> $setting_detail[0]['smtp_port'],
	      	'smtp_user' 	=> $setting_detail[0]['sender_email'], 
	      	'smtp_pass' 	=> $setting_detail[0]['password'], 
	      	'mailtype' 		=> $setting_detail[0]['mailtype'],
	      	'charset' 		=> 'utf-8'
	    );
	    
	    $CI->load->library('email', $config);
	    $CI->email->set_newline("\r\n");
	    $CI->email->from($setting_detail[0]['sender_email']);
	    $CI->email->to($email);
	    $CI->email->subject($subject);
	    $CI->email->message($message);
	    $CI->email->attach($file_path);

	    if($CI->email->send())
	    {
	      	$CI->session->set_userdata(array('message'=>display('email_send_to_customer')));
	      	return true;
	    }else{
	     	return true;
	    }
	}
}
?>