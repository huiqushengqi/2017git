package com.etc.coder.dao;

import com.etc.coder.entity.Projectexp;

public interface ProjectDao {
	
	//根据id查询相应的project
	public Projectexp queryOneProject(int id);

}
