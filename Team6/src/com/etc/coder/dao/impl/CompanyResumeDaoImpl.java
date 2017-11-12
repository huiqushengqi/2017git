package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.coder.dao.CompanyResumeDao;
import com.etc.coder.entity.CompanyResume;
import com.etc.coder.util.JNDIUtil;

public class CompanyResumeDaoImpl implements CompanyResumeDao{
	JNDIUtil util=new JNDIUtil();
	/**
	 * 添加信息
	 * @return true 表示添加成功，false 添加失败
	 */
	public boolean addCompany_resume(CompanyResume cr) {
		// TODO Auto-generated method stub
		return util.call_notreturn_proc("proc_addCompany_resume(?,?)", cr.getCompany_id(),cr.getResume_id());
	}
	/**
	 * 根据企业的id查询信息
	 * @param 企业的id
	 */
	public List<CompanyResume> selectInfo(int companyid) {
		// TODO Auto-generated method stub
		List<CompanyResume>list=new ArrayList<CompanyResume>();
		ResultSet set=util.query("select * from t_company_resume where company_id=?",companyid);
		try {
			while(set.next()){
				CompanyResume cr=new CompanyResume();
				cr.setCompany_resume_id(set.getInt("company_resume_id"));
				cr.setCompany_id(set.getInt("company_id"));
				cr.setResume_id(set.getInt("resume_id"));
				list.add(cr);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(util!=null){
				util.closeAll();
			}
		}
		return list;
	}

}
