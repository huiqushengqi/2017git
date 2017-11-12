package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.Job;
import com.etc.coder.entity.Manager;

public interface ManagerDao {
	
	//注册添加一个管理员
	public  boolean addManager(String name,String pwd);
	//管理员登录方法
	public Manager login(String name,String pwd);
	//通过管理员的名字
	public  boolean checkname(String name);
	//管理员发布岗位信息
	public boolean managerAddJob(Job job);
	//管理员审核企业发布的岗位
	public boolean checkJob(int id);
	//查询未审核的岗位
	public List<Job> queryNoCheckJob();
	//根据id查询即将审核的岗位
	public Job queryJob(int id);
	

}
