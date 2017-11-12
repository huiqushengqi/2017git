package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.etc.coder.dao.ProjectDao;
import com.etc.coder.entity.Projectexp;
import com.etc.coder.util.JNDIUtil;

public class ProjectDaoImpl implements ProjectDao{

	/**
	 * 通过id查询相应的id
	 * @param 传入相应的id
	 * @return 返回对应的Project对象
	 */
	public Projectexp queryOneProject(int id) {
		ResultSet rs = null;
		JNDIUtil util = new JNDIUtil();
		Projectexp pj = null;
		rs = util.query("select * from t_projectexp where project_id=?",id);
		 try {
			while(rs.next()){
				pj = new Projectexp();
				 pj.setProject_depict(rs.getString("project_depict"));
				 pj.setProject_id(rs.getInt("project_id"));
				 pj.setProject_stattime(rs.getString("project_stattime"));
				 pj.setProject_endtime(rs.getString("project_endtime"));
				 pj.setProject_name(rs.getString("project_name"));
				 pj.setProject_duty(rs.getString("project_duty"));
			
			
           }           
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		 return pj;
		
	}
	
	

}
