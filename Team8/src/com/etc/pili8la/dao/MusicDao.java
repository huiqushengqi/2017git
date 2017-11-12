package com.etc.pili8la.dao;

import java.util.List;

import com.etc.pili8la.entity.Music;

public interface MusicDao {

	//上传(添加)一个音乐的方法
		public boolean uploadmusic(Music music);
		
		//查询所有的音乐的方法
		public List<Music> queryAllMuisc();
		
		//删除音乐的方法根据id
		public boolean dleteMusicByid(int musicid);
		
		//根据id查找到该条音乐的所有信息
		public Music queryMusicById(int musicid);
		
		//根据id更改音乐的一些信息(标题，类型，歌手)
		public boolean updateMusicById(Music music);
		
		//根据音乐标题查询音乐信息
		public List<Music> queryMusicByTitle(String music_title);
		
		//增加点击次数
		public boolean addMusicClick(int click,int musicid);
}
