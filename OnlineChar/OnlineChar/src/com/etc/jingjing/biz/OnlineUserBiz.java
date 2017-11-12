package com.etc.jingjing.biz;

import java.util.List;

import com.etc.jingjing.entity.OnlineUser;

public interface OnlineUserBiz {
	//添加在线用户
	public boolean addOnlineUser(OnlineUser ou);
	//删除在线用户
	public boolean deleteOnlineUser(int id);
	//修改在线用户    
	public boolean updateOnlinaUser(OnlineUser ou);
	//查询所有用户
	public List<OnlineUser> queryAllOnlineUser();
	//根据ip查询用户
	public String queryOnlineUserByIp(String ip);
	//根据ip查询用户名
	public String queryOnlineUserNameByIp(String ip);
}
