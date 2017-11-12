package com.etc.pili8la.biz;

import java.util.List;

import com.etc.pili8la.entity.MyType;

public interface TypeBiz {
	//根据类型id查找类型
		public MyType querytypebyid(int i);
		//查询所有类型
		public List<MyType> queryAllType();
}
