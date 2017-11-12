package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.AdminDao;
import com.etc.pili8la.entity.Admin;
import com.etc.pili8la.util.JDBCUtil;

public class AdminDaoImpl implements AdminDao{

	JDBCUtil util= new JDBCUtil();
	/**
	 * 查询所有的管理员的方法
	 * @param 无入参
	 * @return 返会查询到的所有的管理员的对象的集合
	 */
	public List<Admin> queryAddAdmin() {
		List<Admin> list = new ArrayList<Admin>();
		ResultSet rs = util.query("select * from p_admin");
		try {
			while(rs.next()){
				Admin admin = new Admin();
				admin.setAdmin_id(rs.getInt("admin_id"));
				admin.setAdmin_name(rs.getString("admin_name"));
				admin.setAdmin_pwd(rs.getString("admin_pwd"));
				list.add(admin);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/**
	 *验证是否登录成功
	 *@param 传入管理员名和密码
	 *@return 查询到的管理员对象
	 */
	public Admin checkAdmin(String name, String pwd) {
		ResultSet rs=util.query("select * from p_admin where admin_name=? and admin_pwd=?",name,pwd);
		Admin admin=null;
		try {
			if(rs.next()){
				admin=new Admin();
				admin.setAdmin_id(rs.getInt("admin_id"));
				admin.setAdmin_name(rs.getString("admin_name"));
				admin.setAdmin_pwd(rs.getString("admin_pwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;
	}
}
