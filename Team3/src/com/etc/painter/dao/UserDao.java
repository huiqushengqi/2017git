package com.etc.painter.dao;



import com.etc.painter.entity.User;

public interface UserDao {
	//登录校验
	public User checkLogin2(String user_name,String user_pwd);
	//根据id查询用户
	public User queryUserById(int id);
	//添加用户的方法
	public int adduser(User user);
	//根据电话号码查询
	public User querybynum(String mobile);
	//根据电话号码查询
    public User querybynum1(String mobile);
	//根据用户名查询
	public User querybyname(String name);
	//根据id修改用户信息
    public int changeuser(User user);
    //根据id查询用户信息
    public User querybyid(int i);
    //添加用户收藏文章
	public boolean updateUserCollect(String user_collect,int user_id);
		
}
