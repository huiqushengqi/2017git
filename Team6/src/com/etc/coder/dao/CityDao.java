package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.City;

public interface CityDao {
	/**
	 * 根据城市的首字母查询城市
	 * @return
	 */
	public List<City> queryAllCity();
}
