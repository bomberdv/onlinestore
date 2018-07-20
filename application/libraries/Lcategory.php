<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Lcategory {
	//Retrieve  category List	
	public function category_list()
	{
		$CI =& get_instance();
		$CI->load->model('Categories');
		$category_list = $CI->Categories->category_list(); 
		$total=0;
		$i = 0;
		if(!empty($category_list)){	
			foreach($category_list as $k=>$v){$i++;
			   $category_list[$k]['sl']=$i;
			}
		}
		$data = array(
				'title' => display('manage_category'),
				'category_list' => $category_list,
				
			);
		$categoryList = $CI->parser->parse('category/category',$data,true);
		return $categoryList;
	}
	//Category Add
	public function category_add_form()
	{
		$CI =& get_instance();
		$CI->load->model('Categories');
		$parent_category = $CI->Categories->parent_category();

		$data = array(
				'title' => display('add_category'),
				'category_list' => $parent_category
			);
		$categoryForm = $CI->parser->parse('category/add_category_form',$data,true);
		return $categoryForm;
	}

	//Category Edit Data
	public function category_edit_data($category_id)
	{
		$CI =& get_instance();
		$CI->load->model('Categories');
		$category_detail = $CI->Categories->retrieve_category_editdata($category_id);
		$parent_category_list = $CI->Categories->parent_category_list($category_id);


		$data=array(
			'title'			=> display('category_edit'),
			'category_id' 	=> $category_detail[0]['category_id'],
			'category_name' => $category_detail[0]['category_name'],
			'menu_pos' 		=> $category_detail[0]['menu_pos'],
			'status' 		=> $category_detail[0]['status'],
			'top_menu' 		=> $category_detail[0]['top_menu'],
			'cat_image' 	=> $category_detail[0]['cat_image'],
			'cat_favicon' 	=> $category_detail[0]['cat_favicon'],
			'parent_category_id' => $category_detail[0]['parent_category_id'],
			'category_list'	=> $parent_category_list,
			);
		$categoryEdit = $CI->parser->parse('category/edit_category_form',$data,true);
		return $categoryEdit;
	}
}
?>