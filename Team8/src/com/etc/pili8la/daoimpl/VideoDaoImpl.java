package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.VideoDao;
import com.etc.pili8la.entity.Video;
import com.etc.pili8la.util.JDBCUtil;

public class VideoDaoImpl implements VideoDao {
	JDBCUtil util = new JDBCUtil();

	/**
	 * 添加视频信息
	 * @param 传入video对象
	 * @return 是否添加成功
	 * 
	 */
	public boolean addVideo(Video video) {

		boolean flag = util.cas_notreturn_porc("proc_addvideo(?,?,?,?,?,?)",
				video.getVideo_cover(), video.getVideo_title(),
				video.getVideo_author(),video.getVideo_type(),
				video.getVideo_link(),video.getVideo_abstract());

		return flag;
	}

	/**
	 * 删除视频信息
	 * @param 传入视频id
	 * @return 是否删除成功
	 */
	public boolean deleteVideo(int video_id) {

		boolean flag = util.cas_notreturn_porc("proc_deletevideo(?)", video_id);

		return flag;
	}

	/**
	 * 更新视频信息
	 * @param 传入视频对象
	 * @return 是否更改成功
	 */
	public boolean updateVideo(Video video) {

		boolean flag = util.cas_notreturn_porc("proc_updatevideo(?,?,?,?,?)",
				video.getVideo_id(), video.getVideo_title(), video.getVideo_author(),
				video.getVideo_type(),video.getVideo_abstract());

		return flag;
	}

	/**
	 * 查询所有视频信息
	 * @return 所有视频
	 */
	public List<Video> queryAllVideo() {

		List<Video> list = new ArrayList<Video>();

		ResultSet rs = util
				.query("select * from p_video");

		try {
			while (rs.next()) {
				Video video = new Video();
				video.setVideo_id(rs.getInt("video_id"));
				video.setVideo_cover(rs.getString("video_cover"));
				video.setVideo_title(rs.getString("video_title"));
				video.setVideo_author(rs.getString("video_author"));
				video.setVideo_type(rs.getString("video_type"));
				video.setVideo_link(rs.getString("video_link"));
				video.setVideo_abstract(rs.getString("video_abstract"));
				
				list.add(video);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}

		return list;
	}

	/**
	 * 根据id查询视频信息
	 * @param 传入视频id
	 * @return 根据id查询video
	 */
	public Video queryVideo(int video_id) {
		Video video = null;
		ResultSet rs = util
				.query("select * from p_video where video_id=?",video_id);

		try {
			if (rs.next()) {
				video= new Video();
				video.setVideo_id(rs.getInt("video_id"));
				video.setVideo_cover(rs.getString("video_cover"));
				video.setVideo_title(rs.getString("video_title"));
				video.setVideo_author(rs.getString("video_author"));
				video.setVideo_type(rs.getString("video_type"));
				video.setVideo_link(rs.getString("video_link"));
				video.setVideo_abstract(rs.getString("video_abstract"));
				video.setVideo_click(rs.getInt("video_click"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}

		return video;
	}
	/**
	 * 根据视频标题查询视频信息
	 * @param 传入视频名称
	 * @return 根据视频名称查询视频
	 */
	public List<Video> queryVideoByTitle(String video_title) {

		List<Video> list = new ArrayList<Video>();

		ResultSet rs = util
				.query("select * from p_video where video_title like ?","%"+video_title+"%");

		try {
			while (rs.next()) {
				Video video = new Video();
				video.setVideo_id(rs.getInt("video_id"));
				video.setVideo_cover(rs.getString("video_cover"));
				video.setVideo_title(rs.getString("video_title"));
				video.setVideo_author(rs.getString("video_author"));
				video.setVideo_type(rs.getString("video_type"));
				video.setVideo_link(rs.getString("video_link"));
				video.setVideo_abstract(rs.getString("video_abstract"));
				
				list.add(video);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
	/**
	 * 根据视频类型查询视频信息
	 * @param 传入视频类型
	 * @return 根据视频类型查询视频
	 */
	public List<Video> queryAllVideoByType(String video_type) {

		List<Video> list = new ArrayList<Video>();

		ResultSet rs = util
				.query("select * from p_video where video_type=?",video_type);

		try {
			while (rs.next()) {
				Video video = new Video();
				video.setVideo_id(rs.getInt("video_id"));
				video.setVideo_cover(rs.getString("video_cover"));
				video.setVideo_title(rs.getString("video_title"));
				video.setVideo_author(rs.getString("video_author"));
				video.setVideo_type(rs.getString("video_type"));
				video.setVideo_link(rs.getString("video_link"));
				video.setVideo_abstract(rs.getString("video_abstract"));
				
				list.add(video);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
	/**
	 * 根据作者查询视频信息
	 * @param 传入视频作者
	 * @return 根据视频作者查询视频
	 */
	public List<Video> queryAllVideoByAuthor(String video_author) {

		List<Video> list = new ArrayList<Video>();

		ResultSet rs = util
				.query("select * from p_video where  video_author=?",video_author);

		try {
			while (rs.next()) {
				Video video = new Video();
				video.setVideo_id(rs.getInt("video_id"));
				video.setVideo_cover(rs.getString("video_cover"));
				video.setVideo_title(rs.getString("video_title"));
				video.setVideo_author(rs.getString("video_author"));
				video.setVideo_type(rs.getString("video_type"));
				video.setVideo_link(rs.getString("video_link"));
				video.setVideo_abstract(rs.getString("video_abstract"));
				
				list.add(video);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public boolean addVideoClick(int click,int video_id) {
		int i = 0;
		i = util.update("update p_video set video_click=? where video_id=?",click,video_id);
		if(i>0){
			return true;
		}	
		return false;
	}

}
