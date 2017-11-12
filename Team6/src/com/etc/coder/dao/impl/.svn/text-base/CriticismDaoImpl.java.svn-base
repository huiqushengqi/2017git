package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.internal.OracleTypes;

import com.etc.coder.biz.MessageBiz;
import com.etc.coder.biz.UserBiz;
import com.etc.coder.biz.impl.MessageBizImpl;
import com.etc.coder.biz.impl.UserBizImpl;
import com.etc.coder.dao.CriticismDao;
import com.etc.coder.entity.Criticism;
import com.etc.coder.entity.User;
import com.etc.coder.util.JNDIUtil;

public class CriticismDaoImpl implements CriticismDao {

	JNDIUtil util=new JNDIUtil();
	
	public boolean addCriticism(int cri_message, String criticism_text, String criticism_date,int criticism_userid) {
		return util.call_notreturn_proc("proc_addCriticism(?,?,?,?)", cri_message,criticism_text,criticism_date,criticism_userid);
	}

	public List<Criticism> queryCriticismByMessageId(int messageid) {
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryCriticismByMessageId(?,?)", list, messageid);
		ResultSet rs=(ResultSet) obj[0];
		List<Criticism> crilist=new ArrayList<Criticism>();
		try {
			while(rs.next()){
				Criticism cri=new Criticism();
				cri.setCriticism_id(rs.getInt("criticism_id"));
				cri.setCriticism_text(rs.getString("criticism_text"));
				cri.setCriticism_date(rs.getString("criticism_date"));
				UserBiz biz=new UserBizImpl();
				User user=biz.queryUserById(rs.getInt("criticism_userid"));
				cri.setCri_user(user);
				crilist.add(cri);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return crilist;
	}

}
