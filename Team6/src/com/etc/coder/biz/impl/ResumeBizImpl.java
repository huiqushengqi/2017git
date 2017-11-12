package com.etc.coder.biz.impl;

import com.etc.coder.biz.ResumeBiz;
import com.etc.coder.dao.ResumeDao;
import com.etc.coder.dao.impl.ResumeDaoImpl;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public class ResumeBizImpl implements ResumeBiz {

	ResumeDao dao=new ResumeDaoImpl();
	
	/**
	 * 添加个人信息表验证
	 */
	public int addBasic(BasicInfor basic) {
		if(basic.getBasic_birthday()==null || basic.getBasic_email()==null || basic.getBasic_gender()==null || basic.getBasic_home()==null || basic.getBasic_idNumber()==null || basic.getBasic_mobilePhone()==null ||basic.getBasic_name()==null || basic.getBasic_photo()==null || basic.getBasic_state()==null ){
			return -1;
		}		
		return dao.addBasic(basic);
	}

	/**
	 * 添加期望工作表验证
	 */
	public int addjobExpect(Jobexpect expect) {
		if(expect.getExpect_address()==null || expect.getExpect_job()==null || expect.getExpect_salary()==null || expect.getExpect_type()==null){
			return -1;
		}	
		return dao.addJobExpect(expect);
	}

	/**
	 * 添加工作经历表验证
	 */
	public int addWorkExp(Workexp work) {
		if(work.getWork_company()==null || work.getWork_endtime()==null || work.getWork_resp()==null || work.getWork_starttime()==null){
			return -1;
		}	
		return dao.addWorkExp(work);
	}

	/**
	 * 添加工作经验表验证
	 */
	public int addProjectExp(Projectexp project) {
		if(project.getProject_depict()==null || project.getProject_duty()==null || project.getProject_endtime()==null || project.getProject_name()==null || project.getProject_stattime()==null){
			return -1;
		}	
		return dao.addProjectExp(project);
	}

	/**
	 * 添加教育背景表验证
	 */
	public int addEducation(Education edu) {
		if(edu.getEdu_cations()==null || edu.getEdu_EndDate()==null || edu.getEdu_Major()==null || edu.getEdu_School()==null || edu.getEdu_StartDate()==null){
			return -1;
		}
		return dao.addEducation(edu);	
	}

	/**
	 * 添加简历表验证
	 */
	public boolean addresume(Resume res){
		if(dao.addresume(res)){
			if(res.getResume_basic()<=0 || res.getResume_edu()<=0 || res.getResume_job()<=0 || res.getResume_name()==null || res.getResume_project()<=0 || res.getResume_user()==null || res.getResume_work()<=0){
				return true;
			}
			
		}		
		return false;
	}

}
