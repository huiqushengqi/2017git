package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.MyTypeBiz;
import com.etc.painter.dao.MyTypeDao;
import com.etc.painter.entity.MyType;
@Service
public class MyTypeBizImpl implements MyTypeBiz{
	@Resource
private MyTypeDao dao;

	public MyTypeDao getDao() {
		return dao;
	}

	public void setDao(MyTypeDao dao) {
		this.dao = dao;
	}

	public MyType queryall(String typename) {
		// TODO Auto-generated method stub
		return dao.queryall(typename);
	}

	public MyType querybyid(int eid) {
		// TODO Auto-generated method stub
		return dao.querybyid(eid);
	}
	
		
	
	

}
