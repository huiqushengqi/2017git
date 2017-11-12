package com.etc.coder.dao;

import com.etc.coder.entity.BasicInfor;

public interface BasicDao {
	
	//通过id查询相应的basic
	public BasicInfor queryOneBasic(int id);

}
