package com.etc.painter.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.etc.painter.biz.UserBiz;
import com.etc.painter.entity.User;
import com.google.gson.Gson;

@Controller
public class UserController {
@Resource
private UserBiz ubiz;

public UserBiz getUbiz() {
	return ubiz;
}

public void setUbiz(UserBiz ubiz) {
	this.ubiz = ubiz;
}

/**
 * 添加用户的方法
 *@author lxy
 * @param 用户对象
 * 
 */
@RequestMapping(value="adduser")
public void adduser(HttpSession session,HttpServletRequest request,HttpServletResponse response){
	PrintWriter out=null;
    response.setContentType("text/html;charset=utf-8");
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	String name=request.getParameter("name");
	String pwd=request.getParameter("pwd");
	String phone=request.getParameter("mobile");
	String[] img={"1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"};
	int index = (int)(Math.random()*10);
	String myimg=img[index];
	User use=new User();
	use.setUser_name(name);
	use.setUser_pwd(pwd);
	use.setUser_tel(phone);
	use.setUser_img(myimg);
	int i=ubiz.adduser(use);
	if(i>0){
		session.setAttribute("user", use);
		out.print("<script>alert('注册成功！');location.href='querynum1.action'</script>");		
	}
	out.flush();
	out.close();
}

/**
 * 根据电话号码查询用户的方法
 *@author lxy
 * @param 电话号码
 * 
 */

@RequestMapping(value="querynum")
@ResponseBody
public void querybynum(String mobile,HttpSession session,HttpServletRequest request,HttpServletResponse response){
	PrintWriter out=null;
	
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	mobile=request.getParameter("mobile");
    //User use=new User();
    User use=ubiz.querybynum(mobile);
	if(use!=null){
			Gson gson=new Gson();
			String myuse=gson.toJson(use);		
			out.print(myuse);     
	}else{
		Gson gson1=new Gson();
		String myuse1=gson1.toJson(use);		
		out.print(myuse1); 
	}
	out.flush();
	out.close();
}

@RequestMapping(value="querynum1")
public void querybynum1(HttpSession session,HttpServletRequest request,HttpServletResponse response){
	PrintWriter out=null;
	User use=null;
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	use=(User) session.getAttribute("user");
    String num=use.getUser_tel();
    User myuser=new User();
	myuser=ubiz.querybynum1(num);
	if(use!=null){
		session.setAttribute("user",myuser );
		out.print("<script>location.href='index.jsp'</script>");		
	}
	out.flush();
	out.close();
}
/**
 * 根据id查询用户的方法
 *@author lxy
 * @param 用户名
 * 
 */
@RequestMapping(value="queryuserbyid")
public User querybyid(HttpSession session){
	User myuser=null;
	User use=(User) session.getAttribute("user");
	int id=use.getUser_id();
	myuser=ubiz.querybyid(id);
	if(myuser!=null){
		session.setAttribute("user", myuser);
		return myuser;
	}
	return null;
	
}
/**
 * 根据id修改用户的方法
 *@author lxy
 * 
 */
@RequestMapping(value="changeuser",method=RequestMethod.POST)
public void changeuser(@RequestParam("upfile") MultipartFile file,HttpServletRequest request,HttpSession session,HttpServletResponse response){
	response.setContentType("text/html;charset=utf-8");	
	PrintWriter out=null;
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	User use=(User) session.getAttribute("user");
	String uname=null;
	String uimg=null;
	String upwd=null;
	String usex=null;
	String uaddr=null;
	String uemail=null;
	int uid=use.getUser_id();
	
	String utel=use.getUser_tel();
	String ucollect=use.getUser_collect();
	int upost=use.getUser_post();
	

	
	String filepath=session.getServletContext().getRealPath("/image");
	File file2=new File(filepath+"/"+file.getOriginalFilename());
	try {
		FileUtils.copyInputStreamToFile(file.getInputStream(), file2);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	String newname=request.getParameter("newname");
	if(newname.equals("")){
		uname=use.getUser_name();		
	}else if(newname!=null){
		uname=newname;
	}
	
	String newimg=file.getOriginalFilename();
	uimg=use.getUser_img();
    if(uimg==newimg){
		uimg=newimg;		
	}else if(uimg!=newimg){
		if(newimg.equals("")){
			uimg=use.getUser_img();		
		}else{
			uimg=newimg;
		}
		
	}
	String newsex=request.getParameter("gender");
	if(newsex.equals("unknow")){
		usex="";
	}else if(newsex.equals("female")){
		usex="女";
	}else if(newsex.equals("male")){
		usex="男";
	}else if(usex==null){
		usex="";	
	}
	String newaddr=request.getParameter("village");
	uaddr=use.getUser_addr();
	if(uaddr==null&&newaddr==null){
		uaddr="";
	}else if(newaddr!=null){
		uaddr=newaddr;
	}
	String newemail=request.getParameter("email");
	uemail=use.getUser_email();
	if(uemail==null&&newemail.equals("")){
		uemail="";
	}else if(newemail!=null){
		uemail=newemail;
	}
	if(ucollect==null){
		ucollect="";	
	}
	String newpwd=request.getParameter("mypwd");
	if(newpwd.equals("")){
		upwd=use.getUser_pwd();	
	}else{
		upwd=newpwd;
	}
	User thisuser=new User();
	thisuser.setUser_addr(uaddr);
	thisuser.setUser_collect(ucollect);
	thisuser.setUser_email(uemail);
	thisuser.setUser_img(uimg);
	thisuser.setUser_post(upost);
	thisuser.setUser_tel(utel);
	thisuser.setUser_sex(usex);
	thisuser.setUser_name(uname);
	thisuser.setUser_pwd(upwd);
	thisuser.setUser_id(uid);
	int i=ubiz.changeuser(thisuser);
	if(i>0){
		session.setAttribute("user", thisuser);
		out.print("<script>alert('修改成功！');location.href='usercenter.jsp';</script>");		
	}
	out.flush();
	out.close();
}
/**
 * 根据用户名查询用户的方法
 *@author lxy
 * @param 用户名
 * 
 */

@RequestMapping(value="queryname")
@ResponseBody
public void querybyname(String name,HttpServletRequest request,HttpServletResponse response){
	PrintWriter out=null;
	String mes=null;
	try {
		out=response.getWriter();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    name=request.getParameter("myname");
	User use=ubiz.querybyname(name);
	if(use!=null){
		    mes="exist";
			Gson gson=new Gson();
			String mymes=gson.toJson(mes);		
			out.print(mymes);     
	}else{
		Gson gson1=new Gson();
		String mymes1=gson1.toJson(mes);		
		out.print(mymes1); 
	}
	out.flush();
	out.close();
	
}
/**
 * 发送验证码
 * @author lxy
 * @param mobil 手机号码
 *
 */
@RequestMapping(value="sendcode")
@ResponseBody
public void sendSms(String mobile, HttpSession session,HttpServletResponse response){
	    PrintWriter out=null; 
	    int code=0;	    
	    response.setContentType("text/html;charset=utf-8");
	    try {
			out=response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
            //设置超时时间-可自行调整
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
            //初始化ascClient需要的几个参数
            final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
            final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
            //替换成你的AK
            final String accessKeyId = "LTAINoHQsgnodxCu";//你的accessKeyId,参考本文档步骤2
            final String accessKeySecret = "TkFtCsnmjXo79GlI4elIYR7CxsfQjp";//你的accessKeySecret，参考本文档步骤2
            //初始化ascClient,暂时不支持多region
            IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId,
                    accessKeySecret);
        try {
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        } catch (ClientException e) {
            e.printStackTrace();
        }

        code = (int)(Math.random()*900000+100000);
        IAcsClient acsClient = new DefaultAcsClient(profile);
            //组装请求对象
            SendSmsRequest request = new SendSmsRequest();
            //使用post提交
         request.setMethod(MethodType.POST);
            //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
         request.setPhoneNumbers(mobile);
            //必填:短信签名-可在短信控制台中找到
         request.setSignName("三个粉刷匠");
            //必填:短信模板-可在短信控制台中找到
         request.setTemplateCode("SMS_109565208");
            //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
            //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
         request.setTemplateParam("{\"code\":\""+code+"\"}");
            //可选-上行短信扩展码(无特殊需求用户请忽略此字段)
            //request.setSmsUpExtendCode("90997");
            //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
         request.setOutId("yourOutId");
            //请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = null;
        try {
            sendSmsResponse = acsClient.getAcsResponse(request);
        } catch (ClientException e) {
            e.printStackTrace();
        }
        if(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
        	 //String cod = String.valueOf(code);
        	out.print(code);
             //if(cod!=null){		
     			//out.print(code);
     		//}	
            
            }
        out.flush();
        out.close();
    }



}
