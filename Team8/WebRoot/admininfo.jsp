<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admininfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <ul class="list-group panel">
                <li class="list-group-item"><i class="glyphicon glyphicon-align-justify"></i> <b>SIDE PANEL</b></li>
                <li class="list-group-item"><a href="admin.jsp"><i class="glyphicon glyphicon-user"></i>管理员 </a></li>
                <li class="list-group-item"><a href="ComicServlet?flag=queryAllComic"><i class="glyphicon glyphicon-picture"></i>图片 </a></li>
                <li class="list-group-item"><a href="MusicServlet?flag=queryAllMusic"><i class="glyphicon glyphicon-music"></i>音乐</a></li>
                <li class="list-group-item"><a href="VideoServlet?flag=queryAllVideo"><i class="glyphicon glyphicon-film"></i>视频</a></li>
                <li class="list-group-item"><a href="upload.jsp"><i class="glyphicon glyphicon-arrow-up"></i>我要上传</a></li>
               <!--   <li class="list-group-item"><a href="comment.jsp"><i class="glyphicon glyphicon-comment"></i>评论管理</a></li>-->
                <li class="list-group-item"><a href="login.jsp" ><i class="glyphicon glyphicon-lock"></i>Login</a></li>
                
              </ul>
   </body>
</html>
