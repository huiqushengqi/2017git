<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>控制台页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/dashboard.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/plugins/excanvas.min.js"></script><![endif]-->
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
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.jsp"><span>9</span></a>
        	</div>-->
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
        	<li class="current"><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>首页</a></li>
            <li><a href="manageblog.jsp"><span class="icon icon-pencil"></span>帖子管理</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>消息中心</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>客户建议</a></li>
        </ul>
        
      
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">帖子管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="forms.jsp">二手交易</a></li>
                    <li><a href="forms.jsp">失物招领</a></li>
                    <li><a href="forms.jsp">表白墙</a></li>
                    <li><a href="forms.jsp">校园新鲜事</a></li>
                   
                </ul>
            </li>
            <!--<li><a href="filemanager.jsp" class="gallery">文件管理</a></li>-->
            <li><a href="manageblog.jsp" class="elements">用户</a></li>
            <li><a href="forms.jsp" class="widgets">用户建议</a></li>
           
         
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="notibar announcement">
                        <a class="close"></a>
                        <h3>天气预报</h3>
                        <p>
                       <iframe allowtransparency="true" frameborder="0" width="875" height="98" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=0&d=5&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=875&h=98&align=center"></iframe>
                        
                        </p>
                    </div><!-- notification announcement -->
                    
        
        <div id="contentwrapper" class="contentwrapper">
        
        	<div id="updates" class="subcontent">
                   
                    <div class="two_third dashboard_left">
                    
                    	<ul class="shortcuts">
                        	<li><a href="" class="users"><span>二手交易</span></a></li>
                            <li><a href="" class="users"><span>失物招领</span></a></li>
                            <li><a href="" class="users"><span>表白墙</span></a></li>
                            <li><a href="" class="events"><span>校园新鲜事</span></a></li>
                            <li><a href="" class="analytics"><span>分析</span></a></li>
                        </ul>
                        
                        <br clear="all" />
                    
                        <div class="contenttitle2 nomargintop">
                            <h3>Visit Overview</h3>
                        </div><!--contenttitle-->
                        
                        <div class="overviewhead">
                        	<div class="overviewselect">
                                <select id="overviewselect" name="select">
                                    <option value="">Last 1 hour ago</option>
                                    <option value="">Last 5 hours ago</option>
                                    <option value="">Today</option>
                                    <option value="">Yesterday</option>
                                    <option value="">This Week</option>
                                    <option value="">Last Week</option>
                                    <option value="">This Month</option>
                                    <option value="">Last Month</option>
                                </select>
                            </div><!--floatright-->
                        	From: &nbsp;<input type="text" id="datepickfrom" /> &nbsp; &nbsp; To: &nbsp;<input type="text" id="datepickto" />
                        </div><!--overviewhead-->
                        
                        <br clear="all" />
                        
                        <table cellpadding="0" cellspacing="0" border="0" class="stdtable overviewtable">
                           
                           
                           
                        </table>
                        
                        <br clear="all" />
                      
                        
                        <br clear="all" />
                        
                       
                       
                       
                       
                       
                        
                        <br />
                       
                        <div class="widgetbox">
                        	<div class="title"><h3>Latest Articles</h3></div>
                            <div class="widgetcontent">
                                <div id="scroll1" class="mousescroll">
                                        <ul class="entrylist">
                                              <li>
                                                <div class="entry_wrap">
                                                    <div class="entry_img"><img src="images/thumbs/image1.png" alt="" /></div>
                                                    <div class="entry_content">
                                                        <h4><a href="">Why Won't My Cat Eat?</a></h4>
                                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                    </div>
                                                </div>
                                              </li>
                                             
                                             
                                            </ul>                        
                                </div><!--#scroll1-->
                            </div><!--widgetcontent-->
                        </div><!-- widgetbox -->                            
                        
                        
                    </div><!--two_third dashboard_left -->
                    
                    <div class="one_third last dashboard_right">
                    
                        <div class="contenttitle2 nomargintop">
                            <h3>Top Rated Sites</h3>
                        </div><!--contenttitle-->
                    
                    
                    	<ul class="toplist">
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">loremipsum.com</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">8.1</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">dolorsitamet.net</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.8</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">consectetur.org</a></span>
                                        	<span class="desc">Social Network</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.5</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        </ul>
                        
						<div class="widgetbox">
                            <div class="title"><h3>Newly Registered User</h3></div>
                            <div class="widgetoptions">
                                <div class="right"><a href="">View All Users</a></div>
                                <a href="">Add User</a>
                            </div>
                            <div class="widgetcontent userlistwidget nopadding">
                                <ul>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar1.png" /></div>
                                        <div class="info">
                                            <a href="">Squint</a> <br />
                                            Front-End Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar2.png" /></div>
                                        <div class="info">
                                            <a href="">Eunice</a> <br />
                                            Architectural Designer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar1.png" /></div>
                                        <div class="info">
                                            <a href="">Captain Gutt</a> <br />
                                            Software Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img alt="" src="images/thumbs/avatar2.png" /></div>
                                        <div class="info">
                                            <a href="">Flynn</a> <br />
                                            Accounting Manager <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                </ul>
                                <a class="more" href="">View More Users</a>
                            </div><!--widgetcontent-->
                        </div>
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Latest News</h3></div>
                            <div class="widgetcontent">
                                <div id="accordion" class="accordion">
                                    <h3><a href="#">Section 1</a></h3>
                                    <div>
                                        <p>
                                        Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                                        ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                                        amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                                        odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 2</a></h3>
                                    <div>
                                        <p>
                                        Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                                        purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                                        velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                                        suscipit faucibus urna.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 3</a></h3>
                                    <div>
                                        <p>
                                        Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                                        Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                                        ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                                        lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                                        </p>
                                        <ul class="margin1020">
                                            <li>List item one</li>
                                            <li>List item two</li>
                                            <li>List item three</li>
                                        </ul>
                                    </div>
                                    <h3><a href="#">Section 4</a></h3>
                                    <div>
                                        <p>
                                        Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                                        et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                                        faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                                        mauris vel est.
                                        </p>
                                        <p>
                                        Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                                        inceptos himenaeos.
                                        </p>
                                    </div>
                                </div>     
                              </div> <!--widgetcontent-->
                         </div><!--widgetbox-->                        
                                            
                    </div><!--one_third last-->
                    
                    
            </div><!-- #updates -->
            
            <div id="activities" class="subcontent" style="display: none;">
            	&nbsp;
            </div><!-- #activities -->
        
        </div><!--contentwrapper-->
        
        <br clear="all" />
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>
