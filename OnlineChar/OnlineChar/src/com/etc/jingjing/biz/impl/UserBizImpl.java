package com.etc.jingjing.biz.impl;

import java.util.List;

import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.dao.UserDao;
import com.etc.jingjing.dao.impl.UserDaoImpl;
import com.etc.jingjing.entity.User;

public class UserBizImpl implements UserBiz {
  UserDao dao=new UserDaoImpl();
	@Override
	public boolean addUser(User u) {
		// TODO Auto-generated method stub
		if(u.getUser_name()==""&&u.getUser_name()==null){
			return false;
		}else if(u.getUser_password()==""&&u.getUser_password()==null){
			return false;
		}else{
			return dao.addUser(u);
		}
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		if(id<0){
			return false;
		}
		return dao.deleteUser(id);
	}

	@Override
	public boolean updateUser(User u) {
		// TODO Auto-generated method stub
		if(u.getUser_name()==""&&u.getUser_name()==null){
			return false;
		}else if(u.getUser_password()==""&&u.getUser_password()==null){
			return false;
		}
		return dao.updateUser(u);
	}

	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		
		return dao.queryAllUser();
		
	}

	@Override
	public List<User> queryAllUserByIp(String ip) {
		// TODO Auto-generated method stub
		if(ip==""&&ip==null){
			return null;
		}
		return dao.queryAllUserByIp(ip);
	}

	@Override
	public boolean checkUserLogin(String name, String pwd) {
		// TODO Auto-generated method stub
		if(name==""&&name==null){
			return false;
		}else if(pwd==""&&pwd==null){
			return false;
		}
		return dao.checkUserLogin(name, pwd);
	}

	@Override
	public String queryUsernameByIp(String ip) {
		// TODO Auto-generated method stub
		if(ip==null&&ip==""){
			return null;
		}
		return dao.queryUsernameByIp(ip);
	}

	@Override
	public String queryUserpwdByIp(String ip) {
		// TODO Auto-generated method stub
		if(ip==null&&ip==""){
			return null;
		}
		return dao.queryUserpwdByIp(ip);
	}
	
	public boolean isexist(String user_name) {
		// TODO Auto-generated method stub
		return dao.isexist(user_name);
	}

}
