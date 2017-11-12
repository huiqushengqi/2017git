package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.etc.coder.dao.BasicDao;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.util.JNDIUtil;

public class BasicDaoImpl implements BasicDao {

	/**
	 * 根据id查询Basic
	 * @param 传入对应的id
	 * @return 返回相对应的对象
	 */
	public BasicInfor queryOneBasic(int id) {
		ResultSet rs = null;
		JNDIUtil util = new JNDIUtil();
		BasicInfor bs =null;
		 rs = util.query("select * from t_basic where basic_id=? ", id);
		 try {
			while(rs.next()){
				bs = new BasicInfor();
				 bs.setBasic_birthday(rs.getString("basic_birthday"));
				 bs.setBasic_email(rs.getString("basic_email"));
				 bs.setBasic_gender(rs.getString("basic_gender"));
				 bs.setBasic_home(rs.getString("basic_home"));
				 bs.setBasic_id(rs.getInt("basic_id"));
				 bs.setBasic_mobilePhone(rs.getString("basic_mobilePhone"));
				 bs.setBasic_name(rs.getString("basic_name"));
				 bs.setBasic_photo(rs.getString("basic_photo"));
				 bs.setBasic_state(rs.getString("basic_state"));
				 bs.setBasic_idNumber(rs.getString("basic_idNumber"));

             }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		 return bs;
	}

}
