package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public interface ResumeDao {

	//添加个人信息表
	public int addBasic(BasicInfor basic);
	//添加期望工作表
	public int addJobExpect(Jobexpect job);
	//添加工作经历表
	public int addWorkExp(Workexp work);
	//添加工作经验表
	public int addProjectExp(Projectexp project);
	//添加教育背景表
	public int addEducation(Education ed);
	//添加简历表
	public boolean addresume(Resume res);
	
	//查询所有的本地简历
	public List<Resume> queryAllResume(String name);
	//查询个人信息表id最大值
	public int queryBasicMaxId();
	//查询期望工作表id最大值
	public int queryJobExpectMxId();
	//查询工作经历表id最大值
	public int queryWorkExpMaxId();
	//查询项目经验表id最大值
	public int queryProjectMaxId();
	//查询教育背景表id最大值
	public int queryEducationMaxId();
}
