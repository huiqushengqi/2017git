package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.AdminBiz;
import com.etc.pili8la.dao.AdminDao;
import com.etc.pili8la.daoimpl.AdminDaoImpl;
import com.etc.pili8la.entity.Admin;

public class AdminBizImpl implements AdminBiz{
    AdminDao dao=new AdminDaoImpl();
    /**
	 * 查询所有的管理员的方法
	 * @param 无入参
	 * @return 返会查询到的所有的管理员的对象的集合
	 */
	public List<Admin> queryAddAdmin() {
		
		return dao.queryAddAdmin();
	}
	/**
	 *验证是否登录成功
	 *@param 传入管理员名和密码
	 *@return 查询到的管理员对象
	 */
	public Admin checkAdmin(String name, String pwd) {
		if(name==null||pwd==null){
			return null;
		}
		return dao.checkAdmin(name, pwd);
	}

}
