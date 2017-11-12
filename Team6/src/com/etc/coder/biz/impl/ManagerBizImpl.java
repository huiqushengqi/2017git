package com.etc.coder.biz.impl;

import java.util.regex.Pattern;

import com.etc.coder.biz.ManagerBiz;
import com.etc.coder.dao.ManagerDao;
import com.etc.coder.dao.impl.ManagerDaoImpl;
import com.etc.coder.entity.Job;
import com.etc.coder.entity.Manager;

public class ManagerBizImpl implements ManagerBiz{
	
	ManagerDao dao = new ManagerDaoImpl();
	//密码验证     必须数字和字母 组合，长度6-18位
    private  static final String REGEX_PWD="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$";

	//添加一个管理员
	public boolean addManager(String name, String pwd) {
		if(name==null||name.equals("")){
			return false;
		}
		if(pwd==null||pwd.equals("")){
			return false;
		}
		if(!Pattern.matches(REGEX_PWD, pwd)){
			return false;
		}
		if(dao.checkname(name)){
			return false;
		}
		return dao.addManager(name, pwd);
	}

	//管理员登录方法
	public Manager login(String name, String pwd) {
		if(name==null||name.equals("")){
			return null;
		}
		if(pwd==null||pwd.equals("")){
			return null;
		}
		return dao.login(name, pwd);
	}

	//管理员发布岗位信息的方法
	public boolean managerAddJob(Job job) {
		// TODO Auto-generated method stub
		return false;
	}

}
