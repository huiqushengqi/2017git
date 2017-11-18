package com.etc.painter.biz;

import com.etc.painter.entity.MType;

public interface MTypeBiz {

	// 通过类型名查询类型信息
			public MType queryByname(String typename);
		//根据id查类型信息
			public MType queryid(int id);
	
}
