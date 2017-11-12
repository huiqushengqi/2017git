package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.impl.CompanyBizImpl;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.dao.ComjobDao;
import com.etc.coder.entity.Company_job;
import com.etc.coder.util.JNDIUtil;

public class ComjobDaoImpl implements ComjobDao{
	JNDIUtil util=new JNDIUtil();
 
	/**
	 * 根据根据企业名查询企业信息和对应的岗位信息
	 */
	public List<Company_job> querycom(String str) {
		List<Company_job> list=new ArrayList<Company_job>();
		ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and company_name like ?", "%"+str+"%");
		try {
			while(rs.next()){
				Company_job comjob=new Company_job();
				comjob.setComjob_id(rs.getInt("comjob_id"));
				CompanyBiz biz=new CompanyBizImpl();
				comjob.setComjob_com(biz.querycompany(rs.getInt("comjob_com")));
				JobBiz j=new JobBizImpl();
			    comjob.setComjob_job(j.queryjb(rs.getInt("comjob_job")));
				list.add(comjob);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}
    /**
     * 根据根据城市名和岗位名模糊查询企业信息和对应的岗位信息
     */
	public List<Company_job> querrycity(String city, String str) {
		List<Company_job> list=new ArrayList<Company_job>();
		ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and job_address=? and job_name like ?", city,"%"+str+"%");
		try {
			while(rs.next()){
				Company_job comjob=new Company_job();
				comjob.setComjob_id(rs.getInt("comjob_id"));
				CompanyBiz biz=new CompanyBizImpl();
				comjob.setComjob_com(biz.querycompany(rs.getInt("comjob_com")));
				JobBiz j=new JobBizImpl();
			    comjob.setComjob_job(j.queryjb(rs.getInt("comjob_job")));
				list.add(comjob);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}
	
	/**
	 * 根据根据城市名和企业名模糊查询企业信息和对应的岗位信息
	 */
	public List<Company_job> querryct(String city, String str) {
		List<Company_job> list=new ArrayList<Company_job>();
		ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and job_address=? and company_name like ?", city,"%"+str+"%");
		try {
			while(rs.next()){
				Company_job comjob=new Company_job();
				comjob.setComjob_id(rs.getInt("comjob_id"));
				CompanyBiz biz=new CompanyBizImpl();
				comjob.setComjob_com(biz.querycompany(rs.getInt("comjob_com")));
				JobBiz j=new JobBizImpl();
			    comjob.setComjob_job(j.queryjb(rs.getInt("comjob_job")));
				list.add(comjob);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}

}
