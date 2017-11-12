package com.etc.coder.biz;

import java.util.List;

import com.etc.coder.entity.CompanyResume;

public interface CompanyResumeBiz {
	//添加企业和简历的数据
	public boolean addCompany_resume(CompanyResume cr);
	//根据企业的id查询信息
	public List<CompanyResume> selectInfo(int companyid);
}
