package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.DanmuDao;
import com.etc.pili8la.entity.Mdanmu;
import com.etc.pili8la.entity.Vdanmu;
import com.etc.pili8la.util.JDBCUtil;

public class DanmuDaoImpl implements DanmuDao {
	JDBCUtil util=new JDBCUtil();
	/**
	 * 查询视频弹幕
	 */
	public List<Vdanmu> queryVdanmu(int video_id) {
		List<Vdanmu> list = new ArrayList<Vdanmu>();
		Vdanmu vdanmu=null;
		
		ResultSet rs=util.query("select * from p_danmu where danmu_video=?", video_id);
		
		try {
			while(rs.next()){
				vdanmu=new Vdanmu();
				vdanmu.setText(rs.getString("danmu_text"));
				vdanmu.setTime(rs.getInt("danmu_time"));
				vdanmu.setColor(rs.getString("danmu_color"));
				vdanmu.setPostion(rs.getString("danmu_postion"));
				vdanmu.setSize(rs.getString("danmu_size"));
				
				list.add(vdanmu);
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
	 * 查询音乐弹幕
	 */
	public List<Mdanmu> queryMdanmu(int music_id) {
		List<Mdanmu> list = new ArrayList<Mdanmu>();
		Mdanmu mdanmu=null;
		
		ResultSet rs=util.query("select * from p_danmu where danmu_music=?", music_id);
		
		try {
			while(rs.next()){
				mdanmu=new Mdanmu();
				mdanmu.setImg(rs.getString("danmu_img"));
				mdanmu.setInfo(rs.getString("danmu_text"));
				
				list.add(mdanmu);
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
	 * 添加一条视频弹幕
	 */
	public boolean addVdanmu(Vdanmu vdanmu,int video_id) {
		int i=util.update("insert into p_danmu(danmu_color,danmu_postion,danmu_size,danmu_text,danmu_time,danmu_video) values(?,?,?,?,?,?)",vdanmu.getColor(),vdanmu.getPostion(),vdanmu.getSize(),vdanmu.getText(),vdanmu.getTime(),video_id);
		if(i>0){
			return true;
		}
		return false;
	}
	
	/**
	 * 添加一条音乐弹幕
	 */
	public boolean addMdanmu(Mdanmu mdanmu,int music_id) {
		int i=util.update("insert into p_danmu(danmu_img,danmu_text,danmu_music) values(?,?,?)", mdanmu.getImg(),mdanmu.getInfo(),music_id);
		if(i>0){
			return true;
		}
		return false;
	}

}
