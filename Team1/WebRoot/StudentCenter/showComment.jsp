<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Edmin</title>
     <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
     <link type="text/css" href="css/theme.css" rel="stylesheet">
     <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
     <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
         rel='stylesheet'>
     <script type="text/javascript" href="scripts/jquery-ui-1.10.1.custom.min.js"></script>
     <script type="text/javascript" href="scripts/jquery-1.9.1.min.js"></script>
  </head>
  
  <body>
    <table class="table">
		  <thead>
			  <th>日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			  <th>名字&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			  <th>内容&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			  <th>操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
		  </thead>
		  
	</table>
	<c:forEach items="${requestScope.list}" var="item">
	<tr>
	<th>
	${item.getComment_date()}&nbsp;&nbsp;&nbsp;&nbsp;
	</th>
	<th>
	${item.getComment_student().getStudent_name()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</th>
	<th>
	${item.getComment_content()}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</th>
	<th>
	<a href='StudentCenter/delCommentById.action?comment_id=${item.getComment_id()}'>删除</a>
	</th>
	</tr></br>
	</c:forEach>

  </body>
</html>
