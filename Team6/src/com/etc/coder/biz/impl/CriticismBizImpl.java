package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.CriticismBiz;
import com.etc.coder.dao.CriticismDao;
import com.etc.coder.dao.impl.CriticismDaoImpl;
import com.etc.coder.entity.Criticism;

public class CriticismBizImpl implements CriticismBiz {

	CriticismDao dao=new CriticismDaoImpl();
	public boolean addCriticism(int cri_message, String criticism_text, String criticism_date,int criticism_userid) {
		if(criticism_text==null||criticism_text.trim().equals("")){
			return false;
		}else{
			return dao.addCriticism(cri_message, criticism_text, criticism_date,criticism_userid);
		}
	}
	public List<Criticism> queryCriticismByMessageId(int messageid) {
		if(messageid<0){
			return null;
		}else{
			return dao.queryCriticismByMessageId(messageid);
		}
	}

}
