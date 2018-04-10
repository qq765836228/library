package com.xc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xc.dao.CategoryMapper;
import com.xc.domain.Category;
import com.xc.vo.QueryVo;

@Service
public class CategoryServiceImpl implements CategoryService {

	private CategoryMapper categoryMapper;
	@Autowired
	public void setCategoryMapper(CategoryMapper categoryMapper) {
		this.categoryMapper = categoryMapper;
	}

	/**
	 * 新增分类
	 * 
	 */
	@Override
	public void addCategory(Category category) {
		categoryMapper.addCategory(category);
	}

	/**
	 * 分页查询
	 */
	@Override
	public QueryVo<Category> findCategoryAll(QueryVo<Category> vo) {
		List<Category> list = categoryMapper.findCategoryAll(vo);
		if(vo.getNumber()!=null){
			Integer count = categoryMapper.findCount();			
			vo.setTotalNumber(count);	
			Integer n = vo.getNumber();
			if(count%n==0){
				vo.setTotalPage(count/n);
			}else{
				vo.setTotalPage(count/n+1);
			}
		}	
		vo.setList(list);
		return vo;
	}
	/**
	 * 根据名称查询
	 */
	@Override
	public Category findByName(String category_name) {
		return categoryMapper.findByName(category_name);
	}
	/**
	 * 删除分类
	 */
	@Override
	public void delete(Integer id) {
		categoryMapper.delete(id);
	}
	/**
	 * 根据id查询
	 */
	@Override
	public Category getById(Integer category_id) {
		return categoryMapper.getById(category_id);
	}
	/**
	 * 修改分类
	 */
	@Override
	public void update(Category category) {
		categoryMapper.update(category);
	}

	
}
