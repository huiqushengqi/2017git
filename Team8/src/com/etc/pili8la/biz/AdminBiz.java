package com.etc.pili8la.biz;

import java.util.List;

import com.etc.pili8la.entity.Admin;

public interface AdminBiz {

	//查询所有的管理员的方法
	public List<Admin> queryAddAdmin();
	//验证管理员登录的方法
	public Admin checkAdmin(String name,String pwd);
}
