package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.Company;
import com.etc.coder.entity.Job;

public interface CompanyDao {
     //根据企业登录名查询企业信息
	public Company selectCompanyByName(String name);
	//添加企业信息
	public boolean addCompany(Company com);
	//根据id修改企业信息
	public boolean updateCompany(Company com);
	//根据id查询企业信息
	public Company querycompany(int id);
	//根据企业名查询企业id
	public int queryid(String str);
	//根据企业id查询发布的岗位
	public List<Job> queryjobByCompanyId(int companyId);
}
