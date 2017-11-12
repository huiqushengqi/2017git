package com.etc.coder.biz;

import com.etc.coder.entity.Job;
import com.etc.coder.entity.Manager;

public interface ManagerBiz {
	
	//注册添加一个管理员
	public  boolean addManager(String name,String pwd);
	//管理员登录方法
	public Manager login(String name,String pwd);
	//管理员发布岗位信息
	public boolean managerAddJob(Job job);

}
