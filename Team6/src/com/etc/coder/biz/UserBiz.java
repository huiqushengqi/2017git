package com.etc.coder.biz;

import com.etc.coder.entity.User;

public interface UserBiz {
	//添加用户信息
	public boolean addUser(User user);
	
	/**
	 * 验证用户登录的方法
	 * @param user_name	用户名
	 * @param user_password 密码
	 * @return 验证是否成功
	 */
	public User checkLogin(String user_name,String user_password);

    //根据姓名查询用户的信息
	public User selectUserByname(String name);
	//根据用户id修改用户信息
	public boolean updateUser(User user);
	/**
	 * 根据用户ID查询用户信息
	 * @param id
	 * @return
	 */
	public User queryUserById(int id);
}
