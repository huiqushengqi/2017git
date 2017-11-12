package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.VideoBiz;
import com.etc.pili8la.dao.VideoDao;
import com.etc.pili8la.daoimpl.VideoDaoImpl;
import com.etc.pili8la.entity.Video;

public class VideoBizImpl implements VideoBiz{
	
	VideoDao dao=new VideoDaoImpl();
	/**
	 * 判断video类是否合法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#addVideo(com.etc.pili8la.entity.Video)
	 */
	public boolean addVideo(Video video) {
		if(video==null){
			return false;
		}
		return dao.addVideo(video);
	}
	/**
	 * 判断id是否合法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#deleteVideo(int)
	 */
	public boolean deleteVideo(int video_id) {
		if(video_id<0){
			return false;
		}
		return dao.deleteVideo(video_id);
	}
	/**
	 * 判断video类是否合法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#updateVideo(com.etc.pili8la.entity.Video)
	 */
	public boolean updateVideo(Video video) {
		if(video==null){
			return false;
		}
		return dao.updateVideo(video);
	}
	
	public List<Video> queryAllVideo() {
		// TODO Auto-generated method stub
		return dao.queryAllVideo();
	}
	/**
	 * 判断id是否合法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#queryVideo(int)
	 */
	public Video queryVideo(int video_id) {
		if(video_id<0){
			return null;
		}
		return dao.queryVideo(video_id);
	}
	/**
	 * 判断title是否非法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#queryVideoByTitle(java.lang.String)
	 */
	public List<Video> queryVideoByTitle(String video_title) {
		if(video_title==null){
			return null;
		}
		return dao.queryVideoByTitle(video_title);
	}
	/**
	 * 判断类型是否非法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#queryAllVideoByType(java.lang.String)
	 */
	public List<Video> queryAllVideoByType(String video_type) {
		if(video_type==null){
			return null;
		}
		return dao.queryAllVideoByType(video_type);
	}
	/**
	 * 判断author是否合法(non-Javadoc)
	 * @see com.etc.pili8la.biz.VideoBiz#queryAllVideoByAuthor(java.lang.String)
	 */
	public List<Video> queryAllVideoByAuthor(String video_author) {
		if(video_author==null){
			return null;
		}
		return dao.queryAllVideoByAuthor(video_author);
	}
	/**
	 * 增加点击次数
	 */
	public boolean addVideoClick(int click,int video_id) {
		if(click<0){
			return false;
		}
		return dao.addVideoClick(click,video_id);
	}

}
