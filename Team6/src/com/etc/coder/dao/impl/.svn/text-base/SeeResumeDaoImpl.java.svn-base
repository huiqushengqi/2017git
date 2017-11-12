package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.internal.OracleTypes;

import com.etc.coder.dao.CityDao;
import com.etc.coder.dao.CompanyDao;
import com.etc.coder.dao.SeeResumeDao;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.City;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.CompanyResume;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;
import com.etc.coder.util.JNDIUtil;

public class SeeResumeDaoImpl implements SeeResumeDao {

	JNDIUtil util=new JNDIUtil();
	
	/**
	 * 根据公司id字段查询投递者简历
	 */
	
	public List<Resume> queryAllresume(int companyid) {
		List<Resume> list=new ArrayList<Resume>();
		ResultSet rs=util.query("select * from t_resume,t_company_resume where t_company_resume.resume_id=t_resume.resume_id and t_company_resume.company_id=?",companyid);
		try {
			while(rs.next()){
				Resume cr=new Resume();
				cr.setResume_id(rs.getInt("resume_id"));
				cr.setResume_user(rs.getString("resume_user"));
				cr.setResume_name(rs.getString("resume_name"));
				cr.setResume_basic(rs.getInt("resume_basic"));
				cr.setResume_edu(rs.getInt("resume_edu"));
				cr.setResume_job(rs.getInt("resume_job"));
				cr.setResume_project(rs.getInt("resume_project"));
				cr.setResume_work(rs.getInt("resume_work"));
				list.add(cr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
/*
 * 根据基本信息表id查询基本信息
 * 
 */
	public BasicInfor queryBasicInfor(int basicid) {
		BasicInfor bi=null; 
		ResultSet rs=util.query("select * from t_basic where basic_id=?", basicid);
		try {
			if(rs.next()){
				bi=new BasicInfor();
				bi.setBasic_id(rs.getInt("basic_id"));
				bi.setBasic_idNumber(rs.getString("basic_idNumber"));
				bi.setBasic_birthday(rs.getString("Basic_birthday"));
				bi.setBasic_email(rs.getString("basic_email"));
				bi.setBasic_gender(rs.getString("basic_gender"));
				bi.setBasic_home(rs.getString("basic_home"));
				bi.setBasic_mobilePhone(rs.getString("basic_mobilePhone"));
				bi.setBasic_name(rs.getString("basic_name"));
				bi.setBasic_photo(rs.getString("basic_photo"));
				bi.setBasic_state(rs.getString("basic_state"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bi;
	}
	/*
	 * 根据教育表id查询基本信息
	 * 
	 */
	public Education queryEducation(int eduid) {
		Education edu=null;
		ResultSet rs=util.query("select * from t_education where edu_id=?",eduid);
		try {
			if(rs.next()){
				edu=new Education();
				edu.setEdu_id(rs.getInt("edu_id"));;
				edu.setEdu_StartDate(rs.getString("edu_StartDate"));
				edu.setEdu_EndDate(rs.getString("edu_EndDate"));
				edu.setEdu_cations(rs.getString("edu_cations"));
				edu.setEdu_Major(rs.getString("edu_Major"));
				edu.setEdu_School(rs.getString("edu_School"));
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return edu;
	}
	/*
	 * 根据工作期望表id查询基本信息
	 * 
	 */
	public Jobexpect queryJobExpect(int expectid) {
		Jobexpect je=null;
		ResultSet rs=util.query("select * from t_jobexpect where expect_id=?", expectid);
		try {
			if(rs.next()){
				je=new Jobexpect();
				je.setExpect_id(rs.getInt("Expect_id"));
				je.setExpect_job(rs.getString("Expect_job"));
				je.setExpect_address(rs.getString("Expect_address"));
				je.setExpect_salary(rs.getString("Expect_salary"));
				je.setExpect_type(rs.getString("Expect_type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return je;
	}
	/*
	 * 根据工作经历表id查询基本信息
	 * 
	 */
	public Workexp queryWorkexp(int workid) {
		Workexp we=null;
		ResultSet rs=util.query("select * from t_workexp where work_id=?",  workid);
		try {
			if(rs.next()){
				we=new Workexp();
				we.setWork_company(rs.getString("Work_company"));
				we.setWork_endtime(rs.getString("Work_endtime"));
				we.setWork_id(rs.getInt("Work_id"));
				we.setWork_resp(rs.getString("Work_resp"));
				we.setWork_starttime(rs.getString("Work_starttime"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return we;
	}

}
