package com.etc.coder.biz.impl;

import com.etc.coder.biz.UserBiz;
import com.etc.coder.dao.UserDao;
import com.etc.coder.dao.impl.UserDaoImpl;
import com.etc.coder.entity.User;

public class UserBizImpl implements UserBiz {
	UserDao dao=new UserDaoImpl();

	

	public User checkLogin(String user_name, String user_password) {
		return null;
	}

	public User selectUserByname(String name) {
		if(name==null||name.equals("")){
			return null;
		}
		return dao.selectUserByname(name.trim());
	}
	
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		if(user.getUser_name().equals("")||user.getUser_name()==null||user.getUser_password().equals("")||user.getUser_password()==null){
			return false;
		}
		return dao.addUser(user);
	}

	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		if(user==null){
			return false;
		}
		return dao.updateUser(user);
	}

	public User queryUserById(int id) {
		if(id<0){
			return null;
		}else {
			return dao.queryUserById(id);
		}
	}

}
