package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.TypeBiz;
import com.etc.pili8la.dao.TypeDao;
import com.etc.pili8la.daoimpl.TypeDaoImpl;
import com.etc.pili8la.entity.MyType;

public class TypeBizImpl implements TypeBiz{
     TypeDao dao=new TypeDaoImpl();
     /**
 	 * 根据id查询类型
 	 * @param 传入类型id
 	 * @return 类型对象
 	 */
	public MyType querytypebyid(int i) {
		if(i<0){
			
			return null;
		}
		return dao.querytypebyid(i);
	}
	/**
	 * 查询所有类型
	 * @param 无
	 *  @return 所有类型的集合
	 */

	public List<MyType> queryAllType() {
		
		return dao.queryAllType();
	}

}
