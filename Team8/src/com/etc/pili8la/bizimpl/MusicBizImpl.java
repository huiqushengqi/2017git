package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.MusicBiz;
import com.etc.pili8la.dao.MusicDao;
import com.etc.pili8la.daoimpl.MusicDaoimpl;
import com.etc.pili8la.entity.Music;

public class MusicBizImpl implements MusicBiz{

	MusicDao dao = new MusicDaoimpl();
	/**
	 * 根据id删除音乐的方法
	 * @param 传入要删除的音乐的id
	 * @return 成功返回true 失败返回false
	 */
	public boolean dleteMusicByid(int musicid) {
		if(musicid <1){
			System.out.println("音乐的id不能小于1");
			return false;
		}
		return dao.dleteMusicByid(musicid);
	}

	
	/**
	 * 查询所有的音乐的方法
	 * @param 无入参
	 * @return 返回查询到的音乐的对象的集合
	 */
	public List<Music> queryAllMuisc() {
		
		return dao.queryAllMuisc();
	}

	/**
	 * 根据id查出该条音乐的全部信息
	 * @param 传入要查询的音乐的id
	 * @return 返回查询到的音乐的对象
	 */
	public Music queryMusicById(int musicid) {
		if(musicid <1){
			System.out.println("输入的ID不能小于1");
		}
		return dao.queryMusicById(musicid);
	}

	/**
	 * 更新(修改)音乐的方法
	 * @param 传入要修改的音乐的对象
	 * @return 成功返回true 失败返回false
	 */
	public boolean updateMusicById(Music music) {
		if(music == null){
			System.out.println("传入的音乐对象不能为空！");
			return false;
		}
		return dao.updateMusicById(music);
	}

	/**
	 * 上传(添加)音乐的方法
	 * @parm 传入要上传的音乐的对象
	 * @return 成功返回true 失败返回false
	 */
	public boolean uploadmusic(Music music) {
		if(music == null){
			System.out.println("传入的音乐对象不能为空！");
			return false;
		}
		return dao.uploadmusic(music);
	}

	/**
	 * 增加点击次数
	 */
	public boolean addMusicClick(int click,int musicid) {
		if(click<0){
			System.out.println("传入的音乐点击数不能为空！");
			return false;
		}
		return dao.addMusicClick(click,musicid);
	}

	/**
	 * 根据音乐标题搜索音乐
	 */
	public List<Music> queryMusicByTitle(String music_title) {
		if(music_title==null){
			return null;
		}
		return dao.queryMusicByTitle(music_title);
	}
}
