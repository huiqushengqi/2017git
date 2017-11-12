package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.internal.OracleTypes;

import com.etc.coder.dao.CityDao;
import com.etc.coder.entity.City;
import com.etc.coder.util.JNDIUtil;

public class CityDaoImpl implements CityDao {

	JNDIUtil util=new JNDIUtil();
	
	/**
	 * 根据城市的首字母查询城市
	 */
	public List<City> queryAllCity() {
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryAllCity(?)", list);
		ResultSet rs=(ResultSet) obj[0];
		List<City> cityList=new ArrayList<City>();
		try {
			while(rs.next()){
				City city=new City();
				city.setCity_id(rs.getInt("CITY_ID"));
				city.setCity_name(rs.getString("CITY_NAME"));
				city.setCity_description(rs.getString("CITY_DESCRIPTION"));
				cityList.add(city);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return cityList;
	}
}
