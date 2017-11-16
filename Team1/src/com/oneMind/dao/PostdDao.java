package com.oneMind.dao;



import java.util.List;

import com.oneMind.entity.Post;

public interface PostdDao {
	//根据类型查询所有帖子
   public List<Post> queryById(int typeid);
   
   //分页查询帖子
 public List<Post>  queryByPage(String typeid,int page,int size);
}
