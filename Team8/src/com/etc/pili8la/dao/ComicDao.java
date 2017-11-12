package com.etc.pili8la.dao;

import java.util.List;

import com.etc.pili8la.entity.Comic;

public interface ComicDao {
	

	//上传漫画，添加漫画的方法
	public boolean uploadcomic(Comic comic);
	
	//查询所有漫画的方法
	public List<Comic> queryAllComic();
	
	//删除漫画根据id的方法
	public boolean deleteComicById(int comicid);
	
	//更新漫画(更改漫画)的方法
	public boolean updateComic(Comic comic);
	
	//根据id查询漫画的方法
	public Comic queryComicByid(int comicid);
	
	//根据rownum查询漫画的方法
	public Comic queryComicByrownum(int num);
	
	//根据类型查询漫画
	public List<Comic> querycomicbytype(int i);
	
	//创建漫画的方法(有封面，没有漫画地址，)
	public boolean createComic(Comic comic);
	
	//给漫画添加地址的方法
	public boolean insertComicByTitle(String comiclink,String title);
}
