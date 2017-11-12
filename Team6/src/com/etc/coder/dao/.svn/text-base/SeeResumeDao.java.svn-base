package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.CompanyResume;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public interface SeeResumeDao {

	// 根据公司字段查询个人简历
	public List<Resume> queryAllresume(int companyid);
	//通过id查询个人信息
	public BasicInfor queryBasicInfor(int basicid);
	//通过id查询期望工作表
	public Jobexpect queryJobExpect(int expectid);
	//通过id查询工作经历表
	public Workexp queryWorkexp(int workid);
	//通过id查询教育背景表
	public Education queryEducation(int eduid);
}

