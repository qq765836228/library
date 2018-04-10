package com.xc.service;


import com.xc.domain.Category;
import com.xc.vo.QueryVo;

public interface CategoryService {
	//新增分类
	public void addCategory(Category category);
	//分类查询所有
	public QueryVo<Category> findCategoryAll(QueryVo<Category> vo);
	//根据名称查询
	public Category findByName(String category_name);
	//删除分类
	public void delete(Integer id);
	//根据id查询
	public Category getById(Integer category_id);
	//修 改 分 类
	public void update(Category category);
}
