package com.etc.pili8la.biz;

import java.util.List;

import com.etc.pili8la.entity.Video;

public interface VideoBiz {
	//增加视频信息
	public boolean addVideo(Video video);
	
	//根据id删除视频信息
	public boolean deleteVideo(int video_id);
	
	//根据id修改视频信息
	public boolean updateVideo(Video video);
	
	//查询所有视频信息
	public List<Video> queryAllVideo();
	
	//根据id查询视频信息
	public Video queryVideo(int video_id);
	
	//根据视频标题查询视频信息
	public List<Video> queryVideoByTitle(String video_title);
	
	//根据视频类型查询视频信息
	public List<Video> queryAllVideoByType(String video_type);
	
	//根据视频作者查询视频信息
	public List<Video> queryAllVideoByAuthor(String video_author);
	
	//增加点击次数
	public boolean addVideoClick(int click,int video_id);
}
