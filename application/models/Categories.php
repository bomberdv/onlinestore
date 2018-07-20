<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Categories extends CI_Model {
	public function __construct()
	{
		parent::__construct();
	}
	//Parent List
	public function category_list()
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('status',1);
		$this->db->order_by('category_name','asc');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}	
	//Parent category List
	public function parent_category()
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('status',1);
		$this->db->order_by('category_name','asc');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}	
	//Parent category List
	public function parent_category_list($category_id)
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('status',1);
		$this->db->where_not_in('category_id',$category_id);
		$this->db->order_by('category_name','asc');
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	//Category Search Item
	public function category_search_item($category_id)
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('category_id',$category_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	//Count customer
	public function category_entry($data)
	{
		$this->db->insert('product_category',$data);
		return TRUE;
	}
	//Retrieve customer Edit Data
	public function retrieve_category_editdata($category_id)
	{
		$this->db->select('*');
		$this->db->from('product_category');
		$this->db->where('category_id',$category_id);
		$query = $this->db->get();
		if ($query->num_rows() > 0) {
			return $query->result_array();	
		}
		return false;
	}
	
	//Update Categories
	public function update_category($data,$category_id)
	{
		$this->db->where('category_id',$category_id);
		$this->db->update('product_category',$data);
		return true;
	}
	// Delete customer Item
	public function delete_category($category_id)
	{
		$this->db->where('category_id',$category_id);
		$this->db->delete('product_category'); 	
		return true;
	}
}