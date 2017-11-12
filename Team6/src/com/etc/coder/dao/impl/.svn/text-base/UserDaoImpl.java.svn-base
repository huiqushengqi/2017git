package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;

import com.etc.coder.dao.UserDao;
import com.etc.coder.entity.User;
import com.etc.coder.util.JNDIUtil;

public class UserDaoImpl implements UserDao {
	JNDIUtil util=new JNDIUtil();


	/**
	 * 验证用户登录的方法
	 */
	public User checkLogin(String user_name, String user_password) {
		//按照顺序注册输出类型
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_checkUserLogin(?,?,?)", list, user_name,user_password);
		ResultSet rs=(ResultSet) obj[0];
		User user=null;
		try {
			if(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("USER_ID"));
				user.setUser_name(rs.getString("USER_NAME"));
				user.setUser_password(rs.getString("USER_PASSWORD"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return user;
	}
	/**
	 *根据姓名查询用户信息
	 *@param name 用户的姓名
	 *@return null 不存在该用户，否则存在用户
	 *@author Beck
	 */
	public User selectUserByname(String name) {
		List<Integer>list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[]obj=util.call_HasReturn_proc("proc_selectByname(?,?)", list, name);//2017-9-20创建存储过程proc_selectByname
		ResultSet set=(ResultSet)obj[0];
		User user=null;
		try {
			if(set.next()){
				user=new User();
				user.setUser_id(set.getInt("user_id"));
				user.setUser_name(set.getString("user_name"));
				user.setUser_password(set.getString("user_password"));
				user.setUser_sex(set.getString("user_sex"));
				user.setUser_birthday(set.getString("user_birthday"));
				user.setUser_address(set.getString("user_address"));
				user.setUser_email(set.getString("user_email"));
				user.setUser_phone(set.getString("user_phone"));
				user.setUser_img(set.getString("user_img"));
				user.setUser_company(set.getString("user_company"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(util!=null){
				util.closeAll();
			}
		}
		return user;
	}
	/**
	 * 添加用户的姓名和密码
	 * @return true 添加成功，false 添加失败
	 */
	public boolean addUser(User user) {
		return util.call_notreturn_proc("proc_addUser(?,?)", user.getUser_name(),user.getUser_password());//2017-9-23修改
	}
    /**
	 * 根据用户id修改用户信息
	 * @param user id值存入对象中，动态的修改用户的信息
	 * @return true 修改成功，false 修改失败
	 */
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return util.call_notreturn_proc("proc_updateUser(?,?,?,?,?,?,?,?,?,?)",user.getUser_id(), user.getUser_name(),user.getUser_password(),user.getUser_sex(),user.getUser_birthday(),user.getUser_address(),user.getUser_email(),user.getUser_phone(),user.getUser_img(),user.getUser_company());//2017-9-23
	}
	
	
	public User queryUserById(int id) {
		List<Integer> list =new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryUserById(?,?)", list, id);
		ResultSet rs=(ResultSet) obj[0];
		User user=null;
		try {
			if(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_name(rs.getString("user_name"));
				user.setUser_password(rs.getString("user_password"));
				user.setUser_sex(rs.getString("user_sex"));
				user.setUser_birthday(rs.getString("user_birthday"));
				user.setUser_address(rs.getString("user_address"));
				user.setUser_email(rs.getString("user_email"));
				user.setUser_phone(rs.getString("user_phone"));
				user.setUser_img(rs.getString("user_img"));
				user.setUser_company(rs.getString("user_company"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(util!=null){
				util.closeAll();
			}
		}
		return user;
	}

}
