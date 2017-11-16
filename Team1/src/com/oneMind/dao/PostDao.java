package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Manager;
import com.oneMind.entity.Post;

public interface PostDao {
	//分页查询语句
	public List<Post> querryWall(String typename ,int page, int size);

	//获取表白墙帖子总条数
	public int countWall(String typename);


//��������ȶȲ�ѯǰ10
	public List<Post> queryallbyhot();

}
