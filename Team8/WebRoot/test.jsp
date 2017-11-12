<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/lib/jquery-1.11.1.min.js"></script>
	
	<script type="text/javascript">
	
	
	function aaa(){
	alert("dddd");
	
	}
	
	</script>
	
  </head>

  <body>
  	<form action="VideoServlet?flag=enterVideo&" method="post">
  	<input type="text" name="video_id"><br>
  	<input type="submit"><br>
  	</form>
  	
  	<form action="MusicServlet?flag=enterMusic&" method="post">
  	<input type="text" name="music_id"><br>
  	<input type="submit"><br>
  	</form>
  	
  	<br>
  	<pt:page pageIndex="1" url="VideoServlet?flag=queryCommentPage&video_id=1&" pageMax="5"/>
  	
  	<a href="javascript:void()" class="sdfsdf">sdfsdf</a>
  	<script type="text/javascript">
  	
  	$(".sdfsdf").attr("href","javascript:aaa()");
  	
  	</script>
  	
    This is my JSP page. <br>
  </body>
</html>
