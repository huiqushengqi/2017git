package com.etc.painter.biz;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.painter.entity.Example;

public interface ExampleBiz {
	
	public List<Example> queryit();
	 public int addMag(Example exp);
	    //根据ID删除数据
	    public int delete(Integer id);
	    //根据ID查询信息
	    public Example selectid(Integer id);
	    //修改
	    public int update(Example exp);
	    //根据职务查询

	    public List<Example> queryname(String name);
	    //查询所有
	    public List<Example> query();
	  //根据类型查询案例
		public List<Example> querybytype(int typeid);
}
