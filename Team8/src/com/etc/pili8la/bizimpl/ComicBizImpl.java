package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.ComicBiz;
import com.etc.pili8la.dao.ComicDao;
import com.etc.pili8la.daoimpl.ComicDaoImpl;
import com.etc.pili8la.entity.Comic;


public class ComicBizImpl implements ComicBiz{

	ComicDao dao = new ComicDaoImpl();
	/**
	 * 根据id删除漫画的方法
	 * @param 传入要删除的漫画的id
	 * @return 删除成功返回true 失败返回false
	 */
	public boolean deleteComicById(int comicid) {
		if(comicid <= 0){
			System.out.println("漫画的id小于1");
			return false;
		}else{
			return dao.deleteComicById(comicid);
		}
		
	}

	/**
	 * 查询所有的漫画的方法
	 * @param 无入参
	 * @return 返回全部的漫画的对象的集合
	 */
	public List<Comic> queryAllComic() {
		
		return dao.queryAllComic();
	}

	/**
	 * 根据id查询该条漫画的全部信息
	 * @param 传入要查询的漫画的id
	 * @return 返回查询到的漫画的对象
	 */
	public Comic queryComicByid(int comicid) {
		if(comicid <0){
			System.out.println("漫画的id不能小于1");
			return null;
		}
		return dao.queryComicByid(comicid);
	}

	/**
	 * 更新漫画的方法
	 * @param 传入的要更新的漫画的对象
	 * @return 成功返回true 失败返回false
	 */
	public boolean updateComic(Comic comic) {
		if(comic == null){
			System.out.println("不能传入空对象");
			return false;
		}
		return dao.updateComic(comic);
	}

	/**
	 * 上传(更新)漫画的方法
	 * @param 传入要上传的漫画的对象
	 * @return 成功返回true 失败返回false
	 */
	public boolean uploadcomic(Comic comic) {
		if(comic == null){
			System.out.println("传入的漫画不能为空!");
			return false;
		}
		return dao.uploadcomic(comic);
	}

	/**
	 * 创建一个漫画的方法
	 * @param 传入要创建的漫画的对象
	 * @return 返回true or false
	 */
	public boolean createComic(Comic comic) {
		if(comic == null){
			System.out.println("传入的漫画的对象不能为空");
			return false;
		}
		return dao.createComic(comic);
	}

	public boolean insertComicByTitle(String comiclink, String title) {
		if(comiclink == null || comiclink.equals("") || title== null || title.equals("")){
			System.out.println("传入的值不能为空!");
			return false;
		}
		return dao.insertComicByTitle(comiclink, title);
	}
/**
 * 根据漫画的rownum查询漫画的方法
 * 
 */
	@Override
	public Comic queryComicByrownum(int num) {
		if(num <1){
			System.out.println("漫画的rownum不能小于1");
			return null;
		}
		return dao.queryComicByrownum(num);
	}
}
