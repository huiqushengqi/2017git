package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.ExampleBiz;
import com.etc.painter.dao.ExampleDao;
import com.etc.painter.entity.Example;
@Service
public class ExampleBizImpl implements ExampleBiz{
	@Resource
	private ExampleDao dao;
	
	public ExampleDao getDao() {
		return dao;
	}
	public void setDao(ExampleDao dao) {
		this.dao = dao;
	}
	public List<Example> queryit() {
		// TODO Auto-generated method stub
		return dao.queryit();
	}
public int addMag(Example exp) {
		
		return dao.addMag(exp);
	}
	public int delete(Integer id) {
		
		return dao.delete(id);
	}
	public List<Example> query() {
		
		return dao.query();
	}
	public List<Example> queryname(String name) {
		
		return dao.queryname(name);
	}
	public Example selectid(Integer id) {
		
		return dao.selectid(id);
	}
	public int update(Example exp) {
		
		return dao.update(exp);
	}
	public List<Example> querybytype(int typeid) {
		// TODO Auto-generated method stub
		return dao.querybytype(typeid);
	}
	
	
	
		
	
	
	


}
