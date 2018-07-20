<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Categories extends CI_Model {
	public function __construct()
	{
		parent::__construct();
	}

	//Category product 
	public function category_product($cat_id,$per_page,$page)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		$this->db->where('category_id',$cat_id);
		$this->db->limit($per_page,$page);
		$this->db->order_by('product_name');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}	

	//Category wise product 
	public function category_wise_product($cat_id,$per_page,$page)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		$this->db->where('category_id',$cat_id);
		$this->db->limit($per_page,$page);
		$this->db->order_by('product_name');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}	

	//Category price range product
	public function cat_price_range_pro($min,$max,$cat_id)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		$this->db->where('category_id',$cat_id);
		$this->db->where('price >=', $min);
		$this->db->where('price <=', $max);
		$this->db->order_by('product_name');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}	

	//Category wise product count
	public function category_wise_product_count($cat_id)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		$this->db->where('category_id',$cat_id);
		$this->db->order_by('product_name');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}

	//Select single category  
	public function select_single_category($cat_id)
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('category_id',$cat_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}		

	//Category product list count
	public function cat_product_list_count($cat_id)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		$this->db->where('category_id',$cat_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->num_rows();	
		}
		return false;
	}	
	//Retrive category product
	public function retrieve_category_product($cat_id,$product_name)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		if ($cat_id != 'all') {
			$this->db->where('category_id',$cat_id);
		}
		$this->db->like('product_name', $product_name, 'both');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}	

	//Retrive category product ajax
	public function category_product_search_ajax($cat_id,$product_name)
	{
		$this->db->select('*');
		$this->db->from('product_information');
		if ($cat_id != 'all') {
			$this->db->where('category_id',$cat_id);
		}
		$this->db->like('product_name', $product_name, 'both');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}	

	//Select max value of product
	public function select_max_value_of_pro($cat_id)
	{
		$this->db->select_max('price');
		$this->db->from('product_information');
		$this->db->where('product_information.category_id',$cat_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}		
	//Select min value of product
	public function select_min_value_of_pro($cat_id)
	{
		$this->db->select_min('price');
		$this->db->from('product_information');
		$this->db->where('product_information.category_id',$cat_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}		

	//Select categories product
	public function select_category_product()
	{
		$this->db->select('*');
		$this->db->from('advertisement');
		$this->db->where('add_page','category');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result();	
		}
		return false;
	}		
}