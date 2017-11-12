<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    	<div class="wrapper">
    		<a class="logo" href="#">
    			<img width="175" height="43" alt="IT Offer-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.jsp">首页</a></li>
    			<li class="current"><a href="companyhome.jsp">公司</a></li>
    			<li><a target="_blank" href="/Team6/Controller?flag=showdiscuss">讨论区</a></li>
    		    <li><a rel="nofollow" href="seeresume.jsp">简历管理</a></li>
	    		<li><a rel="nofollow" href="create.jsp">发布职位</a></li>
	    	</ul>
        	<dl class="collapsible_menu">
            	<dt>
           			<span>${sessionScope.company.company_loginName}&nbsp;</span> 
            		<span class="red dn" id="noticeDot-1"></span> 
            		<i></i>
            		
            	</dt>
            	    <dd><a href="completecompanyInfo.jsp" >完善个人信息</a></li></dd>
                    <dd><a href="/Team6/Controller?flag=queryPositionJob&companyid=${sessionScope.company.company_id }">我发布的职位</a></dd>
                	<dd><a href="seeresume.jsp">我收到的简历</a></dd>
                	<dd class="btm"><a href="companyhome.jsp">我的公司主页</a></dd>
                    <dd class="logout"><a rel="nofollow" href="logincompany.jsp">退出</a></dd>
                    
            </dl>
            
       </div>