package com.etc.painter.bizimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.QuoteBiz;
import com.etc.painter.dao.QuoteDao;
import com.etc.painter.entity.MType;
import com.etc.painter.entity.Material;
@Service
public class QuoteBizImpl implements QuoteBiz{

	@Resource
	private QuoteDao dao;
	
	
	public QuoteDao getDao() {
		return dao;
	}


	public void setDao(QuoteDao dao) {
		this.dao = dao;
	}

	public Material queryByid(int id) {
		 //TODO Auto-generated method stub
		return dao.queryByid(id);
	}

}
