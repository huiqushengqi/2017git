package com.etc.jingjing.biz;

import java.util.List;

import com.etc.jingjing.entity.User;

public interface UserBiz {
	//添加用户
			public boolean addUser(User u);
			//删除用户
			public boolean deleteUser(int id);
			//修改用户密码    
			public boolean updateUser(User u);
			//查询所有用户
			public List<User> queryAllUser();
			//根据ip查询用户
			public List<User> queryAllUserByIp(String ip);
			//验证用户登录
			public boolean checkUserLogin(String name,String pwd);
			//根据ip查询用户名
			public String queryUsernameByIp(String ip);
			//根据ip查询密码
			public String queryUserpwdByIp(String ip);
			public boolean isexist(String user_name) ;
}
