package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import oracle.jdbc.internal.OracleTypes;

import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.biz.JobBiz;
import com.etc.coder.biz.TechnologytypeBiz;
import com.etc.coder.biz.impl.CompanyBizImpl;
import com.etc.coder.biz.impl.JobBizImpl;
import com.etc.coder.biz.impl.TechnologytypeBizImpl;
import com.etc.coder.dao.JobDao;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.Company_job;
import com.etc.coder.entity.Job;
import com.etc.coder.util.JNDIUtil;

public class JobDaoImpl implements JobDao{
	JNDIUtil util=new JNDIUtil();
     /**
      * 对岗位ID进行排序查询最新岗位信息企业信息
      */
	public List<Company_job> queryjob() {
		List<Company_job> list=new ArrayList<Company_job>();
		ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and rownum<8 order by job_id DESC");
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
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}
	
	
	/**
	 * 分页查询岗位和其公司信息
	 */
	public List<Company_job> queryJO(String str) {
		List<Company_job> list=new ArrayList<Company_job>();
		ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and job_name like ?","%"+str+"%");
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
     * 根据id查询岗位信息
     */
	public Job queryjb(int id) {
		Job jb=null;
		ResultSet rs=util.query("select * from t_job where job_issue=1 and job_id=?",id);
		try {
			if(rs.next()){
				jb=new Job();
				jb.setJob_id(rs.getInt("job_id"));
				TechnologytypeBiz biz=new TechnologytypeBizImpl();
				jb.setJob_type(biz.querytype(rs.getInt("job_type")));
				jb.setJob_name(rs.getString("job_name"));
				jb.setJob_description(rs.getString("job_description"));
				jb.setJob_address(rs.getString("job_address"));
				jb.setJob_salary(rs.getString("job_salary"));
				jb.setJob_education(rs.getString("job_education"));
				jb.setJob_exp(rs.getString("job_exp"));
				jb.setJob_date(rs.getString("job_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return jb;
	}

   /**
    * 根据岗位类型id查询岗位信息及企业信息
    */
	public List<Company_job> querrycj(int id,int curpage,int pagesize) {
		List<Integer> list1=new ArrayList<Integer>();
		list1.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_querycjBypage(?,?,?,?)", list1, curpage,pagesize,id);
		ResultSet rs=(ResultSet) obj[0];
		List<Company_job> list=new ArrayList<Company_job>();
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
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}


public int queryCountJob() {
	List<Integer> list=new ArrayList<Integer>();
	list.add(Types.INTEGER);
	Object[] obj=util.call_HasReturn_proc("proc_querycountjob(?)", list);
	int count=(Integer) obj[0];
	return count;
}


public boolean addjob(String job_name, int job_type, String job_description, String address, String salary, String education, String exp, String date) {
	return util.call_notreturn_proc("proc_addjob(?,?,?,?,?,?,?,?)", job_name,job_type,job_description,address,salary,education,exp,date);
}

/**
 * 根据岗位名称查询企业——岗位信息
 */
public List<Company_job> querybytech_name(String str) {
	List<Company_job> list=new ArrayList<Company_job>();
	ResultSet rs=util.query("select * from t_company,t_job,t_company_job,t_technologytype where company_id=comjob_com and job_id=comjob_job and tech_id=job_type and job_issue=1 and tech_name=?",str);
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
