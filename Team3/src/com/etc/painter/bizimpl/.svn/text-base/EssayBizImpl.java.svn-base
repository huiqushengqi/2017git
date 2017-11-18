package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.EssayBiz;
import com.etc.painter.dao.EssayDao;
import com.etc.painter.entity.Essay;
@Service
public class EssayBizImpl implements EssayBiz{
	@Resource
private EssayDao dao;
	public List<Essay> queryAllEssay() {
		// TODO Auto-generated method stub
		return dao.queryAllEssay();
	}
	public Essay queryEssayById(int essay_id) {
		// TODO Auto-generated method stub
		return dao.queryEssayById(essay_id);
	}
	public Boolean insertEssay(Essay essay) {
		// TODO Auto-generated method stub
		return dao.insertEssay(essay);
	}
	public List<Essay> queryEssayByUserId(int user_id) {
		// TODO Auto-generated method stub
		return dao.queryEssayByUserId(user_id);
	}
	public List<Essay> queryEssayByKey(String key) {
		// TODO Auto-generated method stub
		return dao.queryEssayByKey(key);
	}
	public int essayNums() {
		// TODO Auto-generated method stub
		return dao.essayNums();
	}
	public List<Essay> queryEssayByPage(int page, int size) {
		// TODO Auto-generated method stub
		return dao.queryEssayByPage(page, size);
	}
	public boolean EssayNoPass(int essay_id) {
		// TODO Auto-generated method stub
		return dao.EssayNoPass(essay_id);
	}
	public boolean EssayPass(int essay_id) {
		// TODO Auto-generated method stub
		return dao.EssayPass(essay_id);
	}
	public List<Essay> queryEssayNoCheck() {
		// TODO Auto-generated method stub
		return dao.queryEssayNoCheck();
	}
	public List<Essay> queryEssayByTime() {
		// TODO Auto-generated method stub
		return dao.queryEssayByTime();
	}


}
