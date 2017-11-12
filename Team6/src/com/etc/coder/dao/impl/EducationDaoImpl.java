package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.etc.coder.dao.EducationDao;
import com.etc.coder.entity.Education;
import com.etc.coder.util.JNDIUtil;

public class EducationDaoImpl implements EducationDao{

	/**
	 * 根据id查询education的详细信息
	 * @param 传入对应的id
	 * @return 返回那个Education对象
	 */
	public Education queryOneEdu(int id) {
		ResultSet rs = null;
		JNDIUtil util = new JNDIUtil();
		Education edu = null;
		rs = util.query("select * from t_education where edu_id=? ", id);
		 try {
			while(rs.next()){
				edu = new Education();
				 edu.setEdu_cations(rs.getString("edu_cations"));
				 edu.setEdu_id(rs.getInt("edu_id"));
				 edu.setEdu_StartDate(rs.getString("edu_StartDate"));
				 edu.setEdu_EndDate(rs.getString("edu_EndDate"));
				 edu.setEdu_School(rs.getString("edu_School"));
				 edu.setEdu_Major(rs.getString("edu_Major"));
			
}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		 return edu;
		 
	}

}
