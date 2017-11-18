package com.etc.painter.biz;

import java.util.List;

import com.etc.painter.entity.Material;

public interface MaterialBiz {

	public boolean addAll(Material mat);
	
	public boolean editbyid(Material mat);
	
	public boolean deletebyid(int myid); 
	
	public List<Material> queryall();
	
	public Material querybyid(int myid);
}
