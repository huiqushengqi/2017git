package com.etc.painter.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.etc.painter.biz.MTypeBiz;
import com.etc.painter.biz.MaterialBiz;
import com.etc.painter.entity.MType;
import com.etc.painter.entity.Material;

@Controller
public class MaterialController {

	@Resource(name="materialBizImpl")
	private MaterialBiz biz;
	@Resource
	private MTypeBiz biz1;
	
	public MTypeBiz getBiz1() {
		return biz1;
	}

	public void setBiz1(MTypeBiz biz1) {
		this.biz1 = biz1;
	}

	public MaterialBiz getBiz() {
		return biz;
	}

	public void setBiz(MaterialBiz biz) {
		this.biz = biz;
	}
	/**
	 * 查询材料的操作
	 * @param page
	 * @return  mav
	 */
	@RequestMapping(value="/querymat")
	public ModelAndView querymat(int page,String name){
		ModelAndView mav=new ModelAndView(); 
		List<Material> list=biz.queryall();		
		int size=2;
		int countnum=list.size();
		int countpage=countnum/size>0?(countnum%size>0?countnum/size+1:countnum/size):1;
		mav.addObject("countpage", countpage);
		mav.addObject("page", page);
		mav.addObject("list", list);
		mav.addObject("size", size);
		
		mav.setViewName(name);
		return mav;
	}
	/**
	 * 通过id查询材料
	 * @param sid
	 * @return
	 */
	@RequestMapping(value="/querybyId")
	public ModelAndView queryid(int sid){
		
		ModelAndView mav=new ModelAndView();
		Material mat=biz.querybyid(sid);
		mav.addObject("mat", mat);
		mav.setViewName("editmat");
		return mav;
	}
	
	/**
	 * 删除材料
	 * @param myid
	 * @param response
	 */
	@RequestMapping(value="/deleteAll")
	public void daletall(int myid,HttpServletResponse response){
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(biz.deletebyid(myid)){
			out.print("<script>alert('删除成功！！！');location.href='querymat.action?page=1&name=materialAdmin';</script>");
		}else{
			out.print("<script>alert('删除失败！！！');history.go(-1);</script>");
		}
		
	}
	@RequestMapping(value="/mydelete")
	public void delete1(HttpServletResponse response,HttpServletRequest request){
		
		String str1=request.getParameter("str1");	    
		int a;
		String[] magid=str1.split(",");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		     
		for (int i = 0; i < magid.length; i++) {
			System.out.println(magid[i]);
			int  mag_id=Integer.valueOf(magid[i]);
			if(mag_id!=0){
				if(biz.deletebyid(mag_id)){
					out.print("<script>alert('删除成功！！！');location.href='querymat.action?page=1&name=materialAdmin';</script>");
				}else{
					out.print("<script>alert('删除失败！！！');history.go(-1);</script>");
				}
			}else{
				out.print("<script>alert('删除成功！！！');location.href='querymat.action?page=1&name=materialAdmin';</script>");
			}
			
		}
		
	}

	/**
	 * 添加材料的操作
	 * @param mat_name
	 * @param mat_about
	 * @param mat_price
	 * @param mytype
	 * @param file
	 * @param response
	 * @param session
	 */
	@RequestMapping(value="/addall")
	public void addmat(String mat_name,String mat_about,double mat_price,String mytype,@RequestParam("mat_cover")MultipartFile file,HttpServletResponse response,HttpSession session){
		
		//获取要上传的文件夹的绝对路径,当前项目在服务器中的绝对路径
		String path=session.getServletContext().getRealPath("/images");
		//获取到保存指定位置的文件对象
		File file2=new File(path+"/"+file.getOriginalFilename());
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(),file2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MType mt=biz1.queryByname(mytype);
		Material mat=new Material();
		mat.setMat_name(mat_name);
		mat.setMat_about(mat_about);
		mat.setMat_price(mat_price);
		mat.setMat_cover("images/"+file.getOriginalFilename());
		mat.setMat_type(mt);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(biz.addAll(mat)){
			out.print("<script>alert('添加成功！！！');location.href='querymat.action?page=1&name=materialAdmin';</script>");
		}else{
			out.print("<script>alert('添加失败！！！');history.go(-1);</script>");
		}
		
	}
	/**
	 * 修改材料信息的操作
	 * @param myid
	 * @param mat_name
	 * @param mat_about
	 * @param mat_price
	 * @param mytype
	 * @param file
	 * @param response
	 * @param session
	 */
	@RequestMapping(value="/editall")
	public void editmat(int myid,String mat_name,String mat_about,String oldcover,double mat_price,String mytype,@RequestParam("mat_cover")MultipartFile file,HttpServletResponse response,HttpSession session){
		
		//获取要上传的文件夹的绝对路径,当前项目在服务器中的绝对路径
		String path=session.getServletContext().getRealPath("/images");
		//获取到保存指定位置的文件对象
		File file2=new File(path+"/"+file.getOriginalFilename());
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(),file2);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=null;
		try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		MType mt=biz1.queryByname(mytype);
		Material mat=new Material();
		mat.setMat_name(mat_name);
		mat.setMat_about(mat_about);
		mat.setMat_price(mat_price);
		mat.setMat_id(myid);
		if(file.getOriginalFilename()==null ){
			mat.setMat_cover(oldcover);
		}else{
		    mat.setMat_cover("/images"+file.getOriginalFilename());
		}
		mat.setMat_type(mt);
		
		if(biz.editbyid(mat)){
			Date date=new Date();
			DateFormat dat2=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
			String time=dat2.format(date);
			out.print("<script>alert('修改成功！！！');location.href='querymat.action?page=1&name=materialAdmin';</script>");
		}else{
			out.print("<script>alert('修改失败！！！');history.go(-1);</script>");
		}
		
	}
}
