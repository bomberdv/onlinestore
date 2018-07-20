<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Cproduct extends CI_Controller {
	
	public $product_id;
	function __construct() {
     	parent::__construct();
		$CI =& get_instance();
		$CI->load->model('Products');
		$CI->load->library('lproduct');
		$CI->auth->check_admin_auth();
    }
    //Index page load
	public function index()
	{	
		$CI =& get_instance();
		$CI->auth->check_admin_auth();
		$CI->load->library('lproduct');
		$content = $CI->lproduct->product_add_form();
		$this->template->full_admin_html_view($content);
	}
	//Insert Product and uload
	public function insert_product()
	{
		if ($_FILES['image_thumb']['name']) {
			//Chapter chapter add start
			$config['upload_path']          = './my-assets/image/product/';
	        $config['allowed_types']        = 'gif|jpg|png|jpeg|JPEG|GIF|JPG|PNG';
	        $config['max_size']             = "*";
	        $config['max_width']            = "*";
	        $config['max_height']           = "*";
	        $config['encrypt_name'] 		= TRUE;

	        $this->load->library('upload', $config);
	        if ( ! $this->upload->do_upload('image_thumb'))
	        {
	            $this->session->set_userdata(array('error_message'=>  $this->upload->display_errors()));
	            redirect('Cproduct');
	        }
	        else
	        {
	        	$image =$this->upload->data();
	        	$image_url = base_url()."my-assets/image/product/".$image['file_name'];

	        	//Resize image config
				$config['image_library'] 	= 'gd2';
				$config['source_image'] 	= $image['full_path'];
				$config['maintain_ratio'] 	= FALSE;
				$config['width']         	= 400;
				$config['height']       	= 400;
				$config['new_image']       	= 'my-assets/image/product/thumb/'.$image['file_name'];

				$this->load->library('image_lib', $config);
				$resize = $this->image_lib->resize();
				//Resize image config

				$thumb_image = base_url($config['new_image']);
	        }
		}
		$variant 		= $this->input->post('variant');
		$onsale_price 	= $this->input->post('onsale_price');

		$data=array(
			'product_id' 			=> $this->generator(8),
			'product_name' 			=> $this->input->post('product_name'),
			'supplier_id' 			=> $this->input->post('supplier_id'),
			'category_id' 			=> $this->input->post('category_id'),
			'price' 				=> $this->input->post('price'),
			'supplier_price' 		=> $this->input->post('supplier_price'),
			'unit' 					=> $this->input->post('unit'),
			'product_model' 		=> $this->input->post('model'),
			'product_details' 		=> $this->input->post('description'),
			'brand_id' 				=> $this->input->post('brand'),
			'variants' 				=> implode(",",$variant),
			'type' 					=> $this->input->post('type'),
			'best_sale' 			=> $this->input->post('best_sale'),
			'onsale' 				=> $this->input->post('onsale'),
			'onsale_price' 			=> (!empty($onsale_price)?$onsale_price:null),
			'review' 				=> $this->input->post('review'),
			'description' 			=> $this->input->post('description'),
			'tag' 					=> $this->input->post('tag'),
			'specification' 		=> $this->input->post('specification'),
			'invoice_details' 		=> $this->input->post('invoice_details'),
			'image_large_details' 	=> (!empty($image_url)?$image_url:base_url('my-assets/image/product.png')),
			'image_thumb' 			=> (!empty($thumb_image)?$thumb_image:base_url('my-assets/image/product.png')),
			'status' 				=> 1,
			);

		$result=$this->lproduct->insert_product($data);
		if ($result == 1) {
			$this->session->set_userdata(array('message'=>display('successfully_added')));
			if(isset($_POST['add-product'])){
				redirect(base_url('Cproduct/manage_product'));
				exit;
			}elseif(isset($_POST['add-product-another'])){
				redirect(base_url('Cproduct'));
				exit;
			}
		}else{
			$this->session->set_userdata(array('error_message'=>display('product_model_already_exist')));
			redirect(base_url('Cproduct'));
		}
	}
	//Manage Product
	public function manage_product()
	{
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->library('lproduct');
		$CI->load->model('Products');

		#
        #pagination starts
        #
        $config["base_url"] = base_url('Cproduct/manage_product/');
        $config["total_rows"] = $this->Products->product_list_count();	
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $config["num_links"] = 5; 
        /* This Application Must Be Used With BootStrap 3 * */
        $config['full_tag_open'] = "<ul class='pagination'>";
        $config['full_tag_close'] = "</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tag_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        /* ends of bootstrap */
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $links = $this->pagination->create_links();
        #
        #pagination ends
        # 

        $content = $CI->lproduct->product_list($links,$config["per_page"],$page);
		$this->template->full_admin_html_view($content);
	}
	//Product Update Form
	public function product_update_form($product_id)
	{	
		$CI =& get_instance();
		$CI->auth->check_admin_auth();
		$CI->load->library('lproduct');
		$content = $CI->lproduct->product_edit_data($product_id);
		$this->template->full_admin_html_view($content);
	}

	// Product Update
	public function product_update()
	{
		$image = null;
		if ($_FILES['image_thumb']['name']) {
			//Chapter chapter add start
			$config['upload_path']          = './my-assets/image/product/';
	        $config['allowed_types']        = 'gif|jpg|png|jpeg|JPEG|GIF|JPG|PNG';
	        $config['max_size']             = "*";
	        $config['max_width']            = "*";
	        $config['max_height']           = "*";
	        $config['encrypt_name'] 		= TRUE;

	        $this->load->library('upload', $config);
	        if ( ! $this->upload->do_upload('image_thumb'))
	        {
	            $this->session->set_userdata(array('error_message'=>  $this->upload->display_errors()));
	            redirect('Cproduct');
	        }
	        else
	        {
	        	$image =$this->upload->data();
	        	$image_url = base_url()."my-assets/image/product/".$image['file_name'];

	        	//Resize image config
				$config['image_library'] 	= 'gd2';
				$config['source_image'] 	= $image['full_path'];
				$config['maintain_ratio'] 	= FALSE;
				$config['width']         	= 400;
				$config['height']       	= 400;
				$config['new_image']       	= 'my-assets/image/product/thumb/'.$image['file_name'];

				$this->load->library('image_lib', $config);
				$resize = $this->image_lib->resize();
				//Resize image config
				$thumb_image = base_url($config['new_image']);

				//Old image delete
				$old_image = $this->input->post('old_img_lrg');
				$old_file =  substr($old_image, strrpos($old_image, '/') + 1);
				@unlink(FCPATH . 'my-assets/image/product/' . $old_file);

				//Thumb image delete
				$old_img_thumb = $this->input->post('old_thumb_image');
				$old_file_thumb =  substr($old_img_thumb, strrpos($old_img_thumb, '/') + 1);
				@unlink(FCPATH . 'my-assets/image/product/thumb/' . $old_file_thumb);
	        }
		}

		$old_img_lrg 		= $this->input->post('old_img_lrg');
		$old_thumb_image 	= $this->input->post('old_thumb_image');
		$product_id 		= $this->input->post('product_id');
		$onsale_price 		= $this->input->post('onsale_price');
		$variant 			= $this->input->post('variant');

		$data=array(
			'product_name' 			=> $this->input->post('product_name'),
			'supplier_id' 			=> $this->input->post('supplier_id'),
			'category_id' 			=> $this->input->post('category_id'),
			'price' 				=> $this->input->post('price'),
			'supplier_price' 		=> $this->input->post('supplier_price'),
			'unit' 					=> $this->input->post('unit'),
			'product_model' 		=> $this->input->post('model'),
			'product_details' 		=> $this->input->post('description'),
			'brand_id' 				=> $this->input->post('brand'),
			'variants' 				=> implode(",",$variant),
			'type' 					=> $this->input->post('type'),
			'best_sale' 			=> $this->input->post('best_sale'),
			'onsale' 				=> $this->input->post('onsale'),
			'onsale_price' 			=> (!empty($onsale_price)?$onsale_price:null),
			'invoice_details' 		=> $this->input->post('invoice_details'),
			'review' 				=> $this->input->post('review'),
			'description' 			=> $this->input->post('description'),
			'tag' 					=> $this->input->post('tag'),
			'specification' 		=> $this->input->post('specification'),
			'image_large_details' 	=> (!empty($image_url)?$image_url:$old_img_lrg),
			'image_thumb' 			=> (!empty($thumb_image)?$thumb_image:$old_thumb_image),
			'status' 				=> 1
			);


		$result = $this->Products->update_product($data,$product_id);
		if ($result == true) {
			$this->session->set_userdata(array('message'=>display('successfully_updated')));
			redirect('Cproduct/manage_product');
		}else{
			$this->session->set_userdata(array('error_message'=>display('product_model_already_exist')));
			redirect('Cproduct/manage_product');
		}
	}
	// Product Delete
	public function product_delete($product_id)
	{	
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->model('Products');
		$result=$CI->Products->delete_product($product_id);
	}
	//Retrieve Single Item  By Search
	public function product_by_search()
	{
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->library('lproduct');
		$product_id = $this->input->post('product_id');		
        $content = $CI->lproduct->product_search_list($product_id);
		$this->template->full_admin_html_view($content);
	}
	//Retrieve Single Item  By Search
	public function product_details($product_id)
	{
		$this->product_id=$product_id;
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->library('lproduct');	
        $content = $CI->lproduct->product_details($product_id);
		$this->template->full_admin_html_view($content);
	}

	//Retrieve Single Item  By Search
	public function product_details_single()
	{
		$product_id = $this->input->post('product_id');
		$this->product_id=$product_id;
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->library('lproduct');	
        $content = $CI->lproduct->product_details_single($product_id);
		$this->template->full_admin_html_view($content);
	}

	//Add supplier by ajax
	public function add_supplier(){
		$this->load->model('Suppliers');
		$this->form_validation->set_rules('supplier_name', display('supplier_name'), 'required');
		$this->form_validation->set_rules('mobile', display('mobile'), 'required');

		if ($this->form_validation->run() == FALSE){
            echo '3';
        }
        else{
	        $data=array(
				'supplier_id' 	=> $this->auth->generator(20),
				'supplier_name' => $this->input->post('supplier_name'),
				'address' 		=> $this->input->post('address'),
				'mobile' 		=> $this->input->post('mobile'),
				'details' 		=> $this->input->post('details'),
				'status' 		=> 1
				);

			$supplier = $this->Suppliers->supplier_entry($data);

			if ($supplier == TRUE) {
				$this->session->set_userdata(array('message'=>display('successfully_added')));
				echo '1';
			}else{
				$this->session->set_userdata(array('error_message'=>display('already_exists')));
				echo '2';
			}
        }
	}
	// Insert category by ajax
	public function insert_category()
	{
		$this->load->model('Categories');
		$category_id=$this->auth->generator(15);


		$this->form_validation->set_rules('category_name', display('category_name'), 'required');

		if ($this->form_validation->run() == FALSE){
            echo '3';
        }else{
        	//Customer  basic information adding.
			$data=array(
				'category_id' 			=> $category_id,
				'category_name' 		=> $this->input->post('category_name'),
				'status' 				=> 1
				);

			$result=$this->Categories->category_entry($data);
			
			if ($result == TRUE) {
				$this->session->set_userdata(array('message'=>display('successfully_added')));
				echo '1';
			}else{
				$this->session->set_userdata(array('error_message'=>display('already_exists')));
				echo '2';
			}
        }
	}

	//Add Product CSV
	public function add_product_csv(){
		$CI =& get_instance();
		$data = array(
			'title' => display('import_product_csv')
		);
		$content = $CI->parser->parse('product/add_product_csv',$data,true);
		$this->template->full_admin_html_view($content);
	}

	//CSV Upload File
	function uploadCsv()
    {
        $count=0;
        $fp = fopen($_FILES['upload_csv_file']['tmp_name'],'r') or die("can't open file");

        if (($handle = fopen($_FILES['upload_csv_file']['tmp_name'], 'r')) !== FALSE)
    	{
  
	        while($csv_line = fgetcsv($fp,1024))
	        {
	            //keep this if condition if you want to remove the first row
	            for($i = 0, $j = count($csv_line); $i < $j; $i++)
	            {
	                $insert_csv = array();
	                $insert_csv['supplier_id'] 	= (!empty($csv_line[0])?$csv_line[0]:null);
	                $insert_csv['category_id'] 	= (!empty($csv_line[1])?$csv_line[1]:null);
	                $insert_csv['product_name'] = (!empty($csv_line[2])?$csv_line[2]:null);
	                $insert_csv['price'] 		= (!empty($csv_line[3])?$csv_line[3]:null);
	                $insert_csv['supplier_price']= (!empty($csv_line[4])?$csv_line[4]:null);
	                $insert_csv['unit']			= (!empty($csv_line[5])?$csv_line[5]:null);
	                $insert_csv['product_model']= (!empty($csv_line[6])?$csv_line[6]:null);
	                $insert_csv['product_details'] = (!empty($csv_line[7])?$csv_line[7]:null);
	                $insert_csv['image_thumb'] 	= (!empty($csv_line[8])?$csv_line[8]:null);
	                $insert_csv['brand_id'] 	= (!empty($csv_line[9])?$csv_line[9]:null);
	                $insert_csv['variants'] 	= (!empty($csv_line[10])?$csv_line[10]:null);
	                $insert_csv['type']			= (!empty($csv_line[11])?$csv_line[11]:null);
	                $insert_csv['best_sale']	= (!empty($csv_line[12])?$csv_line[12]:0);
	                $insert_csv['onsale'] 		= (!empty($csv_line[13])?$csv_line[13]:0);
	                $insert_csv['onsale_price'] = (!empty($csv_line[14])?$csv_line[14]:null);
	                $insert_csv['invoice_details'] = (!empty($csv_line[15])?$csv_line[15]:null);
	                $insert_csv['image_large_details'] = (!empty($csv_line[16])?$csv_line[16]:null);
	                $insert_csv['review'] 		= (!empty($csv_line[17])?$csv_line[17]:null);
	                $insert_csv['description'] 	= (!empty($csv_line[18])?$csv_line[18]:null);
	                $insert_csv['tag'] 			= (!empty($csv_line[19])?$csv_line[19]:null);
	                $insert_csv['specification']= (!empty($csv_line[20])?$csv_line[20]:null);
	                $insert_csv['status'] 		= (!empty($csv_line[21])?$csv_line[21]:null);
	            }
	      		//Data organizaation for insert to database
	            $data = array(
	            	'product_id' 	=> $this->generator(8),
	                'supplier_id' 	=> $insert_csv['supplier_id'],
	                'category_id' 	=> $insert_csv['category_id'],
	                'product_name'  => $insert_csv['product_name'],
	                'price'			=> $insert_csv['price'],
	                'supplier_price'=> $insert_csv['supplier_price'],
	                'unit'			=> $insert_csv['unit'],
	                'product_model' => $insert_csv['product_model'],
	                'product_details' => $insert_csv['product_details'],
	                'image_thumb' 	=> (!empty($insert_csv['image_thumb'])?$insert_csv['image_thumb']:base_url('my-assets/image/product.png')),
	                'brand_id' 		=> $insert_csv['brand_id'],
	                'variants'		=> $insert_csv['variants'],
	                'type'			=> $insert_csv['type'],
	                'best_sale'		=> $insert_csv['best_sale'],
	                'onsale'		=> $insert_csv['onsale'],
	                'onsale_price'	=> $insert_csv['onsale_price'],
	                'invoice_details' => $insert_csv['invoice_details'],
	                'image_large_details' 	=> (!empty($insert_csv['image_large_details'])?$insert_csv['image_large_details']:base_url('my-assets/image/product.png')),
	                'review' 		=> $insert_csv['review'],
	                'description' 	=> $insert_csv['description'],
	                'tag' 			=> $insert_csv['tag'],
	                'specification' => $insert_csv['specification'],
	                'status' 		=> $insert_csv['status'],
	            );

	            if ($count > 0) {
			        $result = $this->db->select('*')
			        					->from('product_information')
			        					->where('product_model',$data['product_model'])
			        					->get()
			        					->num_rows();
			        if ($result == 0 && !empty($data['product_model']) && !empty($data['supplier_id'])) {

			        	$this->db->insert('product_information',$data);

			        	$this->db->select('*');
						$this->db->from('product_information');
						$this->db->where('status',1);
						$query = $this->db->get();
						foreach ($query->result() as $row) {
							$json_product[] = array('label'=>$row->product_name."-(".$row->product_model.")",'value'=>$row->product_id);
						}
						$cache_file = './my-assets/js/admin_js/json/product.json';
						$productList = json_encode($json_product);
						file_put_contents($cache_file,$productList);
			        }else {
					    $this->db->where('supplier_id',$data['supplier_id']);
					    $this->db->where('product_model',$data['product_model']);
			            $this->db->update('product_information',$data);

			            $this->db->select('*');
						$this->db->from('product_information');
						$this->db->where('status',1);
						$query = $this->db->get();
						foreach ($query->result() as $row) {
							$json_product[] = array('label'=>$row->product_name."-(".$row->product_model.")",'value'=>$row->product_id);
						}
						$cache_file = './my-assets/js/admin_js/json/product.json';
						$productList = json_encode($json_product);
						file_put_contents($cache_file,$productList);
			        }
	            }
		        $count++;
	        }
        }

        fclose($fp) or die("can't close file");
    	$this->session->set_userdata(array('message'=>display('successfully_added')));

		if(isset($_POST['add-product'])){
			redirect(base_url('Cproduct/manage_product'));
			exit;
		}elseif(isset($_POST['add-product-another'])){
			redirect(base_url('Cproduct'));
			exit;
		}
    }

	//This function is used to Generate Key
	public function generator($lenth)
	{
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->model('Products');

		$number=array("1","2","3","4","5","6","7","8","9","0");
		for($i=0; $i<$lenth; $i++)
		{
			$rand_value=rand(0,8);
			$rand_number=$number["$rand_value"];
		
			if(empty($con))
			{ 
				$con=$rand_number;
			}
			else
			{
				$con="$con"."$rand_number";
			}
		}

		$result = $this->Products->product_id_check($con);

		if ($result === true) {
			$this->generator(8);
		}else{
			return $con;
		}
	}
}