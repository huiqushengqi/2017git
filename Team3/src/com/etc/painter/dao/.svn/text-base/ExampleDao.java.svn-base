package com.etc.painter.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.painter.entity.Example;
import com.etc.painter.entity.Manager;

public interface ExampleDao {
	//根据类型查询案例
	public List<Example> querybytype(int typeid);
	//查询所有案例
	public List<Example> queryit();
	//添加案例
	public int addMag(Example exp);
	//根据ID删除数据
	public int delete(Integer id);
	//根据ID查询信息
	public Example selectid(Integer id);
	//修改案例
	public int update(Example exp);
	//根据职务查询
	public List<Example> queryname(String name);
	//查询所有
	public List<Example> query();
}
