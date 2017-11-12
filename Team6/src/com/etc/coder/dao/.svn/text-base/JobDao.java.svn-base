package com.etc.coder.dao;

import java.util.Date;
import java.util.List;

import com.etc.coder.entity.Company_job;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Technolgytype;



public interface JobDao {
   
    // 对岗位ID进行排序查询最新岗位信息企业信息
	public List<Company_job> queryjob();
	
	 //分页查询岗位信息
	public List<Company_job> queryJO(String str);
	
	//根据id查询岗位信息
	public Job queryjb(int id);
	
	//根据岗位类型id查询岗位信息及企业信息(分页)
	public List<Company_job> querrycj(int id,int curpage,int pagesize);
	
	//查询已发布岗位记录条数
	public int queryCountJob();
	
	//发布岗位信息
	public boolean addjob(String job_name,int job_type,String job_description,String address,String salary,String education,String exp,String date);
	//根据岗位名称查询企业——岗位信息
	public  List<Company_job> querybytech_name(String str);
	
}
