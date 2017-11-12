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
                             管理员：<a href="admin.jsp" class="navbar-brand">${sessionScope.admin.admin_name}</a>
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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a> 管理员</h3>
              </div>
              <div class="panel-body">
                 
                <!-- Jumbotron
                                ================================================== -->
                <div class="content-row">
                  <h2 class="content-row-title">欢迎你，管理员</h2>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="jumbotron">
                        <div class="jumbotron-photo">
                          <img src="dist/img/Jumbotron.jpg" />
                        </div>
                        <div class="jumbotron-contents">
                        	
                       <!--  <p><a href="#" class="btn btn-default" role="button">增加</a>  <a href="#" class="btn btn-warning" role="button">删除</a>
                          </p> 
                           --> 
                        </div>
                      </div>
                    </div>
                    
                <div class="content-row">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="calendar">
                        <div class="years clearfix">
                          <div class="unit prev"><em></em></div>
                          <div class="monyear">SEP 2017</div>
                          <div class="unit next"><em></em></div>
                        </div>
                        <div class="days">
                          <div class="clearfix">
                            <div class="unit">SU</div>
                            <div class="unit">MO</div>
                            <div class="unit">TU</div>
                            <div class="unit">WE</div>
                            <div class="unit">TH</div>
                            <div class="unit">FR</div>
                            <div class="unit">SA</div>
                          </div>
                          <div class="clearfix">
                            <div class="unit older"><b>28</b></div>
                            <div class="unit older"><b>29</b></div>
                            <div class="unit older"><b>30</b></div>
                            <div class="unit older"><b>31</b></div>
                            <div class="unit"><b>1</b></div>
                            <div class="unit"><b>2</b></div>
                            <div class="unit"><b>3</b></div>
                            <div class="unit"><b>4</b></div>
                            <div class="unit"><b>5</b></div>
                            <div class="unit"><b>6</b></div>
                            <div class="unit"><b>7</b></div>
                            <div class="unit"><b>8</b></div>
                            <div class="unit"><b>9</b></div>
                            <div class="unit"><b>10</b></div>
                            <div class="unit"><b>11</b></div>
                            <div class="unit"><b>12</b></div>
                            <div class="unit"><b>13</b></div>
                            <div class="unit"><b>14</b></div>
                            <div class="unit"><b>15</b></div>
                            <div class="unit"><b>16</b></div>
                            <div class="unit"><b>17</b></div>
                            <div class="unit"><b>18</b></div>
                            <div class="unit"><b>19</b></div>
                            <div class="unit"><b>20</b></div>
                            <div class="unit"><b>21</b></div>
                            <div class="unit"><b>22</b></div>
                            <div class="unit"><b>23</b></div>
                            <div class="unit"><b>24</b></div>
                            <div class="unit"><b>25</b></div>
                            <div class="unit"><b>26</b></div>
                            <div class="unit"><b>27</b></div>
                            <div class="unit"><b>28</b></div>
                            <div class="unit active"><b>29</b></div>
                            <div class="unit"><b>30</b></div>
                            <div class="unit"><b>31</b></div>
                            <div class="unit older"><b>1</b></div>
                            <div class="unit older"><b>2</b></div>
                            <div class="unit older"><b>3</b></div>
                            <div class="unit older"><b>4</b></div>
                            <div class="unit older"><b>5</b></div>
                            <div class="unit older"><b>6</b></div>
                            <div class="unit older"><b>7</b></div>
                            <div class="unit older"><b>8</b></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
                <br><br><br><br><br><br><br><br><br><br><br><br>
             
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

