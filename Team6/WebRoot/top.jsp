<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

			<div class="wrapper">
				<a class="logo" href="h/"> <img width="229" height="43" alt="" src="style/images/logo.png">
				</a>
				<ul id="navheader" class="reset">
					<li><a href="/Team6/index.jsp">首页</a></li>
					<li><a target="" href="/Team6/Controller?flag=showdiscuss">讨论区</a></li>
					<li><a rel="nofollow" href="resume.jsp">我的简历</a></li>
				</ul>
				<dl class="collapsible_menu">
					<dt>
						<span>${sessionScope.user.user_name}&nbsp;</span> <span class="red dn" id="noticeDot-0"></span> <i></i>
					</dt>
					<dd>
						<a rel="nofollow" href="resume.jsp">我的简历</a>
					</dd>
					
					<dd class="btm">
						<a href="#">我的订阅</a>
					</dd>

					<dd class="logout">
						<a rel="nofollow" href="login.jsp">退出</a>
					</dd>
				</dl>
				<div class="dn" id="noticeTip">
					<span class="bot"></span> <span class="top"></span> <a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a> <a class="closeNT" href="javascript:;"></a>
				</div>
			</div>