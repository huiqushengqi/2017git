package com.etc.painter.dao;

import java.util.List;

import com.etc.painter.entity.Manager;

public interface ManagerDao {
	//添加管理人员
    public int addMag(Manager mag);
    //根据ID删除数据
    public int delete(Integer id);
    //根据ID查询信息
    public Manager selectid(Integer id);
    //修改人事资料
    public int update(Manager mag);
    //根据职务查询
    public List<Manager> queryJob(String job);
    //查询所有管理人员
    public List<Manager> query();
    //分页查询员工
    public List<Manager> querybypage(int page,int size);
    //查询员工数目
    public int querycount();
    
      

}
