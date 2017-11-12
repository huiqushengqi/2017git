package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.SeeResumeBiz;
import com.etc.coder.dao.SeeResumeDao;
import com.etc.coder.dao.impl.SeeResumeDaoImpl;
import com.etc.coder.entity.BasicInfor;
import com.etc.coder.entity.Education;
import com.etc.coder.entity.Jobexpect;
import com.etc.coder.entity.Resume;
import com.etc.coder.entity.Workexp;

public class SeeResumeBizImpl  implements SeeResumeBiz{
	SeeResumeDao dao=new SeeResumeDaoImpl();

	public List<Resume> queryAllresume(int companyid) {
		if(companyid<=0){
			return null;
		}else{
			return dao.queryAllresume(companyid);
		}
		
	}

	public BasicInfor queryBasicInfor(int basicid) {
		if(basicid<0){
			return null;
		}else{
			return dao.queryBasicInfor(basicid);
		}
		
	}

	public Education queryEducation(int eduid) {
		if(eduid<0){
			return null;
		}else{
			return dao.queryEducation(eduid);
		}
		
	}

	public Jobexpect queryJobExpect(int expectid) {
		if(expectid<0){
			return null;
		}else{
			return dao.queryJobExpect(expectid);
		}
		
	}

	public Workexp queryWorkexp(int workid) {
		if(workid<0){
			return null;
		
	}else{
		return dao.queryWorkexp(workid);
	}
	
	}
}
