<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <title>『三个粉刷匠』后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common1.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
    <link rel="stylesheet" href="css/clndr.css" type="text/css" />
   <script src="js/jquery.min.js"></script>
   <link href="css/style.css" rel='stylesheet' type='text/css' />
        <link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/boot.css" rel='stylesheet' type='text/css' />
</head>
  
  <body>
    <div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="Admin.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="Admin.jsp">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</div>
    <div class="sidebar-wrap" style="float: left;
    width: 189px;
    min-height: 700px;
    background: #f2f2f2;
    border-right: 1px solid #ccc;
    /* cursor: e-resize; */">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="exp.action"><i class="icon-font">&#xe006;</i>案例管理</a></li>
                        <li><a href="querydesigner.action?page=1"><i class="icon-font">&#xe005;</i>设计师管理</a></li>

                        <li><a href="querymat.action?page=1&name=materialAdmin"><i class="icon-font">&#xe006;</i>饰材管理</a></li>

                        <li><a href="essay_nocheck.action"><i class="icon-font">&#xe004;</i>帖子管理</a></li>
                        <li><a href="design.jsp"><i class="icon-font">&#xe012;</i>评论管理</a></li>
                        <li><a href="manager1.action?page=1"><i class="icon-font">&#xe052;</i>人事管理</a></li>
                        <li><a href="design.jsp"><i class="icon-font">&#xe033;</i>广告管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe045;</i>数据还原</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
  </body>
</html>
