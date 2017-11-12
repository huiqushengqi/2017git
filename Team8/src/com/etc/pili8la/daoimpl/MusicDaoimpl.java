package com.etc.pili8la.daoimpl;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.List;



import com.etc.pili8la.dao.MusicDao;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.util.JDBCUtil;


import com.etc.pili8la.entity.Music;



import oracle.jdbc.OracleTypes;

public class MusicDaoimpl implements MusicDao{



	JDBCUtil util = new JDBCUtil();
	/**
	 * 上传(添加)一个音乐的方法
	 * @param 传入要添加的音乐的对象
	 * @return 添加成功返回true 失败返回false
	 * 
	 */
	public boolean uploadmusic(Music music) {
		//调用存储过程，成功返回true 失败返回false
		if(util.cas_notreturn_porc("proc_uploadmusic(?,?,?,?,?,?)",music.getMusic_cover(),music.getMusic_title(),music.getMusic_singer(),music.getMusic_type(),music.getMusic_link(),music.getMusic_abstract())){
			return true;
		}
		return false;
	}
	
	
	/**
	 * 查询所有的音乐的方法
	 * @parm 无入参
	 * @return 返回查询到的所有的音乐的集合
	 */
	public List<Music> queryAllMuisc() {
		List<Music> list = new ArrayList<Music>();
		List<Integer> list1 = new ArrayList<Integer>();
		list1.add(OracleTypes.CURSOR);
		Object[] obj = util.cas_hasreturn_porc("proc_queryallmusic(?)",list1);
		ResultSet rs = (ResultSet) obj[0];
		try {
			while(rs.next()){
				Music music = new Music();
				music.setMusic_id(rs.getInt("music_id"));
				music.setMusic_cover(rs.getString("music_cover"));
				music.setMusic_singer(rs.getString("music_singer"));
				music.setMusic_title(rs.getString("music_title"));
				music.setMusic_link(rs.getString("music_link"));
				music.setMusic_type(rs.getString("music_type"));
				music.setMusic_click(rs.getInt("music_click"));
				music.setMusic_abstract(rs.getString("music_abstract"));
				list.add(music);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


	/**
	 * 根据id删除音乐的方法
	 * @param 传入要删除的音乐的id
	 * @return 成功返回true 失败返回false
	 */
	public boolean dleteMusicByid(int musicid) {
		int i = 0;
		i = util.update("delete p_music where music_id = ?", musicid);
		if(i>0){
			return true;
		}
		return false;
	}


	/**
	 * 根据id查询该条音乐的所有信息的方法
	 * @param 出入要查询的音乐的id
	 * @return 返回查询到的音乐的对象
	 */
	public Music queryMusicById(int musicid) {
		Music music = new Music();
		ResultSet rs = util.query("select * from p_music where music_id = ? ", musicid);
		try {
			if(rs.next()){
				music.setMusic_id(rs.getInt("music_id"));
				music.setMusic_cover(rs.getString("music_cover"));
				music.setMusic_singer(rs.getString("music_singer"));
				music.setMusic_title(rs.getString("music_title"));
				music.setMusic_link(rs.getString("music_link"));
				music.setMusic_type(rs.getString("music_type"));
				music.setMusic_click(rs.getInt("music_click"));
				music.setMusic_abstract(rs.getString("music_abstract"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return music;
	}

	/**
	 * 根据id更新音乐的一些信息(标题、类型、歌手)
	 * @param 传入要修改的音乐的对象
	 * @return 成功返回true 失败返回false
	 */
	public boolean updateMusicById(Music music) {
		int i = 0;
		i = util.update("update p_music set music_title=?,music_type=?,music_singer=?,music_abstract=? where music_id=?", music.getMusic_title(),music.getMusic_type(),music.getMusic_singer(),music.getMusic_abstract(),music.getMusic_id());
		if(i>0){
			return true;
		}	
		return false;
	}

	/**
	 * 根据音乐标题模糊查询结果集
	 */
	public List<Music> queryMusicByTitle(String music_title) {
		List<Music> list=new ArrayList<Music>();
		
		Music music =null;
		ResultSet rs = util.query("select * from p_music where music_title like ?", "%"+music_title+"%");
		try {
			while(rs.next()){
				music= new Music();
				music.setMusic_id(rs.getInt("music_id"));
				music.setMusic_cover(rs.getString("music_cover"));
				music.setMusic_singer(rs.getString("music_singer"));
				music.setMusic_title(rs.getString("music_title"));
				music.setMusic_link(rs.getString("music_link"));
				music.setMusic_type(rs.getString("music_type"));
				music.setMusic_click(rs.getInt("music_click"));
				music.setMusic_abstract(rs.getString("music_abstract"));
				
				list.add(music);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	/**
	 * 增加点击次数
	 */
	public boolean addMusicClick(int click,int musicid) {
		int i = 0;
		i = util.update("update p_music set music_click=? where music_id=?",click,musicid);
		if(i>0){
			return true;
		}	
		return false;
	}

	


}
