package com.etc.painter.biz;

import com.etc.painter.entity.User;

public interface UserBiz {

	public User checkLogin2(String user_name,String user_pwd);
	//添加用户
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
  	/**
	 * 添加用户收藏文章
	 * @param user_collect 用户收藏字段
	 * @return true-收藏成功 false-收藏失败
	 */
	public boolean updateUserCollect(String user_collect,int user_id);
}
