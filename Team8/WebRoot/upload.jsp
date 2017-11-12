<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
            <a href="admin.jsp" class="navbar-brand">${sessionScope.admin.admin_name }</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div id="bs-content-row-navbar-collapse-5" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
              <!-- <li class="disabled"><a href="#">Link</a></li> -->
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="adminlogin.jsp">选项 <b class="caret"></b></a>
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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>管理员上传</h3>
              </div>
              <div class="panel-body">
                
                <!-- 漫画上传
                                ================================================== -->
                <div class="content-row">
                  <a href="TypeServlet" class="btn btn-default" role="button"><span class="glyphicon glyphicon-plus"></span><span class="glyphicon-class">上传漫画</span></a> 
                  <a href="uploadmusic.jsp" class="btn btn-default" role="button"><span class="glyphicon glyphicon-plus"></span><span class="glyphicon-class">上传音乐</span></a> 
                  <a href="uploadvideo.jsp" class="btn btn-default" role="button"><span class="glyphicon glyphicon-plus"></span><span class="glyphicon-class">上传视频</span></a> 
                         
                        
                  
                  
                 
                  
                  
                </div>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
               
                 
              </div><!-- panel body -->
            </div>
        </div><!-- content -->
      </div>
    </div>
    <!--footer-->
    
  </body>
</html>

