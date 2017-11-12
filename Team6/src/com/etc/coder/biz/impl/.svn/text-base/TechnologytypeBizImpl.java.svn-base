package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.TechnologytypeBiz;
import com.etc.coder.dao.TechnologytypeDao;
import com.etc.coder.dao.impl.TechnologytypeDaoImpl;
import com.etc.coder.entity.Technolgytype;

public class TechnologytypeBizImpl implements TechnologytypeBiz{
	
	TechnologytypeDao dao=new TechnologytypeDaoImpl();
	/**
	 * 查询全部技术类型
	 * @return
	 */
	public List<Technolgytype> querytechno() {
		
		return dao.querytechno();
	}
	
	/**
	 * 根据id查询岗位类型
	 */
	public Technolgytype querytype(int id) {
		return dao.querytype(id);
	}
   /**
    * 根据类型名查询岗位类型id
    */
	public int querytypeid(String str) {
		return dao.querytypeid(str);
	}

}
