package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.coder.dao.TechnologytypeDao;
import com.etc.coder.entity.Technolgytype;
import com.etc.coder.util.JNDIUtil;

public class TechnologytypeDaoImpl implements TechnologytypeDao {
    /**
     * 查询所有技术类型的方法
     */
	JNDIUtil util=new JNDIUtil();
	public List<Technolgytype> querytechno() {
		List<Technolgytype> list=new ArrayList<Technolgytype>();
		ResultSet rs=util.query("select * from t_technologytype");
		try {
			while(rs.next()){
				Technolgytype tech=new Technolgytype();
				tech.setTech_id(rs.getInt("tech_id"));
				tech.setTech_type(rs.getString("tech_type"));
				tech.setTech_name(rs.getString("tech_name"));
				list.add(tech);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	
	/**
	 * 根据id查询岗位类型
	 */
	public Technolgytype querytype(int id) {
		Technolgytype tp=null;
		ResultSet rs=util.query("select * from t_technologytype where tech_id=? ", id);
		try {
			if(rs.next()){
			    tp=new Technolgytype();
				tp.setTech_id(rs.getInt("tech_id"));
				tp.setTech_type(rs.getString("tech_type"));
				tp.setTech_name(rs.getString("tech_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return tp;
	}
    /**
     * 根据类型名查询岗位类型id
     */
	public int querytypeid(String str) {
		int i=0;
		ResultSet rs=util.query("select tech_id from t_technologytype where tech_name=?",str);
		try {
			if(rs.next()){
				i=rs.getInt("tech_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return i;
	}

}
