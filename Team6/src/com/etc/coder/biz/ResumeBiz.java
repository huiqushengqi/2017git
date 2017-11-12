package com.etc.coder.biz;

import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public interface ResumeBiz {

	//添加个人信息表验证
	public int addBasic(BasicInfor basic);
	//添加期望工作表验证
	public int addjobExpect(Jobexpect expect);
	//添加工作经历表验证
	public int addWorkExp(Workexp work);
	//添加工作经验表验证
	public int addProjectExp(Projectexp project);
	//添加教育背景表验证
	public int addEducation(Education edu);
	//添加简历表验证
	public boolean addresume(Resume res);
	
}
