package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.ComjobBiz;
import com.etc.coder.dao.ComjobDao;
import com.etc.coder.dao.impl.ComjobDaoImpl;
import com.etc.coder.entity.Company_job;

public class ComjobBizImpl implements ComjobBiz {
	ComjobDao dao=new ComjobDaoImpl();
    /**
     * 根据根据企业名查询企业信息和对应的岗位信息
     */
	public List<Company_job> querycom(String str) {
		return dao.querycom(str);
	}
	/**
	 * 根据根据城市名和岗位名模糊查询企业信息和对应的岗位信息
	 */
	public List<Company_job> querrycity(String city, String str) {
		return dao.querrycity(city,str);
	}
	
	/**
	 * 根据根据城市名和企业名模糊查询企业信息和对应的岗位信息
	 */
	public List<Company_job> querryct(String city, String str) {
		return dao.querryct(city, str);
	}
  

}
