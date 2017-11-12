package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.DanmuBiz;
import com.etc.pili8la.dao.DanmuDao;
import com.etc.pili8la.daoimpl.DanmuDaoImpl;
import com.etc.pili8la.entity.Mdanmu;
import com.etc.pili8la.entity.Vdanmu;

public class DanmuBizImpl implements DanmuBiz{
	DanmuDao dao=new DanmuDaoImpl();
	/**
	 * 判断id和对象是否非法
	 */
	public boolean addVdanmu(Vdanmu vdanmu, int video_id) {
		if(vdanmu==null||video_id<0){
			return false;
		}
		return dao.addVdanmu(vdanmu, video_id);
	}

	/**
	 * 判断id和对象是否非法
	 */
	public boolean addMdanmu(Mdanmu mdanmu, int music_id) {
		if(mdanmu==null||music_id<0){
			return false;
		}
		return dao.addMdanmu(mdanmu, music_id);
	}

	/**
	 * 判断id和对象是否非法
	 */
	public List<Vdanmu> queryVdanmu(int video_id) {
		if(video_id<0){
			return null;
		}
		return dao.queryVdanmu(video_id);
	}

	/**
	 * 判断id和对象是否非法
	 */
	public List<Mdanmu> queryMdanmu(int music_id) {
		if(music_id<0){
			return null;
		}
		return dao.queryMdanmu(music_id);
	}
	
}
