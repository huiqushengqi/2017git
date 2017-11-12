package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.CompanyBiz;
import com.etc.coder.dao.CompanyDao;
import com.etc.coder.dao.impl.CompanyDaoImpl;
import com.etc.coder.entity.Company;
import com.etc.coder.entity.Job;

public class CompanyBizImpl implements CompanyBiz{
	CompanyDao dao=new CompanyDaoImpl();

	public Company selectCompanyByName(String name) {
		// TODO Auto-generated method stub
		if(name==null||name.equals("")){
			return null;
		}
		return dao.selectCompanyByName(name.trim());
	}

	public boolean addCompany(Company com) {
		// TODO Auto-generated method stub
		if(com.getCompany_password().equals("")||com.getCompany_password()==null){
			return false;
		}
		return dao.addCompany(com);
	}

	public boolean updateCompany(Company com) {
		// TODO Auto-generated method stub
		if(com==null){
			return false;
		}
		return dao.updateCompany(com);
	}
    /**
     * 根据id查询企业信息
     */
	public Company querycompany(int id) {
		return dao.querycompany(id);
	}
    /**
     * 根据企业名查询企业id
     */
	public int queryid(String str) {
		return dao.queryid(str);
	}

	public List<Job> queryjobByCompanyId(int companyId) {
		if(companyId<0){
			return null;
		}else{
			return dao.queryjobByCompanyId(companyId);
		}
	}

}
