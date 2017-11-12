package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.TypeDao;
import com.etc.pili8la.entity.MyType;
import com.etc.pili8la.util.JDBCUtil;

public class TypeDaoImpl implements TypeDao{

	JDBCUtil util=new JDBCUtil();
	/**
	 * 根据id查询类型
	 * @param 传入类型id
	 * @return 类型对象
	 */
	public MyType querytypebyid(int i) {
		ResultSet rs=util.query("select * from p_type where type_id=?", i);
		MyType type=null;
		try {
			if(rs.next()){
				type=new MyType();
				type.setType_id(rs.getInt("type_id"));
				type.setType_name(rs.getString("type_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return type;
	}
	/**
	 * 查询所有类型
	 * @param 无
	 *  @return 所有类型的集合
	 */
	public List<MyType> queryAllType() {
		ResultSet rs=util.query("select * from p_type");
		List<MyType> list=new ArrayList<MyType>();
		try {
			while(rs.next()){
				MyType type=new MyType();
				type.setType_id(rs.getInt("type_id"));
				type.setType_name(rs.getString("type_name"));
				list.add(type);
			}
		} catch (SQLException e) {
			return null;
		}
		return list;
	}

}
