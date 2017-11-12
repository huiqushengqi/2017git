package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.etc.coder.dao.JobExpectDao;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Workexp;
import com.etc.coder.util.JNDIUtil;

public class JobExpectDaoImpl implements JobExpectDao{

	/**
	 * 根据id查询相应的期望工作
	 * @param传入一个对应的id
	 * @return 返回相对应的期望工作
	 */
	public Jobexpect queryOneJobExpect(int id) {
		ResultSet rs = null;
		JNDIUtil util = new JNDIUtil();
		Jobexpect je = null;
		rs = util.query("select * from t_jobexpect where expect_id = ? ", id);
		 try {
			while(rs.next()){
				je = new Jobexpect();
				 je.setExpect_address(rs.getString("expect_address"));
				 je.setExpect_id(rs.getInt("expect_id"));
				 je.setExpect_type(rs.getString("expect_type"));
				 je.setExpect_salary(rs.getString("expect_salary"));
				 je.setExpect_job(rs.getString("expect_job"));
			
        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		 return je;
	}

}
