package com.etc.coder.dao;

import com.etc.coder.entity.Workexp;

public interface WorkDao {
	
	//根据id查询相应的work
	public Workexp queryOneWork(int id);

}
