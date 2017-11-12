package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.JobBiz;
import com.etc.coder.dao.JobDao;
import com.etc.coder.dao.impl.JobDaoImpl;
import com.etc.coder.entity.Company_job;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Technolgytype;


public class JobBizImpl implements JobBiz {
	JobDao dao=new JobDaoImpl();
	 /**
	 * 对岗位ID进行排序查询最新岗位信息企业信息
	 */

	public List<Company_job> queryjob() {
		return dao.queryjob();
	}
	
	/**
	 * 分页查询岗位信息
	 */
	public List<Company_job> queryJO(String str) {
		
		return dao.queryJO(str);
	}
     /**
      * 根据岗位类型id查询岗位信息及企业信息
      */
	public List<Company_job> querrycj(int id,int curpage,int pagesize) {
		return dao.querrycj(id,curpage,pagesize);
	}

	public Job queryjb(int id) {
		
		return dao.queryjb(id);
	}

	public int queryCountJob() {
		return dao.queryCountJob();
	}

	public boolean addjob(String job_name, int job_type, String job_description, String address, String salary, String education, String exp, String date) {
		if(job_name==null||job_name.trim().equals("")){
			return false;
		}else if(job_type<0){
			return false;
		}else if(address==null||address.trim().equals("")){
			return false;
		}
		return dao.addjob(job_name, job_type, job_description, address, salary, education, exp, date);
	}

	public List<Company_job> querybytech_name(String str) {
		// TODO Auto-generated method stub
		if(str==null){
			return null;
		}
		return dao.querybytech_name(str);
	}

	
    
}
