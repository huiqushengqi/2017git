package com.etc.painter.dao;

import java.util.List;

import com.etc.painter.entity.Designer;

public interface DesignerDao {
	//根据职位查询设计师
	public List<Designer> queryBytitle(String title);
	//根据职位查询设计师的总条数
	public int queryCount(String title);
	//分页查询所有的设计师
	public List<Designer> queryAll(int page,int size);
	//查询所有设计师的数目
	public int queryCount1();
	//根据id删除信息
	public boolean deletebyid(int id);
	//添加设计师
	public boolean adddesigner(Designer d);
	//根据id查询设计师的信息
	public Designer querybyid(int id);
	//根据id修改设计师的信息
	public boolean updatebyid(Designer designer);
}
