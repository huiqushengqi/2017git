package com.oneMind.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.oneMind.biz.PostBiz;
import com.oneMind.entity.Post;

@Controller
public class PostController {
	@Resource
	private PostBiz biz;

	public PostBiz getBiz() {
		return biz;
	}

	public void setBiz(PostBiz biz) {
		this.biz = biz;
	}
	
	public String querryWall(String typename,String page, int size1,HttpServletRequest request,HttpServletResponse response) {
		//每页显示条数
		int size=10;
		//获取帖子总条数
		int count=biz.countWall("表白墙");
		//获取总页数
		int pagecount=count%size==0?(count%size):(count%size+1);
		int thispage=0;
		
		if(page==null){
			//说明是第一次进入该处理页，那么默认取第一页的数据
			thispage=1;
		}else{
			thispage=Integer.valueOf(page);
		}

		//容错判断
		thispage=(thispage<=0?1:thispage);  //下限容错
		thispage=(thispage>pagecount?pagecount:thispage);//上限容错

		int lastpage=thispage-1;
		lastpage=lastpage<=0?1:lastpage;  //上一页容错

		int nextpage=thispage+1;
		nextpage=nextpage>pagecount?pagecount:nextpage; //下一页容错
		List<Post> list=biz.querryWall("表白墙", thispage, size);
		request.setAttribute("list", list);
		request.setAttribute("thispage",thispage );
		request.setAttribute("pagecount", pagecount);
		return "Admin/form";
		
	}
	

}
