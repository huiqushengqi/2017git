package com.etc.painter.dao;

import com.etc.painter.entity.MType;
import com.etc.painter.entity.Material;

public interface QuoteDao {

	//通过外键值查询材料表
	public Material queryByid(int id);
}
