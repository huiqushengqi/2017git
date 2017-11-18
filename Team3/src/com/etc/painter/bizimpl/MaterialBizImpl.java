package com.etc.painter.bizimpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.MaterialBiz;
import com.etc.painter.dao.MaterialDao;
import com.etc.painter.entity.Material;
@Service
public class MaterialBizImpl implements MaterialBiz {

	@Resource
	private MaterialDao dao;
	
	public MaterialDao getDao() {
		return dao;
	}

	public void setDao(MaterialDao dao) {
		this.dao = dao;
	}

	public boolean addAll(Material mat) {
		// TODO Auto-generated method stub
		return dao.addAll(mat);
	}

	public boolean editbyid(Material mat) {
		// TODO Auto-generated method stub
		return dao.editbyid(mat);
	}

	public boolean deletebyid(int myid) {
		// TODO Auto-generated method stub
		return dao.deletebyid(myid);
	}

	public List<Material> queryall() {
		// TODO Auto-generated method stub
		
		return dao.queryall();
	}

	public Material querybyid(int myid) {
		// TODO Auto-generated method stub
		return dao.querybyid(myid);
	}

}
