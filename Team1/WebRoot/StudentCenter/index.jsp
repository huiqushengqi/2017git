<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edmin</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i></a><a class="brand" href="index.jsp">校园社区-StudentCenter </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li><a href="#">搜索人或者帖子……</a></li>
                        </ul>
                        <form class="navbar-search pull-left input-append" action="#">
                        <input type="text" class="span3">
                        <button class="btn" type="button">
                            <i class="icon-search"></i>
                        </button>
                        </form>
                        <ul class="nav pull-right">
                            
                            <li><a href="#">${sessionScope.student.student_name}</a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="../${sessionScope.student.student_head}" class="nav-avatar" />
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="divider"></li>
                                    <li><a href="#">退出登陆</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.nav-collapse -->
                </div>
            </div>
            <!-- /navbar-inner -->
        </div>
        <!-- /navbar -->
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="index.jsp"><i class="menu-icon icon-dashboard"></i>个人资料
                                </a></li>
                                <li><a href="change.jsp"><i class="menu-icon icon-tasks"></i>修改资料 </a>
                                </li>
                            </ul>
                            <!--/.widget-nav-->
                            
                            
                            <ul class="widget widget-menu unstyled">
                                <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i class="menu-icon icon-book">
                                </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                                </i>发布的帖子</a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li><a href="fresh.jsp"><i class="icon-inbox"></i>校园新鲜事</a></li>
                                        <li><a href="second-hand.jsp"><i class="icon-inbox"></i>二手交易</a></li>
                                        <li><a href="lost.jsp"><i class="icon-inbox"></i>失物招领</a></li>
                                        <li><a href="express.jsp"><i class="icon-inbox"></i>表白墙</a></li>
                                    </ul>
                                </li>
                                <li><a href="message.jsp"><i class="menu-icon icon-bullhorn"></i>消息管理 </a></li>
                                <li><a href="collection.jsp"><i class="menu-icon icon-paste"></i>收藏 </a></li>
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a href="#"><i class="menu-icon icon-signout"></i>退出 </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->
                    <div class="span9">
                        <div class="content">
                        <div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="../${sessionScope.student.student_head}">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													${sessionScope.student.student_name} 
													<small>学号: ${sessionScope.student.student_number}</small>
												</h5>
												<div class="stream-text">
													性别:   ${sessionScope.student.student_sex}<br>
													生日:   ${sessionScope.student.student_birthday}
                                                </div>
											</div><!--/.stream-headline-->
										</div>
									</div>
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="#" class="btn-box big span4"><i class=" icon-random"></i><b>${sessionScope.student.student_hot}</b>
                                        <p class="text-muted">
                                           	 热度</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-arrow-up"></i><b>15</b>
                                        <p class="text-muted">
                                           	 发帖数</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-gift"></i><b>5</b>
                                        <p class="text-muted">
                                  			 收藏数</p>
                                    </a>
                                </div>
                                <div class="btn-box-row row-fluid">
                                
                                </div>
                            </div>
                            <!--/#btn-controls-->
                           
                            <div class="module hide">
                                <div class="module-head">
                                    <h3>
                                        Adjust Budget Range</h3>
                                </div>
                                <div class="module-body">
                                    <div class="form-inline clearfix">
                                        <a href="#" class="btn pull-right">Update</a>
                                        <label for="amount">
                                            Price range:</label>
                                        &nbsp;
                                        <input type="text" id="amount" class="input-" />
                                    </div>
                                    <hr />
                                    <div class="slider-range">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--/.content-->
                    </div>
                    <!--/.span9-->
                </div>
            </div>
            <!--/.container-->
        </div>
        <!--/.wrapper-->
        <div class="footer">
            <div class="container">
                <b class="copyright">&copy; 2014 Edmin - EGrappler </b>All rights reserved. - Collect from <a href="http://www.17sucai.com/" title="网页模板" target="_blank">网页模板</a>
            </div>
        </div>
        <script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
        <script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="scripts/common.js" type="text/javascript"></script>
      
    </body>
