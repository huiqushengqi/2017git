package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;

import com.etc.coder.biz.TechnologytypeBiz;
import com.etc.coder.biz.impl.TechnologytypeBizImpl;
import com.etc.coder.dao.CompanyDao;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.Job;
import com.etc.coder.util.JNDIUtil;

public class CompanyDaoImpl implements CompanyDao{
	JNDIUtil util=new JNDIUtil();
	/**
	 * 根据企业名查询企业的所有信息
	 * @param name 企业的简称
	 * @return 返回企业的信息
	 */
	public Company selectCompanyByName(String name) {
		// TODO Auto-generated method stub
		List<Integer>list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object []obj=util.call_HasReturn_proc("proc_selectCompanyByName(?,?)", list, name);//2017-9-22存储过程
		ResultSet set=(ResultSet)obj[0];
		Company com=null;
		try {
			if(set.next()){
				com=new Company();
				com.setCompany_id(set.getInt("company_id"));
				com.setCompany_name(set.getString("company_name"));
				com.setCompany_password(set.getString("company_password"));
				com.setCompany_address(set.getString("company_address"));
				com.setCompany_attibute(set.getString("company_attibute"));
				com.setCompany_email(set.getString("company_email"));
				com.setCompany_info(set.getString("company_info"));
				com.setCompany_loginName(set.getString("company_loginName"));
				com.setCompany_photo(set.getString("company_photo"));
				com.setCompany_scale(set.getString("company_scale"));
				com.setCompany_tel(set.getString("company_tel"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}finally{
			util.closeAll();

		}

		return com;

	}

	
	
	

	/**
	 * 添加企业信息
	 * @param com 添加的企业信息
	 * @return true 添加成功，false 添加失败
	 */
	public boolean addCompany(Company com) {
		// TODO Auto-generated method stub
		  return  util.call_notreturn_proc("proc_addCompany(?,?)",com.getCompany_loginName(),com.getCompany_password());//2017-9-23
	}
	/**
	 * 根据id修改企业信息
	 * @param com 其中id是数据库自动添加的
	 */
	public boolean updateCompany(Company com) {
		// TODO Auto-generated method stub
		return util.call_notreturn_proc("proc_updateCompany(?,?,?,?,?,?,?,?,?,?)", com.getCompany_id(),com.getCompany_name(),com.getCompany_loginName(),com.getCompany_attibute(),com.getCompany_scale(),com.getCompany_address(),com.getCompany_email(),com.getCompany_tel(),com.getCompany_info(),com.getCompany_photo());
		
	}




    /**
     * 根据id查询企业信息
     */
	public Company querycompany(int id) {
		Company comp=null;
		ResultSet rs=util.query("select * from t_company where company_id=?",id);
		try {
			if(rs.next()){
				comp=new Company();
				comp.setCompany_id(rs.getInt("company_id"));
				comp.setCompany_name(rs.getString("company_name"));
				comp.setCompany_loginName(rs.getString("company_loginName"));
				comp.setCompany_password(rs.getString("company_password"));
				comp.setCompany_attibute(rs.getString("company_attibute"));
				comp.setCompany_scale(rs.getString("company_scale"));
				comp.setCompany_address(rs.getString("company_address"));
				comp.setCompany_email(rs.getString("company_email"));
				comp.setCompany_tel(rs.getString("company_tel"));
				comp.setCompany_info(rs.getString("company_info"));
				comp.setCompany_photo(rs.getString("company_photo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
	     return comp;

	}


    /**
     * 根据企业名查询企业id
     */
	public int queryid(String str) {
		int i=0;
		ResultSet rs=util.query("select company_id from t_company where company_name like ?","%"+str+"%");
		try {
			if(rs.next()){
				i=rs.getInt("company_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return i;
	}





	public List<Job> queryjobByCompanyId(int companyId) {
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryJobByCompanyId(?,?)", list, companyId);
		ResultSet rs=(ResultSet) obj[0];
		List<Job> joblist=new ArrayList<Job>();
		Job jb=null;
		try {
			while(rs.next()){
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
				joblist.add(jb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return joblist;
	}
}
