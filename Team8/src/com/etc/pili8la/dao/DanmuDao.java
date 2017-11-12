package com.etc.pili8la.dao;

import java.util.List;

import com.etc.pili8la.entity.Mdanmu;
import com.etc.pili8la.entity.Vdanmu;

public interface DanmuDao {
	//添加一条视频弹幕
	public boolean addVdanmu(Vdanmu vdanmu,int video_id);
	
	//添加一条音乐弹幕
	public boolean addMdanmu(Mdanmu mdanmu,int music_id);
	
	//根据视频id查询视频弹幕
	public List<Vdanmu> queryVdanmu(int video_id);
	
	//根据音乐id查询音乐弹幕
	public List<Mdanmu> queryMdanmu(int music_id);
}
