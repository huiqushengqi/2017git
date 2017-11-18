<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'qqOnline.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/global.css"/>
<link rel="stylesheet" type="text/css" href="css/sidebar.css"/>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.fixed.1.3.js"></script>
<script language="javascript" src="js/custom.js"></script>
  </head>
  
  <body>
    <!--  ================================== 分割线 ====================================  -->

<!-- S 客服 -->
<div class="scrollsidebar" id="scrollsidebar2">
    <div class="side_content">
        <div class="side_list">
            <div class="side_title"><a title="隐藏" class="close_btn"><span>关闭</span></a></div>
            <div class="side_center">            	
                <div class="qqserver">
                    <p>
                        <a title="点击这里给我发消息" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1141084666&amp;site=qq&amp;menu=yes" target="_blank">
                        	<img src="http://wpa.qq.com/pa?p=1:123456789:47"> 莫拉克
                        </a>
                    </p>
                    <p>
                        <a title="点击这里给我发消息" href="http://wpa.qq.com/msgrd?v=3&amp;uin=462681358&amp;site=qq&amp;menu=yes" target="_blank">
                        	<img src="http://wpa.qq.com/pa?p=1:123456789:47"> 野鬼
                        </a>
                    </p>
                    <p>
                        <a title="点击这里给我发消息" href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456789&amp;site=qq&amp;menu=yes" target="_blank">
                        	<img src="http://wpa.qq.com/pa?p=1:123456789:47"> 小雨
                        </a>
                    </p>                    
                </div>               
                <hr>
                <div class="phoneserver">
                    <p>技术支持QQ群</p>
                    <p>(244127054)</p>
                </div>
                <hr>
                <div class="msgserver">
                    <p><a href="#">给我们留言</a></p>
                </div>
            </div>
            <div class="side_bottom"></div>
        </div>
    </div>
    <div class="show_btn"><span>在线客服</span></div>
</div>
<!-- E 客服 -->

  </body>
</html>
