package com.oneMind.biz;

import java.util.List;

import com.oneMind.entity.Post;

public interface PostBiz {

	//��ѯ���б��ǽ������
		public List<Post> querryWall(String typename);
		//��������ȶȲ�ѯǰ10
		public List<Post> queryallbyhot();
		public List<Post> queryPostByPage();

	//分页查询语句
		public List<Post> querryWall(String typename ,int page, int size);

	//获取表白墙帖子总条数
		public int countWall(String typename);

}
