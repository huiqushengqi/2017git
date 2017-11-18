package com.etc.painter.bizimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.MTypeBiz;
import com.etc.painter.dao.MTypeDao;
import com.etc.painter.entity.MType;
@Service
public class MTypeBizImpl implements MTypeBiz {

	@Resource
	private MTypeDao dao;
	public MTypeDao getDao() {
		return dao;
	}

	public void setDao(MTypeDao dao) {
		this.dao = dao;
	}

	public MType queryByname(String typename) {
		// TODO Auto-generated method stub
		return dao.queryByname(typename);	
	}

	public MType queryid(int id) {
		// TODO Auto-generated method stub
		return dao.queryid(id);
	}

}
