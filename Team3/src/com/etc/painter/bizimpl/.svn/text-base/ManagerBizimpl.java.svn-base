package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.ManagerBiz;
import com.etc.painter.dao.ManagerDao;
import com.etc.painter.entity.Manager;
@Service
public class ManagerBizimpl implements ManagerBiz {
	@Resource
	private ManagerDao dao;
	
	
	public ManagerDao getBao() {
		return dao;
	}

	public void setBao(ManagerDao dao) {
		this.dao = dao;
	}

	public int addMag(Manager mag) {
		int i=dao.addMag(mag);
		return i;
	}

	public int delete(Integer id) {
		int i=dao.delete(id);
		return i;
	}

	public List<Manager> queryJob(String job) {
		// TODO Auto-generated method stub
		return null;
	}

	public int update(Manager mag) {
		int i=dao.update(mag);
		return i;
	}
	/**
	 * ��ѯ���е�Ա��
	 * @return ��������Ա������Ϣ
	 * @author Beck
	 */


	public List<Manager> query() {
		List<Manager> list=dao.query();
		return list;
	}
	/**
	 * 分页查询员工
	 * @param page 当前页，size 每一页的数量
	 */
	 public List<Manager> querybypage(int page,int size){
		 if(page<=0||size<=0){
			 return null;
		 }
		 return dao.querybypage(page,size);
	 }
	 /**
	  * 查询员工的数量
	  * @return 返回数目
	  */
	public int querycount() {
		// TODO Auto-generated method stub
		
		return dao.querycount();
	}

	public Manager selectid(Integer id) {
		Manager man=dao.selectid(id);
		return man;
	}

}
