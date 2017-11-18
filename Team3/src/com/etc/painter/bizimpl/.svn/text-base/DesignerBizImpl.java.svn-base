package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.etc.painter.biz.DesignerBiz;
import com.etc.painter.dao.DesignerDao;
import com.etc.painter.entity.Designer;
@Service
public class DesignerBizImpl implements DesignerBiz{
	@Resource
	private DesignerDao dao;
	
	public DesignerDao getDao() {
		return dao;
	}

	public void setDao(DesignerDao dao) {
		this.dao = dao;
	}

	/**
	 * ���ְ�Ʋ����ʦ����Ϣ
	 * @param title ְ��
	 * @return �������ʦ����Ϣ
	 */
	public List<Designer> queryBytitle(String title) {
		// TODO Auto-generated method stub
		if(title.equals("")||title==null){
			return null;
		}
		return dao.queryBytitle(title);
	}
	/**
	 * 根据职位查询设计师的条数
	 * @param title 职位
	 * @return 返回总条数
	 */
	public int queryCount(String title) {
		// TODO Auto-generated method stub
		if(title.equals("")||title==null){
			return -1;
		}
		return dao.queryCount(title);
	}
	/**
	 * 分页查询所有设计师的信息
	 * @param page 当前页数 size 每页的数量
	 */
	public List<Designer> queryAll(int page, int size) {
		// TODO Auto-generated method stub
		if(page<=0||size<=0){
			return null;
		}
		return dao.queryAll(page, size);
	}

	public int queryCount1() {
		// TODO Auto-generated method stub
		return dao.queryCount1();
	}
	/**
	 * 根据id删除信息
	 */
	public boolean deletebyid(int id) {
		// TODO Auto-generated method stub
		if(id<=0){
			return false;
		}
		return dao.deletebyid(id);
	}
	/**
	 * 增加设计师信息
	 * @param 设计师的信息
	 * @return true 添加成功 false 添加失败
	 */
	public boolean adddesigner(Designer d) {
		// TODO Auto-generated method stub
		if(d.getDer_name().equals("")||d.getDer_name()==null||d.getDer_title().equals("")||d.getDer_title()==null||d==null){
			return false;	
		}
		return dao.adddesigner(d);
	}
	/**
	 * 根据id查询设计师的信息
	 * @param id 设计师的id
	 * @return 设计师的信息
	 */
	public Designer querybyid(int id) {
		// TODO Auto-generated method stub
		if(id<=0){
			return null;
		}
		return dao.querybyid(id);
	}
	/**
	 * 根据设计师的id修改信息
	 * @param 设计师的信息
	 * @return true 修改成功，false 修改失败
	 */
	public boolean updatebyid(Designer designer) {
		// TODO Auto-generated method stub
		if(designer==null){
			return false;
		}
		return dao.updatebyid(designer);
	}

}
