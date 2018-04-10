package com.xc.dao;

import java.util.List;

import com.xc.domain.Category;
import com.xc.vo.QueryVo;

public interface CategoryMapper {
	//新增分类
	public void addCategory(Category category);
	//分类查询所有
	public List<Category> findCategoryAll(QueryVo<Category> vo);
	//查询总条数
	public Integer findCount();
	//根据名称查询
	public Category findByName(String category_name);
	//删除分类
	public void delete(Integer category_id);
	//根据id查询
	public Category getById(Integer category_id);
	//修改分类
	public void update(Category category);
}
