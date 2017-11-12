package com.etc.jingjing.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.jingjing.dao.UserDao;
import com.etc.jingjing.entity.User;
import com.etc.jingjing.util.JDBCUtil;


public class UserDaoImpl implements UserDao {
	JDBCUtil util=new JDBCUtil();
	@Override
	public boolean addUser(User u) {
		// TODO Auto-generated method stub
		int i=util.update("insert into user(user_name,user_pwd) values(?,?)",u.getUser_name(),u.getUser_password());
		if(i>0){
			return true;
		}
		return false;
		
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		int i=util.update("delete from user where user_id=?",id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateUser(User u) {
		// TODO Auto-generated method stub
		int i=util.update("update user set user_pwd=? where user_name=?", u.getUser_password(),u.getUser_name());
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		ResultSet rs=util.query("select * from user");
		List<User> list=new ArrayList<User>();
		try {
			while(rs.next()){
				User u=new User();
				u.setUser_id(rs.getInt("user_id"));
				u.setUser_name(rs.getString("user_name"));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	

	@Override
	public List<User> queryAllUserByIp(String ip) {
		// TODO Auto-generated method stub
		ResultSet rs=util.query("select * from user where user_ip=?",ip);
		List<User> list=new ArrayList<User>();
		try {
			if(rs.next()){
				User u=new User();
				u.setUser_id(rs.getInt("user_id"));
				u.setUser_name(rs.getString("user_name"));
				u.setUser_password(rs.getString("user_pwd"));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}

	@Override
	public boolean checkUserLogin(String name, String pwd) {
		// TODO Auto-generated method stub		
		JDBCUtil util=new JDBCUtil();
	    ResultSet rs=util.query("select * from user where user_name=? and user_pwd=?", name,pwd);
		User user=null;
	    try {
			if(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_name(rs.getString("user_name"));
			    user.setUser_password(rs.getString("user_pwd"));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}	finally{
			util.closeAll();
		}
		if(user!=null){
			return true;
		}
		return false;
	}

	@Override
	public String queryUsernameByIp(String ip) {
		// TODO Auto-generated method stub
		List<User> list=new ArrayList<User>();
	     list=UserDaoImpl.this.queryAllUserByIp(ip);
			
		 String str=list.get(0).getUser_name();
		
		return str;
	}

	@Override
	public String queryUserpwdByIp(String ip) {
		// TODO Auto-generated method stub
		List<User> list=new ArrayList<User>();
	     list=UserDaoImpl.this.queryAllUserByIp(ip);
			
		 String str1=list.get(0).getUser_password();
		
		return str1;
	}

	public boolean isexist(String user_name) {
		ResultSet rs=util.query("select * from user where user_name=?", user_name);
		
		try {
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return false;
	}
	

}
