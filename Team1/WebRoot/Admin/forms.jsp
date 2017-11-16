<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/MyPage.tld" prefix="pt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>博客管理页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/blog.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->

</head>
<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
           <h1 class="logo">Ama.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="notifications.jsp"><span>9</span></a>
        	</div>
			-->
        	<div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>${sessionScope.manager.manager_name}</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    
                </div><!--avatar-->
                <div class="userdata">
                	<h4>${sessionScope.manager.manager_name}</h4>
                    <span class="email"></span>
                    <ul>
                    	
                        <li><a href="index.jsp">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>首页</a></li>
            <li class="current"><a href="manageblog.jsp"><span class="icon icon-pencil"></span>帖子管理</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>消息中心</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>用户建议</a></li>
        </ul>
        
        <div class="headerwidget">
        	
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav">
    	<ul>
        	<li class="current"><a href="manageblog.jsp" class="editor">帖子</a></li>
            <li><a href="newpost.jsp">帖子评论</a></li>
            <li><a href="">评论删除</a></li>
            
        </ul>
        <a class="togglemenu"></a>
    </div><!--leftmenu-->
    
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">表白墙帖子管理</h1>
            <span class="pagedesc">以下内容都为匿名表白墙帖子</span>
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="allposts.jsp">蓑鲉帖子 (5)</a></li>
                <li><a href="published.jsp">已发布 (5)</a></li>
                <li><a href="draft.jsp">草稿 (3)</a></li>
                <li><a href="trash.jsp">垃圾 (1)</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
             <table border="1" width="800" >
             <tr>
             <td>帖子标题</td>
             <td>审核状态</td>
             <td>删除</td>
             <td>编辑</td>
             
             </tr>
             
            
            
             <c:forEach items="${requestScope.list}" var="post">
             <tr>
             <td>${post.post_title}</td>
             <td>${post.post_state}</td>
             <td><a>删除</a></td>
             <td><a>编辑</a></td>
             
             </tr>
             </c:forEach>
             
            </table> 
              
              <pt:page pageIndex="${requestScope.thispage}" url="PostController.java?" pageMax="${requestScope.pagecount}"/>
              
        </div><!--contentwrapper-->
    
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>
