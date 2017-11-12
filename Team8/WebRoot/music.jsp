<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>管理员页面</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="img/favicon_16.ico"/>
    <link rel="bookmark" href="img/favicon_16.ico"/>
    <!-- site css -->
    <link rel="stylesheet" href="dist/css/site.min.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="dist/js/site.min.js"></script>
    <script>
    //删除音乐的方法
    function deleletemusic(op){
        
    	if(confirm("你确定要删除我么?")){
			location.href="MusicServlet?flag=deleteMusicById&mid="+op;
		}
     }

    //编辑音乐的方法
    function editmusic(op){
		
		location.href="MusicServlet?flag=editMusic&musicid="+op;

     }
    
    
    </script>
    
  </head>
  <body>
    <!--nav-->
    <nav role="navigation" class="navbar navbar-custom">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button data-target="#bs-content-row-navbar-collapse-5" data-toggle="collapse" class="navbar-toggle" type="button">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="admin.jsp" class="navbar-brand">${sessionScope.admin.admin_name}</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div id="bs-content-row-navbar-collapse-5" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              
              <!-- <li class="disabled"><a href="#">Link</a></li> -->
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">选项 <b class="caret"></b></a>
                <ul role="menu" class="dropdown-menu">
                  <li class="disabled"><a href="adminlogin.jsp">退出</a></li>
                </ul>
              </li>
            </ul>

          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
    <!--header-->
    <div class="container-fluid">
    <!--documents-->
        <div class="row row-offcanvas row-offcanvas-left">
          
           
           <div class="col-xs-6 col-sm-3 sidebar-offcanvas" role="navigation">
            <jsp:include page="admininfo.jsp"></jsp:include>
          </div>
          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>音乐管理</h3>
              </div>
              <div class="panel-body">
                
                <!-- Thumbnails
                                ================================================== -->
                <div class="content-row">
                  <h2 class="content-row-title">全部音乐-</h2>
                  <div class="row">
                  
                    <c:forEach items="${requestScope.musiclist}" var="music">
                    <div class="col-sm-6 col-md-3">
                      <div class="thumbnail">
                        <img class="img-rounded" src="music${music.music_cover}" style="width:220px;height:165px;">
                        <div class="caption text-center">
                          <h3>音乐歌名:${music.music_title}</h3>
                          <p>音乐类型:
                           ${music.music_type }
                          </p>
                          <p>歌手:${music.music_singer}</p>
                          <p><a href="CommentServlet?flag=music&musicid=${ music.music_id}" class="btn btn-default" role="button">评论详情</a> <a href="MusicServlet?flag=editMusic&musicid=${music.music_id}" class="btn btn-default" role="button" onclick="editmusic(${music.music_id})" >编辑</a>  <a href="MusicServlet?flag=deleteMusicById&mid=${music.music_id }" class="btn btn-warning" role="button" onclick="deleletemusic(${music.music_id})">删除</a>
                          </p>
                        </div>
                      </div>
                    </div>
                    	
                    </c:forEach>
                  </div>
                </div>
              </div><!-- panel body -->
            </div>
        </div><!-- content -->
      </div>
    </div>
    <!--footer-->
    
  </body>
</html>

