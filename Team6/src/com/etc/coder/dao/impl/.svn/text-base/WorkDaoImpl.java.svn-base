package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.etc.coder.dao.WorkDao;
import com.etc.coder.entity.Workexp;
import com.etc.coder.util.JNDIUtil;

public class WorkDaoImpl implements WorkDao{

	/**
	 * 根据id查询相应的work
	 * @param 传入对应的id
	 * @return 返回相应的队象
	 */
	public Workexp queryOneWork(int id) {
		ResultSet rs = null;
		JNDIUtil util = new JNDIUtil();
		Workexp wk = null;
		rs = util.query("select * from t_workexp where work_id = ? ", id);
		 try {
			while(rs.next()){
				wk = new Workexp();
				 wk.setWork_company(rs.getString("work_company"));
				 wk.setWork_id(rs.getInt("work_id"));
				 wk.setWork_starttime(rs.getString("work_starttime"));
				 wk.setWork_endtime(rs.getString("work_endtime"));
				 wk.setWork_resp(rs.getString("work_resp"));
			
        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		 return wk; 
	}
		

}
