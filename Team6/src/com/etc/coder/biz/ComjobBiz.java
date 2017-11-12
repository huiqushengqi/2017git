package com.etc.coder.biz;

import java.util.List;

import com.etc.coder.entity.Company_job;

public interface ComjobBiz {
	//根据根据企业名查询企业信息和对应的岗位信息
	public List<Company_job> querycom(String str);
	
	 //根据根据城市名和岗位名模糊查询企业信息和对应的岗位信息
	public List<Company_job> querrycity(String city,String str);
    
	//根据根据城市名和企业名模糊查询企业信息和对应的岗位信息
	public List<Company_job> querryct(String city,String str);
}
