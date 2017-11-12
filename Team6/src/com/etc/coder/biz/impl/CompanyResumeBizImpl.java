package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.CompanyResumeBiz;
import com.etc.coder.dao.CompanyResumeDao;
import com.etc.coder.dao.impl.CompanyResumeDaoImpl;
import com.etc.coder.entity.CompanyResume;

public class CompanyResumeBizImpl implements CompanyResumeBiz{
	CompanyResumeDao dao=new CompanyResumeDaoImpl();

	public boolean addCompany_resume(CompanyResume cr) {
		// TODO Auto-generated method stub
		if(cr.getCompany_id()<0||cr.getResume_id()<0){
			return false;
		}
		return dao.addCompany_resume(cr);
	}

	public List<CompanyResume> selectInfo(int companyid) {
		// TODO Auto-generated method stub
		if(companyid<0){
			return null;
		}
		return dao.selectInfo(companyid);
	}
	
}
